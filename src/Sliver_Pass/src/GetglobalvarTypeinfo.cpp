#include "GetglobalvarTypeinfo.hh"


using namespace llvm;

template <class T>
string sliver::TypeExtractor::get_arr_type(T *dit)
{
	return dit->getName().str();

}

int sliver::TypeExtractor::get_arr_count(DICompositeType *dit)
{
	DINodeArray narr=dit->	getElements ();
	DISubrange *disr=dyn_cast<DISubrange>(narr[0]);
	auto tempint= disr->getCount().getAddrOfPtr1 ();
	return (*tempint)->getZExtValue ();

}



template <class T>
void sliver::TypeExtractor::recur_entry(T *dit,XMLElement *element,XMLElement *root,vector<string> &dealed_struct)
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



bool sliver::TypeExtractor:: runOnModule(Module &M)  
{
  // 实现分析和修改的代码

	// 遍历全局变量

	XMLDocument doc;
		XMLElement * root ;
		
		XMLDeclaration * declaration = doc.NewDeclaration();
		doc.InsertFirstChild(declaration);
		root= doc.NewElement("Root");
		doc.InsertEndChild(root);

		vector <string> dealed_struct;

   for (auto &GV : M.getGlobalList()) 
   {
	   	string Name = string(GV.getName());
	    errs() << "Variable: " << Name << "\n";
	    MDNode *DbgNode = GV.getMetadata("dbg");
	    if (!DbgNode) continue;
	    DIGlobalVariableExpression *DIGVE = dyn_cast<DIGlobalVariableExpression>(GV.getMetadata("dbg"));
        if (DIGVE) 
        {
          // 获取变量名
          errs() << "Variable: " << Name << "\n";

          // 获取源代码层面的类型信息
          
          
          	DIGlobalVariable *var = DIGVE->getVariable();

          	//获得变量的名字，创建相应的arg xml元素
    		XMLElement * element = root->InsertNewChildElement("global");
			element->SetAttribute("name", Name.c_str());
    		DIType *dit=var->getType(); //DIDerivedType
    		
    		int size=dit->getSizeInBits()/8;
    		element->SetAttribute("size",size);
    		//DIType的类型不同，可根据类型不同做不同的处理

    		//1.基本类型basictype
    		//2.派生类型DerivedType

    		
    	    recur_entry(dit,element,root,dealed_struct);
          }
          

     	 
	
	}

	string xmlPath="global_info.xml";
		ifstream fin(xmlPath.c_str());
		if(fin)
		{
			remove(xmlPath.c_str());

		}
		doc.SaveFile(xmlPath.c_str());	

	return false;


}




char sliver::TypeExtractor::ID = 0;
static RegisterPass<sliver::TypeExtractor> X("global-type", "Type Extractor Pass");
