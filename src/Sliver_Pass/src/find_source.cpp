#include "find_source.hh"


char sliver::findSource::ID = 0;


bool sliver::findSource:: runOnModule(llvm::Module &M)
{
	
  //创建xml相关的doc对象
	XMLDocument doc; //创建xml 的doc类型
	XMLElement * root ;
	XMLDeclaration * declaration = doc.NewDeclaration();
	doc.InsertFirstChild(declaration);
	root= doc.NewElement("Root");
	doc.InsertEndChild(root);

	
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
					if(fun->getName().str()=="BIO_read")
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
						XMLElement * element = root->InsertNewChildElement("src");
			      element->SetAttribute("Dir", dirpath.c_str());
			      element->SetAttribute("filename",filename.c_str());
			      element->SetAttribute("linenum",linenum);
					}
				}             
			}
		}
	}
	const char* xmlPath="source.xml";
	ifstream fin(xmlPath);
	if(fin)
	{
		remove(xmlPath);

	}
	doc.SaveFile(xmlPath);
	return false;
}


static RegisterPass<sliver::findSource> 
FIND_SRC("find-src", "proprecess Analyse",false, false);