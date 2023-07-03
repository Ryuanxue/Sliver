#include "raw_instrument_basic_block_inst.hh"
static cl::opt<std::string> getxmlfilename("in-xml-bb-inst", cl::desc("Specify xml filename for mypass"), cl::value_desc("xml-filename"));

void sliver::Raw_BASICBLOC_INST::parse_location_candifun_xml(string input_xml, map<string,int> &loc_candimap)
{
	const char* xmlPath=input_xml.c_str();
	ifstream fin(xmlPath);
	if(fin)
	{
		XMLDocument doc;
		XMLError error = doc.LoadFile(xmlPath);
		if (error != XMLError::XML_SUCCESS)
		{
			errs()<<"load input_xml error\n";
			return;
		}

		XMLElement* root = doc.RootElement();
		for (XMLElement* current = root->FirstChildElement(); current != nullptr; current = current->NextSiblingElement())
		{
			XMLElement* temp = current;
			// string locinfo=temp->Attribute("info");
			// string funsig=temp->Attribute("funsig");
			// vector<map<string,string>> functionset;
			// functionset.push_back(funsig);
			for (XMLElement* twolevelment = temp->FirstChildElement(); twolevelment != nullptr; twolevelment = twolevelment->NextSiblingElement())
			{
				string bbname=twolevelment->Attribute("bbname");
				int instsum=stoi(twolevelment->Attribute("instsum"));
				map<string,string> funsigmap;
				loc_candimap.insert(make_pair(bbname,instsum));
				// functionset.push_back(funsigmap);
      }//for
      // loc_candimap.insert(make_pair(locinfo,functionset));
    }//for
  }
  else
  {
  	errs()<<xmlPath<<" is not existens\n";
  	return;
  }
}


Instruction* sliver::Raw_BASICBLOC_INST::insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in) 
{

    // FILE * pFile;
    // FILE * fopen ( const char * , const char *  );
    //创建文件指针，打开文件，返回文件指针，判断文件打开是否成功

    FunctionCallee funcall1= M.getOrInsertFunction("fopen",
                                                IO_FILE_PTR_ty,
                                                Type::getInt8PtrTy(F.getContext()),
                                                Type::getInt8PtrTy(F.getContext())
                                                );
    Value* const_fopen =funcall1.getCallee();
    Function *func_fopen = dyn_cast<Function>(const_fopen);

    // //Create a global string variable with the file's name
    Constant* strfileConstant = ConstantDataArray::getString(
                                                    M.getContext(),
                                                    "raw_input.txt",
                                                    true);

    GlobalVariable* fileStr = new GlobalVariable(M,
                                        strfileConstant->getType(),
                                        true,
                                        llvm::GlobalValue::InternalLinkage , 
                                        strfileConstant,
                                        "testTxt");


    //Get the int8ptr to our message
    Constant* constZeroF = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0);
    Constant* constArrayF = ConstantExpr::getInBoundsGetElementPtr(strfileConstant->getType(),fileStr, constZeroF);
    Value* filePtr = ConstantExpr::getBitCast(constArrayF, PointerType::getUnqual(Type::getInt8Ty(M.getContext())));

    // //Create a global strin g variable with the format's name
    Constant* strFormatConstant = ConstantDataArray::getString( M.getContext(),
                                                                "a+",
                                                                true);

    GlobalVariable* formatStr = new GlobalVariable(M,
                                    strFormatConstant->getType(),
                                    true,
                                    llvm::GlobalValue::InternalLinkage,
                                    strFormatConstant,
                                    "a+");

    // // Get the int8ptr to our message
    Constant* constZeroFmt  = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0);
    Constant* constArrayFmt = ConstantExpr::getInBoundsGetElementPtr(strFormatConstant->getType(),formatStr, constZeroFmt);
    Value* fmtPtr = ConstantExpr::getBitCast(constArrayFmt, PointerType::getUnqual(Type::getInt8Ty(M.getContext())));

    vector<Value*> args;
    args.push_back(filePtr);
    args.push_back(fmtPtr);
    IRBuilder<> builder(M.getContext());
    builder.SetInsertPoint(in);
    Instruction *allcapfile =builder.CreateAlloca(IO_FILE_PTR_ty,nullptr,"pFile");
    Instruction *fopen= builder.CreateCall(func_fopen, args, "fopen");
    /**
    判断文件打开是否成功，文件打开失败怎么处理
    **/
    builder.CreateStore(fopen,allcapfile);
    return allcapfile;
}

       


template <class T>
int sliver::Raw_BASICBLOC_INST::get_Aggre_size(T *dit)
{
    if(DIDerivedType *didt=dyn_cast<DIDerivedType>(dit))
    {
    /**
         * tag的值对应的意义
         * tag:22  DW_TAG_typedef
         * tag:15  DW_TAG_pointer_type,
         * tag:38   DW_TAG_const_type,
         * */
        const MDOperand &opp=didt->getOperand(3) ;      
        return get_Aggre_size(&*opp);
            
    }else if(DICompositeType *dict=dyn_cast<DICompositeType>(dit))
    {
        int size=dict->getSizeInBits()/8;
        return size;
    }
}

       

string sliver::Raw_BASICBLOC_INST::strip_varname(string str)
{
    size_t pos=0;
    pos = str.find(".");
    if (pos == string::npos)
        return str;
    else
        return str.substr(0,pos);
}


bool sliver::Raw_BASICBLOC_INST::runOnModule(Module &M) 
{
     string xmlfilename;
     string stru_mem_xml="BasicBlock_sum_inst.xml";
     
    for(auto &e : getxmlfilename) 
    {
        string s(1,e);
        xmlfilename.append(s);         
    }
    errs()<<M.getName().str()<<"\n";
    string modulename=M.getName().str();
    std::vector<string> funnameset;
    //判断模块中有无FILE结构体
    // LLVMContextImpl* C = M.getContext().pImpl;
     StructType *filetype= llvm::StructType::getTypeByName(M.getContext(), "struct._IO_FILE"); 
    if (filetype!=nullptr)
    {
        IO_FILE_ty=filetype;
    }else
    {
        IO_FILE_ty = StructType::create(M.getContext(), "struct._IO_FILE");
    }
	IO_FILE_PTR_ty = PointerType::getUnqual(IO_FILE_ty);
    //解析xml文件
    //获得行号，函数名，参数列表
    
    const char* xmlPath=xmlfilename.c_str();
    XMLDocument doc;
    XMLElement * root ;
    ifstream fin(xmlPath);
    if(fin)
    {
        XMLError error = doc.LoadFile(xmlPath);
        if (error != XMLError::XML_SUCCESS)
            return false;

        root = doc.RootElement();
        XMLElement* current;
        current = root->FirstChildElement("funsig");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	string funname=curr->Attribute("funname");
        	string absfilename=curr->Attribute("file");
        	string stripmodulename=modulename.substr(0,-2);
        	if (absfilename.find(stripmodulename)>0)
        	{

        		funnameset.push_back(funname);
        errs()<<funname<<" \n";
        	}

            
        }
    }
    else
    {
        errs()<<xmlPath<<" is not existens\n";
        return false;
    }


    errs()<<"after xml\n";
    std::map<string, int> block_instsum_map;

    parse_location_candifun_xml(stru_mem_xml,block_instsum_map);


    for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) //函数
            {
                string fun=F->getName().str();
                if (find(funnameset.begin(),funnameset.end(),fun)==funnameset.end())
                    continue;

                
                for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
                {
                	int inscout=0;
                	string bbname=bb_iter->getName().str();
                	string bbmapkey="blockname:"+fun+":"+ bbname;
                    for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                    {
                        Instruction *inst=&*ins_iter;
                        if (isa<PHINode>(inst)) //跳过PHINode
                            continue;

                        if (inscout==0)
                        {
                        	Instruction *pfilealloca= insertOnMainEntryBlock(*bb_iter, M,&*ins_iter);//fopen
                        	 IRBuilder<> builder(M.getContext());
                            builder.SetInsertPoint(&*ins_iter);
                            
                            Value *sourceFormat=builder.CreateGlobalStringPtr(bbmapkey+"\n");//创建全局字符串常量
                            
                            Function* func_fwite;
                             FunctionCallee fun_fprintf=M.getOrInsertFunction("fputs",
                                Type::getInt32Ty(M.getContext()),
                                sourceFormat->getType(),
                                IO_FILE_PTR_ty
                                /*Type::getInt32Ty(M.getContext())*/);
                            Value *const_fprintf=fun_fprintf.getCallee();
                            Function *func_fprintf=cast<Function>(const_fprintf);
                              vector<Value*> firstcall;//第一次调用
                            Value* pfile = builder.CreateLoad(pfilealloca);
                            firstcall.push_back(sourceFormat);
                            firstcall.push_back(pfile);
                            builder.CreateCall(func_fprintf,firstcall,"fputs");

                            FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                                                Type::getInt32Ty(M.getContext()),
                                                                        IO_FILE_PTR_ty);
                            Value* const_fclose =funcall2.getCallee();
                            Function *func_fclose = cast<Function>(const_fclose);
                            errs()<<*func_fclose<<"\n";
                            Value* fw_load = builder.CreateLoad(pfilealloca);
                            builder.CreateCall(func_fclose, fw_load);
                        

                        }
                        inscout++;
                        

 

                    }
                    block_instsum_map.insert(make_pair(bbmapkey,inscout));
                     errs()<<inscout<<"\n";
                }       
                
            }


    //创建xml相关的doc对象
	XMLDocument doc1; //创建xml 的doc类型
	XMLElement * root1 ;
	XMLDeclaration * declaration = doc1.NewDeclaration();
	doc1.InsertFirstChild(declaration);
	root1= doc1.NewElement("Root");
	doc1.InsertEndChild(root1);
	XMLElement * element = root1->InsertNewChildElement("bb_sumlist");

	for (auto loc:block_instsum_map)
	{
			XMLElement *ind_element=element->InsertNewChildElement("bbinst");
			ind_element->SetAttribute("bbname", loc.first.c_str());
			ind_element->SetAttribute("instsum",to_string(loc.second) .c_str());
		
	}

	ifstream fin1(stru_mem_xml.c_str());
	if(fin1)
	{
		remove(stru_mem_xml.c_str());

	}
	doc1.SaveFile(stru_mem_xml.c_str());



  

	
	return false;
}
			

char sliver::Raw_BASICBLOC_INST::ID = 0;
static RegisterPass<sliver::Raw_BASICBLOC_INST> X("in-block", "proprecess Analyse",
	false, false);
