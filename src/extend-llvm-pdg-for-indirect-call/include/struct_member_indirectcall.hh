#ifndef STRUCT_MEMBER_INDIRECTCALL_H_
#define STRUCT_MEMBER_INDIRECTCALL_H_
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
  class stu_mem_indicallpass :  public llvm::ModulePass
  {
  public:
    static char ID;
    stu_mem_indicallpass() : llvm::ModulePass(ID){}
    unordered_map<string,vector<string>> My_map_struct_and_filed(Module &M);
    vector<string> My_get_struct_name(GetElementPtrInst *gep,unordered_map<string,vector<string>> &stru_filed_map);
    // void My_print_MDNode(GetElementPtrInst &gep);
    string My_stripVersionTag(string str);
  template <typename T> void My_recur_on_ditype(T *dit,unordered_map<string,vector<string>> &stru_filed_map);
  // void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;
  bool runOnModule(llvm::Module &M)  override;
  void  My_get_namedmetadata(Module &M);
  void parse_location_candifun_xml(string input_xml, map<string,vector<map<string,string>>> &loc_candimap);
  bool judge_is_funptr(DIDerivedType *didt);
  string get_functionsignatrure_str(DISubroutineType *disubrouti);
  template <class T>void recur_entry(T *dit,string &ret );
  DISubroutineType *  getDisSubroutinetype(DIDerivedType *didt);
  vector<string> splitFiledFuncptr(string str);
};
} // namespace pdg

#endif
