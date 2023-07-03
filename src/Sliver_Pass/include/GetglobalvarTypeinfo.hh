#ifndef GET_GLOBAL_VAR_TYPE_INFL_H
#define GET_GLOBAL_VAR_TYPE_INFL_H

#include <llvm/Pass.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>
#include <iostream>
#include <llvm/IR/DebugInfoMetadata.h>
#include "tinyxml2.h"
#include <fstream>
using namespace llvm;
using namespace std;
using namespace tinyxml2;

namespace sliver
{
    class TypeExtractor : public ModulePass
    {
    public:
        static char ID;
        string str="_self_creat_";
        int self_num=0;
        TypeExtractor() : ModulePass(ID) {}
        template <class T>
        void recur_entry(T *dit,XMLElement *element,XMLElement *root,vector<string> &dealed_struct);
        bool runOnModule(Module &M) override ;
        int get_arr_count(DICompositeType *dit);
        template <class T>
        string get_arr_type(T *dit);


  };
}


#endif



