#ifndef GET_SOURCE_SINK_DATAFLOW_HH_
#define GET_SOURCE_SINK_DATAFLOW_HH_
#include "LLVMEssentials.hh"
#include "Graph.hh"
#include "PDGCallGraph.hh"
#include "DataDependencyGraph.hh"
#include "ControlDependencyGraph.hh"
#include "ProgramDependencyGraph.hh"
using namespace pdg;
using namespace llvm;
using namespace std;



namespace pdg
{
  class GetDataFlow : public llvm::ModulePass
  {
  public:
    static char ID;
    GetDataFlow() : llvm::ModulePass(ID){}
  bool runOnModule(llvm::Module &M)  override;
  bool is_have_flow(Value* src,Value* dst);
  void getAnalysisUsage(llvm::AnalysisUsage &AU)const;
};
} // namespace pdg

#endif
