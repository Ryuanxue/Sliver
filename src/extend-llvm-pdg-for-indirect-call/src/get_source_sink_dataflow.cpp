#include "get_source_sink_dataflow.hh"

static cl::opt<std::string> getsourcefilename("srcfile", cl::desc("Specify source filename  for this pass"), cl::value_desc("funname"));
static cl::opt<std::string> getsourcelinenum("srcline", cl::desc("Specify source linenum  for this pass"), cl::value_desc("funname"));
static cl::opt<std::string> getsourcevarname("srcvar", cl::desc("Specify source variable name  for this pass"), cl::value_desc("funname"));
static cl::opt<std::string> getsinkfilename("sinkfile", cl::desc("Specify source filename  for this pass"), cl::value_desc("funname"));
static cl::opt<std::string> getsinklinenum("sinkline", cl::desc("Specify source linenum  for this pass"), cl::value_desc("funname"));
static cl::opt<std::string> getsinkvarname("sinkvar", cl::desc("Specify source variable name  for this pass"), cl::value_desc("funname"));
char pdg::GetDataFlow::ID = 0;

//输入文件名，行号，变量名，获取值

bool pdg::GetDataFlow:: runOnModule(llvm::Module &M)
{
	//解析命令行的输入
	string srcfile;
	string sinkfile;
	string srctempline;
	string sinktempline;
	int srcline;
	int sinkline;
	string srcvar;
	string sinkvar;
	Value *srcvalue=NULL;
	Value *destvalue=NULL;
	bool srcflag=false;
	bool sinkflag=false;
  for(auto &e : getsourcefilename) 
  {
      string s(1,e);
      srcfile.append(s);         
  }
   for(auto &e : getsourcelinenum) 
  {
      string s(1,e);
      srctempline.append(s);         
  }
  srcline=stoi(srctempline);
   for(auto &e : getsourcevarname) 
  {
      string s(1,e);
      srcvar.append(s);         
  } 
  for(auto &e : getsinkfilename) 
  {
      string s(1,e);
      sinkfile.append(s);         
  }
   for(auto &e : getsinklinenum) 
  {
      string s(1,e);
      sinktempline.append(s);         
  }
  sinkline=stoi(sinktempline);
   for(auto &e : getsinkvarname) 
  {
      string s(1,e);
      sinkvar.append(s);         
  }

  for (auto &F : M)
	{
		if (srcflag && sinkflag)
				break;
		if (F.isDeclaration() || F.empty())
			continue;
	    // auto caller_node = getNode(F);
		for (auto inst_i = inst_begin(F); inst_i != inst_end(F); inst_i++)
		{	
			if (srcflag && sinkflag)
				break;
			if(LoadInst *loadinst=dyn_cast<LoadInst>(&*inst_i))
			{
				int linenum;
				string filename;
				if (DILocation *Loc = loadinst->getDebugLoc())
				{
					linenum = Loc->getLine();
					filename = Loc->getFilename().str();
				}
				if(filename==srcfile && linenum==srcline && !srcflag)
				{
					string loadvarname=loadinst->getOperand(0)->getName().str();
					int pos=loadvarname.find(srcvar);
					if (pos==0)
					{
						srcvalue=dyn_cast<Value>(loadinst);
						srcflag=true;
					}
				}else if(filename==sinkfile && linenum==sinkline && !sinkflag)
				{
					string loadvarname=loadinst->getOperand(0)->getName().str();
					int pos=loadvarname.find(sinkvar);
					if (pos==0)
					{
						destvalue=dyn_cast<Value>(loadinst);
						sinkflag=true;
					}
					
				}
			}	
			else if(StoreInst *storeinst=dyn_cast<StoreInst>(&*inst_i))
			{
				int linenum;
				string filename;
				if (DILocation *Loc = storeinst->getDebugLoc())
				{
					linenum = Loc->getLine();
					filename = Loc->getFilename().str();
				}
				if(filename==srcfile && linenum==srcline && !srcflag)
				{
					string loadvarname=storeinst->getOperand(1)->getName().str();
					int pos=loadvarname.find(srcvar);
					if (pos==0)
					{
						srcvalue=dyn_cast<Value>(storeinst);
						srcflag=true;
					}
				}else if(filename==sinkfile && linenum==sinkline && !sinkflag)
				{
					string loadvarname=storeinst->getOperand(1)->getName().str();
					int pos=loadvarname.find(sinkvar);
					if (pos==0)
					{
						destvalue=dyn_cast<Value>(storeinst);
						sinkflag=true;
					}
					
				}
			}
			else if(GetElementPtrInst *gepinst=dyn_cast<GetElementPtrInst>(&*inst_i))
			{
				int linenum;
				string filename;
				if (DILocation *Loc = gepinst->getDebugLoc())
				{
					linenum = Loc->getLine();
					filename = Loc->getFilename().str();
				}
				if(filename==srcfile && linenum==srcline && !srcflag)
				{
					string gepvarname=gepinst->getOperand(0)->getName().str();
					int pos=gepvarname.find(srcvar);
					if (pos==0)
					{
						srcvalue=dyn_cast<Value>(gepinst);
						srcflag=true;
					}
				}
				
					else if(filename==sinkfile && linenum==sinkline && !sinkflag)
				{
					string loadvarname=gepinst->getOperand(0)->getName().str();
					int pos=loadvarname.find(sinkvar);
					if (pos==0)
					{
						destvalue=dyn_cast<Value>(gepinst);
						sinkflag=true;
					}
					
				}
			}
			else if(BitCastInst *bitcastinst=dyn_cast<BitCastInst>(&*inst_i))
			{
				int linenum;
				string filename;
				if (DILocation *Loc = bitcastinst->getDebugLoc())
				{
					linenum = Loc->getLine();
					filename = Loc->getFilename().str();
				}
				if(filename==srcfile && linenum==srcline && !srcflag)
				{
					string gepvarname=bitcastinst->getOperand(0)->getName().str();
					int pos=gepvarname.find(srcvar);
					if (pos==0)
					{
						srcvalue=dyn_cast<Value>(bitcastinst);
						srcflag=true;
					}
				}
				
					else if(filename==sinkfile && linenum==sinkline && !sinkflag)
				{
					string loadvarname=bitcastinst->getOperand(0)->getName().str();
					int pos=loadvarname.find(sinkvar);
					if (pos==0)
					{
						destvalue=dyn_cast<Value>(bitcastinst);
						sinkflag=true;
					}
					
				}

			}else if(CallInst *callinst=dyn_cast<CallInst>(&*inst_i))		
			{
				Function *fun=callinst->getCalledFunction();
				// string funname=fun->getName().str();
				//errs()<<funname<<"\n";
				if (fun && fun->getName().str()=="__isoc99_fscanf")
				{
							int linenum;
					string filename;
					if (DILocation *Loc = callinst->getDebugLoc())
					{
						linenum = Loc->getLine();
						filename = Loc->getFilename().str();
					}
					if(filename==srcfile && linenum==srcline && !srcflag)
					{
						
							srcvalue=callinst->getOperand(2);
							srcflag=true;
						
					}
					
						
						
					}

			}


						
		}
	}

	if(srcvalue==NULL)
	{
		errs()<<"can't find source Value ir.\n";
		exit(1);
	}
	if (destvalue==NULL)
	{
		errs()<<"can't find sink Value ir.\n";
		exit(1);
	}
	errs()<<"source Value:"<<*srcvalue<<"  \n";
	errs()<<"sink Value:"<<*destvalue<<"  \n";
	if(is_have_flow(srcvalue,destvalue))
	{
		errs()<<"have data flow.\n";
	}else
	errs()<<"havn't data flow.\n";




	return false;
}




bool pdg::GetDataFlow:: is_have_flow(Value* src,Value* dst)
{
	ProgramGraph *g = getAnalysis<ProgramDependencyGraph>().getPDG();
	pdg::Node* src_node = g->getNode(*src);
	pdg::Node* dst_node = g->getNode(*dst);

	// return g->canReach(*src_node, *dst_node,{EdgeType::CONTROLDEP_ENTRY});
	return g->canReach(*src_node, *dst_node);
}




void pdg::GetDataFlow::getAnalysisUsage(llvm::AnalysisUsage &AU) const
{
	AU.addRequired<ProgramDependencyGraph>();
}


static RegisterPass<pdg::GetDataFlow> 
DATA_FLOW("data-flow", "proprecess Analyse",false, false);