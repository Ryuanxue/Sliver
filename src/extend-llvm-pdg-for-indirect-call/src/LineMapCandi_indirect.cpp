#include "LineMapCandi_indirect.hh"


char pdg::indictcallPass::ID = 0;

bool pdg::indictcallPass:: runOnModule(llvm::Module &M)
{
	

  //创建xml相关的doc对象
	XMLDocument doc; //创建xml 的doc类型
	XMLElement * root ;
	XMLDeclaration * declaration = doc.NewDeclaration();
	doc.InsertFirstChild(declaration);
	root= doc.NewElement("Root");
	doc.InsertEndChild(root);


	// PDGCallGraph &call_g = PDGCallGraph::getInstance();
 //  if (!call_g.isBuild())
 //    call_g.build(M);


	for (auto &F : M) //遍历每一个函数
	{
		if (F.isDeclaration() || F.empty())
			continue;
	    // auto caller_node = getNode(F);
		for (auto inst_i = inst_begin(F); inst_i != inst_end(F); inst_i++) //遍历函数中的每一条指令
		{
			if (CallInst *ci = dyn_cast<CallInst>(&*inst_i))
			{
				auto called_func = pdg::pdgutils::getCalledFunc(*ci);
	        // direct calls
				if (called_func != nullptr) //说明是直接调用
				{
					errs()<<"direct call location\n";
	          //不处理直接调用的形式
				}else                                                                                                                                    
				{
	          // indirect calls
	          //获得间接调用位置与候选函数匹配对
					errs()<<"indirct call location\n";
					int linenum;
					string filename;
					string dirpath;

					//获得间接调用位置的行号，文件名，文件路径
					if (DILocation *Loc = ci->getDebugLoc())
					{

						linenum = Loc->getLine();
						filename = Loc->getFilename().str();
						dirpath = Loc->getDirectory().str();
					}

					//
					auto ind_call_candidates = My_getIndirectCallCandidates(*ci, M);
					

					string locinfo=dirpath+"/"+filename+":"+to_string(linenum);
					if (ind_call_candidates.size()>0)
					{
						XMLElement * element = root->InsertNewChildElement("ind_loc");
						element->SetAttribute("info", locinfo.c_str());
						// element->SetAttribute("funsig",ind_call_candidates[0].c_str());
						int i=0;
						for (auto ind_call_can : ind_call_candidates)
						{ //if(i==0)
						// 	{
						// 		i++;
						// 		continue;
						// 	}
							string funname=ind_call_can.first;
							XMLElement *ind_element=element->InsertNewChildElement("ind_callee");
							ind_element->SetAttribute("funname", funname.c_str());
							ind_element->SetAttribute("funsig",ind_call_can.second.c_str());
						}

					}

				}
			}
		}
	}
	const char* xmlPath="ind_call.xml";
	ifstream fin(xmlPath);
	if(fin)
	{
		remove(xmlPath);

	}
	doc.SaveFile(xmlPath);
	return false;
}


std::map<string,string> pdg::indictcallPass:: My_getIndirectCallCandidates(CallInst &ci, Module &M)
{
	Type *call_func_ty = ci.getFunctionType();
	assert(call_func_ty != nullptr && "cannot find indirect call for null function type!\n");
	map<string,string> ind_call_cand;
	set<string> dealed_funcall;
	bool hassig=false;
	for (auto &F : M)
	{
		string funname=F.getName().str();
		auto funit=find(dealed_funcall,funname);
		if(funit!=dealed_funcall.end())
			continue;
		else
			dealed_funcall.insert(funname);
		if (isFuncSignatureMatch(ci, F))
		{
			// ind_call_cand.push_back(F.getName().str());
			errs()<<funname<<"\n";
			string argstr=get_functionsignatrure_str(F);
			argstr=argstr+")";
			errs()<<argstr<<"\n";
			ind_call_cand.insert(make_pair(funname,argstr));
			// if(!hassig)
			// {
			// 		if(argstr!="")
			// 		{
						
			// 			// errs()<<argstr<<"\n";
			// 			ind_call_cand.insert(ind_call_cand.begin(),argstr);
			// 			hassig=true;
			// 		}
			// }
		}


	}
	return ind_call_cand;
}

string pdg::indictcallPass::get_functionsignatrure_str(Function &F)
{
	DISubprogram *disubprogram=F.getSubprogram ();
	string ret="";
	if(disubprogram)
	{
		DISubroutineType *disubrouti= disubprogram->getType();
		DITypeRefArray typearr=disubrouti->getTypeArray();
		int arrsize=typearr.size();

		int i=0;
		for(auto ty:typearr)
		{
			//遍历每一个类型
			if(ty)
			{
				errs()<<*ty<<"\n";
				string argstr="";
				recur_entry(ty,argstr);
				if(i==0)
					ret=argstr+" (*)( ";
				else if(i==1)
					ret=ret+argstr;
				else
					ret=ret+","+argstr;

			}
			else
			{
				if(arrsize==1)
				{
					ret="void (*)(void";
					return ret;
				}
				if(i==0)
					ret="void (*)( ";
				else if(i==1)
					ret=ret+"void";
				else
					ret=ret+",void";
			}
			i++;
		}
	}
	return ret;

}



string pdg::indictcallPass::get_function_ptrarg_str(Metadata *mt)
{
	string ret="";
	DISubroutineType *disubrouti=dyn_cast<DISubroutineType>(mt);
		DITypeRefArray typearr=disubrouti->getTypeArray();
		int arrsize=typearr.size();

		int i=0;
		for(auto ty:typearr)
		{
			//遍历每一个类型
			if(ty)
			{
				errs()<<*ty<<"\n";
				string argstr="";
				recur_entry(ty,argstr);
				if(i==0)
					ret=argstr+" (*)( ";
				else if(i==1)
					ret=ret+argstr;
				else
					ret=ret+","+argstr;

			}
			else
			{
				if(arrsize==1)
				{
					ret="void (*)(void)";
					return ret;
				}
				if(i==0)
					ret="void (*)( ";
				else if(i==1)
					ret=ret+"void";
				else
					ret=ret+",void";
			}
			i++;
		}
		return ret+")";
}

template <class T>
bool pdg::indictcallPass::is_disubroutinetype(T *t)
{
	if (DISubroutineType *disub=dyn_cast<DISubroutineType>(t))
		return true;
	else
		return false;

}


template <class T>
		void pdg::indictcallPass::recur_entry(T *dit,string &ret )
		{
				if (DIBasicType *bty=dyn_cast<DIBasicType>(dit))
    		{
    			string btyname=bty->getName().str();
    			ret=btyname+ret;
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
    				if (opp==NULL)
    				{
    					ret="void*"+ret;
    					return;

    				}else if(is_disubroutinetype(&*opp))
    				{
    					ret=get_function_ptrarg_str(&*opp);
    					return;

    				}


    				else 
    				{ ret="*"+ret;
    					recur_entry(&*opp,ret);
    				}
    			}else if(flag==22)
    			{
    				//结构体重命名
    				string tyname=didt->getName().str();
    				ret=tyname+ret;
    				return;
    				// recur_entry(&*opp,ret);

    			}else if(flag==38)
    			{
    				//常量const
    				
    				if(opp==NULL)
    				{
    					ret="const void"+ret;
    					return;
    				}
    				else
    				{
    					ret=" const "+ret;
    					recur_entry(&*opp,ret);
    				}
    					
    					

    			}else
    			errs()<<"without dealed ditype...\n";

    		}else if(DICompositeType *dict=dyn_cast<DICompositeType>(dit))
    		{
					string name=dict->getName().str();
					ret="struct "+name+" "+ret;
					    			
    			errs()<<"without dealed DICompositeType\n";
    			return;

    		}else if(DISubroutineType *disb=dyn_cast<DISubroutineType>(dit))
    		{
    			errs()<<"without dealed DISubroutineType\n";
    			return;
    		}else
    		{
    			errs()<<"unknow type........\n";
    			return;
    		}

		}

bool pdg::indictcallPass::isFuncSignatureMatch(CallInst &ci, llvm::Function &f)
{
  if (f.isVarArg())
    return false;
  auto actual_arg_list_size = ci.getNumArgOperands();
  auto formal_arg_list_size = f.arg_size();
  if (actual_arg_list_size != formal_arg_list_size)
    return false;
  // compare return type
  auto actual_ret_type = ci.getType();
  auto formal_ret_type = f.getReturnType();
  if (!isTypeEqual(*actual_ret_type, *formal_ret_type))
    return false;
  errs()<<*actual_ret_type<<"\n";
  errs()<<*formal_ret_type<<"\n";
  for (unsigned i = 0; i < actual_arg_list_size; i++)
  {
    auto actual_arg = ci.getOperand(i);
    auto formal_arg = f.getArg(i);
    if (!isTypeEqual(*actual_arg->getType(), *formal_arg->getType()))
      return false;
    errs()<<*actual_arg<<"\n";
    errs()<<*formal_arg<<"\n";
  }
  return true;
}

bool pdg::indictcallPass::isTypeEqual(Type& t1, Type &t2)
{
  if (&t1 == &t2)
  {
  	errs()<<".....1\n";
    return true;
  }
  // need to compare name for sturct, due to llvm-link duplicate struct types
  if (!t1.isPointerTy() || !t2.isPointerTy())
  {
  	errs()<<".....2\n";
    return false;
  }

  auto t1_pointed_ty = t1.getPointerElementType();
  auto t2_pointed_ty = t2.getPointerElementType();

  if (!t1_pointed_ty->isStructTy() || !t2_pointed_ty->isStructTy())
  {
  	errs()<<".....3\n";
    return false;
  }
  
  auto t1_name = pdgutils::stripVersionTag(t1_pointed_ty->getStructName().str());
  auto t2_name = pdgutils::stripVersionTag(t2_pointed_ty->getStructName().str());
  errs()<<".....4\n";
  return (t1_name == t2_name);
}

string pdg::indictcallPass::stripVersionTag(std::string str)
{
  size_t pos = 0;
  size_t nth = 2;
  while (nth > 0)
  {
    pos = str.find(".", pos + 1);
    if (pos == std::string::npos)
      return str;
    nth--;
  }

  if (pos != std::string::npos)
    return str.substr(0, pos);
  return str;
}



// void pdg::indictcallPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const
// {
// 	AU.addRequired<ProgramDependencyGraph>();
// }


static RegisterPass<pdg::indictcallPass> 
INC_CALL("loc-ind", "proprecess Analyse",false, false);