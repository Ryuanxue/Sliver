#include "find_sink.hh"


char sliver::findSink::ID = 0;


bool sliver::findSink:: runOnModule(llvm::Module &M)
{
	

  //创建xml相关的doc对象
	XMLDocument doc; //创建xml 的doc类型
	XMLElement * root ;
	XMLDeclaration * declaration = doc.NewDeclaration();
	doc.InsertFirstChild(declaration);
	root= doc.NewElement("Root");
	doc.InsertEndChild(root);
 
	vector<string> sinkfunset={"memcpy","strcpy","strcat","sprintf","memmove","wcscat","wcscpy","vsprintf"};
	for (auto &F : M)
	{
		if (F.isDeclaration() || F.empty())
			continue;
	    // auto caller_node = getNode(F);
		for (auto inst_i = inst_begin(F); inst_i != inst_end(F); inst_i++)
		{
			if (CallInst *ci = dyn_cast<CallInst>(&*inst_i))
			{
				
				if (Function *fun=ci->getCalledFunction())
				{
					string funname;
					if (fun->isIntrinsic())
						funname=stripIntrinsicfunname(fun->getName().str());
					else
						funname=fun->getName().str();
					errs()<<funname<<"\n";
					if(find(sinkfunset, funname)!=sinkfunset.end()) 
					{
						int linenum;
						string filename;
						string dirpath;
						if (DILocation *Loc = ci->getDebugLoc())
						{
							linenum = Loc->getLine();
							filename = Loc->getFilename().str();
							dirpath = Loc->getDirectory().str();
						}
						XMLElement * element = root->InsertNewChildElement("sink");
						element->SetAttribute("fun",funname.c_str());
				      element->SetAttribute("Dir", dirpath.c_str());
				      element->SetAttribute("filename",filename.c_str());
				      element->SetAttribute("linenum",linenum);
					}
				}             
			}
		}
	}
	const char* xmlPath="sink.xml";
	ifstream fin(xmlPath);
	if(fin)
	{
		remove(xmlPath);

	}
	doc.SaveFile(xmlPath);
	return false;
}

string sliver::findSink:: stripIntrinsicfunname(string str)
{
	size_t pos = 0;
    pos = str.find(".");
    string newstr=str.substr(pos+1);
    pos=newstr.find(".");
    string retstr=newstr.substr(0,pos);
    return retstr;
}


static RegisterPass<sliver::findSink> 
FIND_SINK("find-sink", "proprecess Analyse",false, false);