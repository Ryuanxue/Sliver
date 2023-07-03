#include "raw_rand_instruction.hh"
static cl::opt<std::string> getxmlfilename("in-xml-rand", cl::desc("Specify xml filename for mypass"), cl::value_desc("xml-filename"));

Instruction* sliver::RawInputInstructionRand::insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in) 
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
                                                    "raw",
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
                                                                "ab+",
                                                                true);

    GlobalVariable* formatStr = new GlobalVariable(M,
                                    strFormatConstant->getType(),
                                    true,
                                    llvm::GlobalValue::InternalLinkage,
                                    strFormatConstant,
                                    "ab+");

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
int sliver::RawInputInstructionRand::get_Aggre_size(T *dit)
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

       

string sliver::RawInputInstructionRand::strip_varname(string str)
{
    size_t pos=0;
    pos = str.find(".");
    if (pos == string::npos)
        return str;
    else
        return str.substr(0,pos);
}


bool sliver::RawInputInstructionRand::runOnModule(Module &M) 
{
     string xmlfilename;
    for(auto &e : getxmlfilename) 
    {
        string s(1,e);
        xmlfilename.append(s);         
    }
    errs()<<M.getName().str()<<"\n";
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
        current = root->FirstChildElement("randlines");
        //循环插装每一个随机行号，每一个行号插装else分支和then分支
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
            int linenum; //行号
            string strline=curr->Attribute("value");
            linenum=atoi(strline.c_str());
            
              //找到插装位置
        for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) //函数
        {
           

            //获得函数中所有的alloca语句
            vector<int> lineset;
            for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
            {
                for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                {
                    Instruction *inst=&*ins_iter;
                    if (DILocation *Loc = inst->getDebugLoc())
                    {                                                               
                        int Line = Loc->getLine();
                        auto it=find(lineset,Line);
                        if (it==lineset.end())
                            lineset.push_back(Line);
                    }  

                }
            }

            std::sort(lineset.begin(), lineset.begin()+lineset.size());
            auto it=find(lineset.begin(),lineset.end(),linenum);
            if (it==lineset.end()) continue;
            int newlinenum=linenum;
            // int newlinenum=linenum;
            errs()<<"newlinenum:"<<newlinenum<<"\n";
            for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
            {
                for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                {

                    unsigned Line;
                    if (DILocation *Loc = ins_iter->getDebugLoc())
                    {
                                                                            
                        Line = Loc->getLine();
                     
                    }
                    if (Line==newlinenum )
                    {
                        //返回FILE *fp
                        Instruction *inst=&*ins_iter;
                        BranchInst *brinst=dyn_cast<BranchInst>(inst);
	                    if(!brinst)continue;
	                    
                        //获得分支指令的两个后继基本块
	                    BasicBlock *onebblock=brinst->getSuccessor(0);
	                    BasicBlock *twobblock=brinst->getSuccessor(1);

	                    Instruction *theninst=onebblock->getFirstNonPHI();
                        Instruction *pfilealloca= insertOnMainEntryBlock(*onebblock, M,theninst);//fopen
                        
                        IRBuilder<> builder(M.getContext());
                        builder.SetInsertPoint(theninst);
                        

                        //%len_sink = alloca i32
                        Type* int32type = Type::getInt32Ty(M.getContext());
                        Value *alloca_len_randvalue = builder.CreateAlloca(int32type,nullptr,"len_randvalue");
                        Value *len_randvalue = ConstantInt::get(M.getContext(), APInt(32, 9));
                        //store i32 6, i32* %len_source, align 4
                        builder.CreateStore(len_randvalue,alloca_len_randvalue);
                        //%13 = bitcast i32* %len_source to i8*,
                        Value *bitcastinst = builder.CreateBitCast(alloca_len_randvalue, Type::getInt8PtrTy(M.getContext()), "");
                        //%14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp,
                        Value *fileload=builder.CreateLoad(pfilealloca);


                        //创建fwrite函数
                        Type *Int64Ty = Type::getInt64Ty(M.getContext());
                      Type *CharPtrTy = Type::getInt8PtrTy(M.getContext());

                      std::vector<Type *> ArgsTy({CharPtrTy, Int64Ty, Int64Ty, IO_FILE_PTR_ty});
                      FunctionType *FT = FunctionType::get(Int64Ty, ArgsTy, false);
                      // Get or insert the fwrite function declaration
                      FunctionCallee FwriteFn = M.getOrInsertFunction("fwrite", FT);

                      Value *const_fwrite=FwriteFn.getCallee();
                        Function *func_fwrite=cast<Function>(const_fwrite);

                        Value *const1 = ConstantInt::get(M.getContext(), APInt(64, 1));
                        Value *const4 = ConstantInt::get(M.getContext(), APInt(64, 4));

                          vector<Value*> firstcall;//第一次调用
                        firstcall.push_back(bitcastinst);
                        firstcall.push_back(const4);
                        firstcall.push_back(const1);
                       firstcall.push_back(fileload);
                        builder.CreateCall(func_fwrite,firstcall,"fwrite");

                        //%15 = load i32, i32* %len_source
                        Value *load_len_randvalue=builder.CreateLoad(alloca_len_randvalue);
                        //%conv19 = sext i32 %15 to i64,
                        Value *sextvalue=builder.CreateSExt(load_len_randvalue,Type::getInt64Ty(M.getContext()));
                        fileload=builder.CreateLoad(pfilealloca);
                        //fwrite第二次调用
                        Value *sinkFormat=builder.CreateGlobalStringPtr("randvalue");//创建全局字符串常量
                        vector<Value*> secondcall;
                        secondcall.push_back(sinkFormat);
                        secondcall.push_back(const1);
                        secondcall.push_back(sextvalue);
                       secondcall.push_back(fileload);
                        builder.CreateCall(func_fwrite,secondcall,"fwrite");

                        Value *char_one=builder.CreateGlobalStringPtr("1");//创建全局字符串常量
                        fileload=builder.CreateLoad(pfilealloca);
                        vector<Value*> thirddcall;
                        thirddcall.push_back(char_one);
                        thirddcall.push_back(const1);
                        thirddcall.push_back(const1);
                       thirddcall.push_back(fileload);
                        builder.CreateCall(func_fwrite,thirddcall,"fwrite");


                        // //创建fputs
                        // Value* randone=builder.CreateGlobalStringPtr("randvalue:1\n");//创建全局字符串常量
                        // FunctionCallee fun_fputs= M.getOrInsertFunction("fputs",
                        //             Type::getInt32Ty(M.getContext()),//返回值
                        //             Type::getInt8PtrTy(M.getContext()),//第一个参数
                        //             IO_FILE_PTR_ty);
                        // Value* const_fputs=fun_fputs.getCallee();
                        // Function *func_fputs = cast<Function>(const_fputs);
                        // //创建输入的参数
                        // vector<Value*> firstcall;//第一次调用
                        // Value* pfile = builder.CreateLoad(pfilealloca);
                        // firstcall.push_back(randone);
                        // firstcall.push_back(pfile);
                        // builder.CreateCall(func_fputs,firstcall,"fputs");
                        //关闭文件
                        FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                                            Type::getInt32Ty(M.getContext()),
                                                                    IO_FILE_PTR_ty);
                        Value* const_fclose =funcall2.getCallee();
                        Function *func_fclose = cast<Function>(const_fclose);
                        errs()<<*func_fclose<<"\n";
                        Value* fw_load = builder.CreateLoad(pfilealloca);
                        builder.CreateCall(func_fclose, fw_load);


                        Instruction *elseinst=twobblock->getFirstNonPHI();
                        Instruction *elsealloca= insertOnMainEntryBlock(*twobblock, M,elseinst);//fopen
                        
                        IRBuilder<> builder1(M.getContext());
                        builder1.SetInsertPoint(elseinst);



                        //%len_sink = alloca i32
                        //store i32 6, i32* %len_source, align 4
                        alloca_len_randvalue = builder1.CreateAlloca(int32type,nullptr,"len_randvalue");
                        builder1.CreateStore(len_randvalue,alloca_len_randvalue);
                        //%13 = bitcast i32* %len_source to i8*,
                        bitcastinst = builder1.CreateBitCast(alloca_len_randvalue, Type::getInt8PtrTy(M.getContext()), "");
                        //%14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp,
                        fileload=builder1.CreateLoad(elsealloca);

                          vector<Value*> firstcall1;//第一次调用
                        firstcall1.push_back(bitcastinst);
                        firstcall1.push_back(const4);
                        firstcall1.push_back(const1);
                       firstcall1.push_back(fileload);
                        builder1.CreateCall(func_fwrite,firstcall1,"fwrite");

                        //%15 = load i32, i32* %len_source
                        load_len_randvalue=builder1.CreateLoad(alloca_len_randvalue);
                        //%conv19 = sext i32 %15 to i64,
                        sextvalue=builder1.CreateSExt(load_len_randvalue,Type::getInt64Ty(M.getContext()));
                        fileload=builder1.CreateLoad(elsealloca);
                        //fwrite第二次调用
                        vector<Value*> secondcall1;
                        secondcall1.push_back(sinkFormat);
                        secondcall1.push_back(const1);
                        secondcall1.push_back(sextvalue);
                       secondcall1.push_back(fileload);
                        builder1.CreateCall(func_fwrite,secondcall1,"fwrite");

                        char_one=builder1.CreateGlobalStringPtr("0");//创建全局字符串常量
                        fileload=builder1.CreateLoad(elsealloca);
                        vector<Value*> thirddcall1;
                        thirddcall1.push_back(char_one);
                        thirddcall1.push_back(const1);
                        thirddcall1.push_back(const1);
                       thirddcall1.push_back(fileload);
                        builder1.CreateCall(func_fwrite,thirddcall1,"fwrite");

                        // //创建fputs
                        // Value* randzero=builder1.CreateGlobalStringPtr("randvalue:0\n");//创建全局字符串常量
                        // FunctionCallee fun_fputs_else= M.getOrInsertFunction("fputs",
                        //             Type::getInt32Ty(M.getContext()),//返回值
                        //             Type::getInt8PtrTy(M.getContext()),//第一个参数
                        //             IO_FILE_PTR_ty);
                        // Value* const_fputs_else=fun_fputs_else.getCallee();
                        // Function *func_fputs_else = cast<Function>(const_fputs_else);
                        // //创建输入的参数
                        // vector<Value*> firstcall_else;//第一次调用
                        // Value* pfile_else = builder1.CreateLoad(elsealloca);
                        // firstcall_else.push_back(randzero);
                        // firstcall_else.push_back(pfile_else);
                        // builder1.CreateCall(func_fputs_else,firstcall_else,"fputs");
                        //关闭文件
                        FunctionCallee funcall2_else= M.getOrInsertFunction("fclose",
                                            Type::getInt32Ty(M.getContext()),
                                                                    IO_FILE_PTR_ty);
                        Value* const_fclose_else =funcall2_else.getCallee();
                        Function *func_fclose_else = cast<Function>(const_fclose_else);
                        Value* fw_load_else = builder1.CreateLoad(elsealloca);
                        builder1.CreateCall(func_fclose_else, fw_load_else);




                        // //第二次调用
                        // vector<Value*> secondcall;//第一次调用
                        // Value* twofile = builder.CreateLoad(pfilealloca);
                        // secondcall.push_back(ptrvalue_bitcast);
                        // secondcall.push_back(twofile);
                        // builder.CreateCall(func_fputs,secondcall,"fputs");
                        // //第三次调用
                        // Value* endline=builder.CreateGlobalStringPtr("\n");//创建全局字符串常量
                        // vector<Value*> thirdcall;//第一次调用
                        // Value* threefile = builder.CreateLoad(pfilealloca);
                        // thirdcall.push_back(endline);
                        // thirdcall.push_back(threefile);
                        // builder.CreateCall(func_fputs,thirdcall,"fputs");

                            
                        
                        
                        break;
                    }

                }
            }
        }
        }
        // errs()<<strline<<"\n";
        // errs()<<linenum<<"\n";
        // errs()<<funname<<"\n";

    }
    else
    {
        errs()<<xmlPath<<" is not existens\n";
        return false;
    }



  

	
	return false;
}
			
	

char sliver::RawInputInstructionRand::ID = 0;
static RegisterPass<sliver::RawInputInstructionRand> X("in-inst-rand", "proprecess Analyse",
	false, false);
