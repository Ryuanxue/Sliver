#ifndef INDIRECT_CALL_H_
#define INDIRECT_CALL_H_
#include "LLVMEssentials.hh"
#include "Graph.hh"
#include "PDGCallGraph.hh"
#include "DataDependencyGraph.hh"
#include "ControlDependencyGraph.hh"
#include "ProgramDependencyGraph.hh"
#include <vector>
#include <set>
#include <iostream>
#include "tinyxml2.h"
#include <unordered_map>
#include <fstream>
using namespace pdg;
using namespace llvm;
using namespace std;
using namespace tinyxml2;



namespace pdg
{
  class indictcallPass : public llvm::ModulePass
  {
  public:
    static char ID;
    indictcallPass() : llvm::ModulePass(ID){}
    std::map<string,string> My_getIndirectCallCandidates(CallInst &ci, Module &M);
  bool runOnModule(llvm::Module &M)  override;
  bool isFuncSignatureMatch(CallInst &ci, llvm::Function &f);
  bool isTypeEqual(Type& t1, Type &t2);
  string stripVersionTag(std::string str);
  string get_functionsignatrure_str(Function &F);
  template <class T>void recur_entry(T *dit,string &ret );
  template <class T>
bool is_disubroutinetype(T *t);
string get_function_ptrarg_str(Metadata *mt);
};
} // namespace pdg

#endif
