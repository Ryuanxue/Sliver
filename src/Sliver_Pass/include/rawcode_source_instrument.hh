#ifndef RAW_INPUT_INSTRUCTION_H_
#define RAW_INPUT_INSTRUCTION_H_

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
#include <llvm/IR/LLVMContext.h>
// #include "../IR/LLVMContextImpl.h"
#include <fstream>
#include <string>
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/IRBuilder.h"
#include <llvm/Analysis/CFG.h>
#include <stdio.h>
 #include<set>
#include <map>
#include <iostream>
#include "tinyxml2.h"
#include <algorithm>
 
using namespace tinyxml2;

#include "llvm/Support/Casting.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
using namespace llvm;
using namespace std;
#define VNAME(name)(#name)

namespace sliver
{
  class RAWSource_INSTRUMENT : public llvm::ModulePass
  {
  public:
    static char ID;
    StructType* IO_FILE_ty;
    Type *IO_FILE_PTR_ty;
    RAWSource_INSTRUMENT() : llvm::ModulePass(ID){}
    bool runOnModule(llvm::Module &M)  override;
    Instruction* insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in);
    template <class T>
    int get_Aggre_size(T *dit);
    string strip_varname(string str);
    void instrument_source_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_entry_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_sink_charptr(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_source_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_source_chararr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_entry_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map);
    void instrument_sink_basic(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map);
    void parse_in_out_xml(string xmlfilename);
     string srcname;
    string srckind;
    string srctype;
    string instfunname;
    string srcfunname;
    int srcline;
    int sinkline;
    bool issinkinst=false;
    bool issrcinst=false;
    string sinkname;
    string sinkkind;
    string sinktype;
    string modulename;
  };
} // namespace sliver

#endif