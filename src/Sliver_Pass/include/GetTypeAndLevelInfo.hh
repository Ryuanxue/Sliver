#ifndef SET_LEVEL_FOR_VAR_H_
#define SET_LEVEL_FOR_VAR_H_

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
 #include<set>
#include <iostream>
#include <algorithm>
#include "tinyxml2.h"
#include "llvm/Support/CommandLine.h"
using namespace llvm;
using namespace std;
using namespace tinyxml2;

namespace sliver
{
    class GetVarLevel : public FunctionPass 
    {
    public:
        static char ID;
        string str="_self_creat_";
        int self_num=0;
        GetVarLevel() : FunctionPass(ID)
        {
        }
        template <class T>
        void recur_entry(T *dit,XMLElement *element,XMLElement *root,vector<string> &dealed_struct);
        bool runOnFunction(Function &F) override;
        int get_arr_count(DICompositeType *dit);
        template <class T>
        string get_arr_type(T *dit);
        string strip_varname(string str);
    };
}


#endif