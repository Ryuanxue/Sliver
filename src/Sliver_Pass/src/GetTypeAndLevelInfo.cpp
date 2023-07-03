#include "GetTypeAndLevelInfo.hh"

/**
 * input：.ll file
 * 分析ll文件，获取要分析函数中参数变量涉及到的所有类型信息
 * output：vartype_output.xml
 * */

static cl::opt<std::string> getfunname("funname", cl::desc("Specify function name for this pass"), cl::value_desc("funname"));

/**
 * 编译.c文件到.ll文件
 * 输入.ll文件
 * 待分析的函数名funname
 * 
 * 生成vartype_output.xml
 * 
 * 执行opt-10 -load libvartypepass.so -vartype -funname realfunname filename.ll
 * opt-10 -load libvartypepass.so -vartype -funname d1_both1487s3_pkt881_1 d1_both.ll
 */


char sliver::GetVarLevel::ID = 0;

template <class T>
string sliver::GetVarLevel::get_arr_type(T *dit)
{
	return dit->getName().str();

}

string sliver::GetVarLevel::strip_varname(string str)
{
    size_t pos=0;
    pos = str.find(".");
    if (pos == string::npos)
        return str;
    else
        return str.substr(0,pos);
}



int sliver::GetVarLevel::get_arr_count(DICompositeType *dit)
{
	DINodeArray narr=dit->	getElements ();
	DISubrange *disr=dyn_cast<DISubrange>(narr[0]);
	auto tempint= disr->getCount().getAddrOfPtr1 ();
	return (*tempint)->getZExtValue ();

}


template <class T>
void sliver::GetVarLevel::recur_entry(T *dit,XMLElement *element,XMLElement *root,vector<string> &dealed_struct)
{
	if (DIBasicType *bty=dyn_cast<DIBasicType>(dit))
	{
		string btyname=bty->getName().str();
		if (element->FindAttribute("type")){} else
		element->SetAttribute("type",btyname.c_str());
		if(element->FindAttribute("const")){}else 
		element->SetAttribute("const","");
		if (element->FindAttribute("ptr")) {}else
		element->SetAttribute("ptr","");
		if(element->FindAttribute("level")){}else
		element->SetAttribute("level","L");
		return;


	}else if(DIDerivedType *didt=dyn_cast<DIDerivedType>(dit))
	{

		/**
		 * tag的值对应的意义
		 * tag:22  DW_TAG_typedef
		 * tag:15  DW_TAG_pointer_type,
		 * tag:38	DW_TAG_const_type,
		 * */
		unsigned int flag=didt->getTag();		        
		const MDOperand &opp=didt->getOperand(3) ;
		
		if (flag==15)
		{
			//指针
			if (element->FindAttribute("ptr"))
			{
				string ptr=element->Attribute("ptr");
				string newptr=ptr+"*";
				element->SetAttribute("ptr",newptr.c_str());
			}else
			{
				element->SetAttribute("ptr","*");
			}

			if (element->FindAttribute("type"))
				element->SetAttribute("ptr","");
			if (opp==NULL)
			{
				element->SetAttribute("type","void");
				if(element->FindAttribute("level")){}else
				element->SetAttribute("level","L"); 
				return;

			}else
			{
				recur_entry(&*opp,element,root,dealed_struct);
			}

		}else if(flag==22)
		{
			//结构体重命名
			string tyname=didt->getName().str();
			element->SetAttribute("type",tyname.c_str());
			if (tyname=="FILE")
				return;
			recur_entry(&*opp,element,root,dealed_struct);

		}else if(flag==38)
		{
			//常量const
			element->SetAttribute("const","const");
			recur_entry(&*opp,element,root,dealed_struct);

		}
	}else if(DICompositeType *dict=dyn_cast<DICompositeType>(dit))
	{
		int tag=dict->getTag();
		int size=dict->getSizeInBits()/8;
		errs()<<tag<<"   array tag\n";
		if (tag==llvm::dwarf::DW_TAG_array_type){
			string arrtype=get_arr_type(dict->getBaseType ());
			int arrcount=get_arr_count(dict);
			element->SetAttribute("type",arrtype.c_str());
			element->SetAttribute("arr",arrcount);
			element->SetAttribute("level","L");
			return;

		}else if(tag==llvm::dwarf::DW_TAG_enumeration_type)
		{
			element->SetAttribute("enum","");
			element->SetAttribute("level","L");
			return;

		}

		string strname=dict->getName().str();
		if (strname=="")
		{
			element->SetAttribute("ref",(str+to_string(self_num)).c_str());
		}else
			element->SetAttribute("ref",strname.c_str());
		if(element->FindAttribute("type")){}else
			element->SetAttribute("type",("struct "+strname).c_str());

		auto stu_it=find(dealed_struct.begin(),dealed_struct.end(),strname);
		if(stu_it!=dealed_struct.end())
		{
			
			return;
		}else if(strname==""){}else
		dealed_struct.push_back(strname);
		XMLElement *newelement=root->InsertNewChildElement("typedecl");
		if (strname=="")
		{
			newelement->SetAttribute("name",(str+to_string(self_num)).c_str());
			self_num++;

		}else
			newelement->SetAttribute("name",strname.c_str());
		newelement->SetAttribute("size",size);

		DINodeArray narr=dict->	getElements ();
		for (int i=0;i<narr.size();i++)
		{
			
			DIDerivedType *memdidt=dyn_cast<DIDerivedType>(narr[i]);
			XMLElement *filedelement=newelement->InsertNewChildElement("filed");
			errs()<<*memdidt<<"\n";
			string membername=memdidt->getName().str();
			int membersize=memdidt->getSizeInBits()/8;
			filedelement->SetAttribute("name",membername.c_str());
			filedelement->SetAttribute("size",membersize);
			if(strname=="ssl_st"&&membername=="rbio"){filedelement->SetAttribute("level","H");}
			if(strname=="bio_st"&&membername=="ptr"){filedelement->SetAttribute("level","H");}
			const MDOperand &memopp= memdidt->getOperand(3);
			recur_entry(&*memopp,filedelement,root,dealed_struct);
			if (tag==llvm::dwarf::DW_TAG_union_type) break;

		}

	}else if(DISubroutineType *disb=dyn_cast<DISubroutineType>(dit))
	{
		element->SetAttribute("funptr","true");
		return;
	}else
	{
		errs()<<"unknow type........\n";
		return;
	}

}


bool sliver::GetVarLevel::runOnFunction(Function &F)
{
	//解析命令行的输入，获得输入的函数名
	string input_funname;
    for(auto &e : getfunname) 
    {
        string s(1,e);
        input_funname.append(s);         
    }
    errs()<<input_funname<<"\n";

	//获得当前函数的函数名
	string curfunname=F.getName().str();
	if (curfunname==input_funname)
	{
		//获得函数的所有的参数名字保存在一个数组中
		vector<string> argsname;
		//迭代参数，获得参数名存储

		//遍历指令

		//#######################
		for (int i=0;i<F.arg_size();i++)
		{
			Argument * temparg=F.getArg(i);
			string argname=temparg->getName().str();
			argname=strip_varname(argname);
			errs()<<argname<<"\n";
			argsname.push_back(argname);
		}

		// for(int i=0;i<argsname.size();i++)
		// {
		// 	errs()<<argsname.at(i)<<"\n";
		// }

		//迭代指令，找到dbgdclare指令
		//获得每一个参数便令的的dbgdclare，然后从中获取到每个参数的类型信息


		//创建一个xml doc
		XMLDocument doc;
		XMLElement * root ;
		
		XMLDeclaration * declaration = doc.NewDeclaration();
		doc.InsertFirstChild(declaration);
		root= doc.NewElement("Root");
		doc.InsertEndChild(root);

		vector <string> dealed_struct;
		for (Function::iterator B_iter = F.begin(); B_iter != F.end(); ++B_iter)
		{
			BasicBlock* curBB = &*B_iter;
			for (BasicBlock::iterator I_iter = curBB->begin(); I_iter != curBB->end(); ++I_iter) 
			{
				
				Instruction *inst = &*I_iter;
				if(const DbgDeclareInst* dbgdeclare = dyn_cast<DbgDeclareInst>(inst))
                {
                	//获得此dbgdeclare的Value
                	//判断value是否与allcoval相等
                	Value *val=dbgdeclare->getAddress();
                	string dbgname=val->getName().str();
                	int pos=dbgname.find(".addr");
                	if (pos>0)
                	{
						dbgname.replace(pos,5,"");
                	}
                	auto ait=find(argsname.begin(),argsname.end(),dbgname);
                	// errs()<<*ait<<"\n";

                	
                	if(ait!=argsname.end())
                	{
                		if(*ait=="opsink") 
	            		{
	            			errs()<<"finally one element\n";
	            			continue;
	            		}
                		//获得变量的名字，创建相应的arg xml元素
                		XMLElement * element = root->InsertNewChildElement("arg");
						element->SetAttribute("name", dbgname.c_str());
                		DILocalVariable *dlraw=dbgdeclare->getVariable ();//变量声明
                		DIType *dit=dlraw->getType(); //DIDerivedType
                		int size=dit->getSizeInBits()/8;
                		element->SetAttribute("size",size);
                		//DIType的类型不同，可根据类型不同做不同的处理

                		//1.基本类型basictype
                		//2.派生类型DerivedType

                		
                	    recur_entry(dit,element,root,dealed_struct);

						
                	}
               
            	}//if dbgdeclare
			}

		}
		string xmlPath=input_funname+"_level.xml";
		ifstream fin(xmlPath.c_str());
		if(fin)
		{
			remove(xmlPath.c_str());

		}
		doc.SaveFile(xmlPath.c_str());				
	}//if curfunname==input_funname
	return false;
}//runonfuncion



static RegisterPass<sliver::GetVarLevel> SET_LEVEL("type-level", "CFG Pass Analyse",
	false, false);
