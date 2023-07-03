#ifndef CFGPASS_H_
#define CFGPASS_H_

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Function.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/User.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Metadata.h>
#include <llvm/IR/DebugInfo.h>
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/Pass.h>
#include <fstream>
#include <string>
#include "llvm/IR/DebugInfoMetadata.h"
#include <llvm/Analysis/CFG.h>
#include <stdio.h>
#include <map>
#include "llvm/Support/Casting.h"
#include <llvm/Support/raw_ostream.h>
using namespace llvm;
using namespace std;

namespace sliver
{
  class CFGPass : public FunctionPass
  {
  public:
    static char ID;
    error_code error;
	string str;
	map<BasicBlock*, int> basicBlockMap;
	int bbCount;  //Block的编号
    CFGPass() : FunctionPass(ID){bbCount = 0;}
    bool runOnFunction(Function &F)  override;
    bool isllvm(CallInst *inst);
    string&   replace_all_distinct(string&   str,const   string&   old_value,const   string&   new_value);
  };
} // namespace pdg

#endif