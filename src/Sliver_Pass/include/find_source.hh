#ifndef FIND_SOURCE_H_
#define FIND_SOURCE_H_
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
#include "llvm/Support/CommandLine.h"
#include <stdio.h>
#include <iostream>
#include "tinyxml2.h"
#include <fstream>
using namespace llvm;
using namespace std;
using namespace tinyxml2;



namespace sliver
{
  class findSource : public llvm::ModulePass
  {
  public:
    static char ID;
    findSource() : llvm::ModulePass(ID){}
    bool runOnModule(llvm::Module &M)  override;
  };
} // namespace pdg

#endif
