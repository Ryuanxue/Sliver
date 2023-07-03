#include "struct_member_indirectcall.hh"

char pdg::stu_mem_indicallpass::ID = 0;

bool pdg::stu_mem_indicallpass:: runOnModule(llvm::Module &M)
{
	unordered_map<string,vector<string>> struct_member_map;
	struct_member_map=My_map_struct_and_filed(M);
	map<string,vector<map<string,string>>> location_mem_candimap;
	map<string,vector<map<string,string>>> struct_mem_candimap;
	string ind_call_xml="ind_call.xml";
	string stru_mem_xml="stru_mem_ind_call.xml";
	 parse_location_candifun_xml(ind_call_xml,location_mem_candimap);
	 parse_location_candifun_xml(stru_mem_xml,struct_mem_candimap);
 
	for (auto &F : M)
	{
		if (F.isDeclaration() || F.empty())
			continue;
	    // auto caller_node = getNode(F);
		for (auto inst_i = inst_begin(F); inst_i != inst_end(F); inst_i++)
		{
			if (CallInst *ci = dyn_cast<CallInst>(&*inst_i))
			{
				auto called_func = pdg::pdgutils::getCalledFunc(*ci);
	        // direct calls
				if (called_func != nullptr)
				{
	          //不处理直接调用的形式
				}else                                                                                                                                    
				{
	          // indirect calls
	          //获得间接调用位置与候选函数匹配对
					int linenum;
					string filename;
					string dirpath;
					if (DILocation *Loc = ci->getDebugLoc())
					{

						linenum = Loc->getLine();
						filename = Loc->getFilename().str();
						dirpath = Loc->getDirectory().str();

						string locinfo=dirpath+"/"+filename+"/"+to_string(linenum);
						vector<string> struct_filed;

						if (LoadInst *li=dyn_cast<LoadInst>(ci->getCalledOperand()))
						{
							// errs()<<*ci->getCalledOperand()<<" .....\n";
	              //gep inst
							if (GetElementPtrInst *gep =dyn_cast<GetElementPtrInst>(li->getPointerOperand()))
							{
								struct_filed= My_get_struct_name(gep,struct_member_map);    

							}else
							{
								if (BitCastInst *bci = dyn_cast<BitCastInst>(li->getPointerOperand()))
								{
									if (GetElementPtrInst *bgep =dyn_cast<GetElementPtrInst>(bci->getOperand(0)))
									{
										struct_filed=My_get_struct_name(bgep,struct_member_map);

									}else
									{
										errs()<<"non-gep_and_non-bitcast inst output....\n";
										errs()<<*bci->getOperand(0)<<"\n";
									}

								}else
								{
									errs()<<"non-gep inst output....\n";
									errs()<<*li->getPointerOperand()<<"\n";
								}
							}

						}else
						{
							errs()<<"non-loadinst output....\n";
							errs()<<*ci->getCalledOperand()<<"\n";
						}

						if(struct_filed.size()>0)
						{
							errs()<<struct_filed[0]<<"\n";
							errs()<<struct_filed[1]<<"\n";
							// errs()<<struct_filed<<"\n";
							if(struct_mem_candimap.find(struct_filed[0])==struct_mem_candimap.end())
							{
								vector<map<string,string>> candifunset;
								errs()<<locinfo<<"\n";
								if(location_mem_candimap.find(locinfo)!=location_mem_candimap.end())
								{
									errs()<<"find locinfo\n";
									//比较call site的函数签名与候选函数签名是否一致
									vector<map<string,string>> loccandifunset=location_mem_candimap[locinfo];
									for(auto f:loccandifunset)
									{
										string canfunsig=f.begin()->second;
										if(canfunsig==struct_filed[1])
											candifunset.push_back(f);
									}
								 	// candifunset=location_mem_candimap[locinfo];
									
								}
								struct_mem_candimap.insert(make_pair(struct_filed[0],candifunset));
							}
						}

					}

				}
			}
		}
	}

//创建xml相关的doc对象
	XMLDocument doc; //创建xml 的doc类型
	XMLElement * root ;
	XMLDeclaration * declaration = doc.NewDeclaration();
	doc.InsertFirstChild(declaration);
	root= doc.NewElement("Root");
	doc.InsertEndChild(root);


	for (auto loc:struct_mem_candimap)
	{
		XMLElement * element = root->InsertNewChildElement("stru_mem");
		element->SetAttribute("info", loc.first.c_str());
		// element->SetAttribute("funsig",loc.second.at(0).c_str());
		int count=0;
		for(auto f:loc.second)
		{
			// if(count==0)
			// {
			// 	count++;
			// 	continue;
			// }
			XMLElement *ind_element=element->InsertNewChildElement("ind_callee");
			ind_element->SetAttribute("funname", f.begin()->first.c_str());
			ind_element->SetAttribute("funsig",f.begin()->second.c_str());
		}
	}

	ifstream fin(stru_mem_xml.c_str());
	if(fin)
	{
		remove(stru_mem_xml.c_str());

	}
	doc.SaveFile(stru_mem_xml.c_str());
	return false;
}

void pdg::stu_mem_indicallpass::parse_location_candifun_xml(string input_xml, map<string,vector<map<string,string>>> &loc_candimap)
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
			string locinfo=temp->Attribute("info");
			// string funsig=temp->Attribute("funsig");
			vector<map<string,string>> functionset;
			// functionset.push_back(funsig);
			for (XMLElement* twolevelment = temp->FirstChildElement(); twolevelment != nullptr; twolevelment = twolevelment->NextSiblingElement())
			{
				string candifunname=twolevelment->Attribute("funname");
				string funsig=twolevelment->Attribute("funsig");
				map<string,string> funsigmap;
				funsigmap.insert(make_pair(candifunname,funsig));
				functionset.push_back(funsigmap);
      }//for
      loc_candimap.insert(make_pair(locinfo,functionset));
    }//for
  }
  else
  {
  	errs()<<xmlPath<<" is not existens\n";
  	return;
  }
}



string pdg::stu_mem_indicallpass:: My_stripVersionTag(string str)
{
	size_t pos = 0;
	size_t rpos=0;
	pos = str.find(".", pos + 1);
	if (pos ==std::string::npos)
		return str;
	rpos=str.rfind(".");
	if (rpos==pos)
	{
		return str.substr(pos+1);
	}
	else
	{
		return str.substr(pos+1,rpos-pos-1);

	}

}

vector<string> pdg::stu_mem_indicallpass::splitFiledFuncptr(string str)
{
	vector<string> retv;
	size_t pos = 0;
	pos = str.find("::");
	if (pos ==std::string::npos)
		return retv;
	string filed=str.substr(0,pos);
	string funsig=str.substr(pos+2);
	retv.push_back(filed);
	retv.push_back(funsig);
	return retv;
}



template<typename T> void pdg::stu_mem_indicallpass:: My_recur_on_ditype(T *dit,unordered_map<string,vector<string>> &stru_filed_map)
{
	if (DIBasicType *dibasic=dyn_cast<DIBasicType>(dit))
	{
		return;
	}
	if (DISubroutineType *dist=dyn_cast<DISubroutineType>(dit))
		return;
	if(DIDerivedType *didt=dyn_cast<DIDerivedType>(dit))
	{
		const MDOperand &opp=didt->getOperand(3) ;
		if(opp==NULL)
			return;
		else
			My_recur_on_ditype(&*opp,stru_filed_map);
	}

	if (DICompositeType *dict=dyn_cast<DICompositeType>(dit))
	{
		auto tag=dict->getTag();
		if (tag== dwarf::DW_TAG_array_type)
			return;
		if (tag==dwarf::DW_TAG_union_type)
			return;

		string struct_name=dict->getName().str();
		auto flags=dict->getFlags();
		if(flags>0)
			return;
		DINodeArray narr=dict->getElements ();
		if(stru_filed_map.find(struct_name)==stru_filed_map.end())
		{
			vector<string> filedset;
			for(int i=0;i<narr.size();i++)
			{
				DIDerivedType *memdidt=dyn_cast<DIDerivedType>(narr[i]);
				if (memdidt)
				{
					string funsig="";
					if(judge_is_funptr(memdidt))
					{
						DISubroutineType *dist=getDisSubroutinetype(memdidt);
						funsig=get_functionsignatrure_str(dist);
						errs()<<" functr......true\n";
					}
					string fildname=memdidt->getName().str()+"::"+funsig+")";
					filedset.push_back(fildname);
				}
				
			}
			stru_filed_map.insert(pair<string,vector<string>>(struct_name,filedset));
			for(int i=0;i<narr.size();i++)
			{

				if(DIDerivedType *memdidt=dyn_cast<DIDerivedType>(narr[i]))
				{
					const MDOperand &memopp= memdidt->getOperand(3);
					if(memopp==NULL)
						continue;
					My_recur_on_ditype(&*memopp,stru_filed_map);
				}else
				{
					errs()<<*narr[i]<<"\n";
					errs()<<"struct member variable's type is not DIDerivedType\n";
				}

			}
		} 
	}
}


string pdg::stu_mem_indicallpass::get_functionsignatrure_str(DISubroutineType *disubrouti)
{
	string ret="";
	DITypeRefArray typearr=disubrouti->getTypeArray();
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
			if(i==0)
				ret="void (*)( ";
			else if(i==1)
				ret=ret+"void";
			else
				ret=ret+",void";
		}
		i++;
	}

	return ret;

}

template <class T>
		void pdg::stu_mem_indicallpass::recur_entry(T *dit,string &ret )
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

    				}else
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



bool pdg::stu_mem_indicallpass:: judge_is_funptr(DIDerivedType *didt)
{
	const MDOperand &memopp= didt->getOperand(3);
	if(memopp==NULL)
		return false;
	if (DIDerivedType *dide=dyn_cast<DIDerivedType>(memopp))
	{
		unsigned int flag=dide->getTag();
		if(flag==15)
		{
			const MDOperand &tempop=dide->getOperand(3);
			if (tempop==NULL)
				return false;
			if (DISubroutineType *dist=dyn_cast<DISubroutineType>(tempop))
			{
				return true;
			}
		}
	}
	return false;
					
}

DISubroutineType * pdg::stu_mem_indicallpass:: getDisSubroutinetype(DIDerivedType *didt)
{
	const MDOperand &memopp= didt->getOperand(3);
	DIDerivedType *dide=dyn_cast<DIDerivedType>(memopp);
	const MDOperand &tempop=dide->getOperand(3);
	DISubroutineType *dist=dyn_cast<DISubroutineType>(tempop);
	return dist;
}



unordered_map<string,vector<string>> pdg::stu_mem_indicallpass:: My_map_struct_and_filed(Module &M)
{
	unordered_map<string,vector<string>> struct_member_map;
	for (auto &F : M)
	{
		if (F.isDeclaration() || F.empty())
			continue;
		for (auto inst_i = inst_begin(F); inst_i != inst_end(F); inst_i++)
		{
			if (DbgDeclareInst *dbg = dyn_cast<DbgDeclareInst>(&*inst_i))
			{

        DILocalVariable *dilocal=dbg->getVariable ();//变量声明， wr p

        if (DIType *dt = dyn_cast<DIType>(dilocal->getType()))
        {
        	My_recur_on_ditype(dt,struct_member_map);

        }

      }
    }
  }
  return struct_member_map;
}



vector<string> pdg::stu_mem_indicallpass:: My_get_struct_name(GetElementPtrInst *gep,unordered_map<string,vector<string>> &stru_filed_map)
{
	string stru_filed="";
	vector<string> retv;
	int num=gep->getNumOperands();        
	if(num>3)
	{
		errs()<<"gep num larger than three\n";
	}

	int offset=pdg::pdgutils::getGEPAccessFieldOffset(*gep);
	StructType * sty=pdg::pdgutils::getStructTypeFromGEP(*gep);
	string struct_name=My_stripVersionTag(sty->getStructName().str());
	if(stru_filed_map.find(struct_name)!=stru_filed_map.end())
	{
		auto fild_vector=stru_filed_map[struct_name];
		string fildname=fild_vector.at(offset);
		vector<string> filedFunsig=splitFiledFuncptr(fildname);
		if(filedFunsig.size()==0)
			errs()<<"cannot get funncion signature\n";
		stru_filed=struct_name+"_"+filedFunsig[0];
		string funsig=filedFunsig[1];
		retv={stru_filed,funsig};
	} 
	return retv; 
}

void pdg::stu_mem_indicallpass:: My_get_namedmetadata(Module &M)
{
	for (auto mit=M.named_metadata_begin();mit!=M.named_metadata_end();mit++)
	{
		errs()<<mit->getName().str()<<"\n";
	}
}


// void pdg::stu_mem_indicallpass::getAnalysisUsage(llvm::AnalysisUsage &AU) const
// {
// 	AU.addRequired<ProgramDependencyGraph>();
// }


static RegisterPass<pdg::stu_mem_indicallpass> 
STRU_MEM("stru-mem", "proprecess Analyse",false, false);