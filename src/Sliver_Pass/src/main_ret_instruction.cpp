#include "main_ret_instruction.hh"


Instruction* sliver::MainRetInstruction::insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in) 
{
    // FILE * pFile;
    // FILE * fopen ( const char * , const char *  );
    //创建文件指针，打开文件，返回文件指针，判断文件打开是否成功
    FunctionCallee funcall1= M.getOrInsertFunction("fopen",
                                                IO_FILE_PTR_ty,
                                                Type::getInt8PtrTy(F.getContext()),
                                                Type::getInt8PtrTy(F.getContext())
                                                );

    Value* const_fopen =funcall1.getCallee();
    Function *func_fopen = dyn_cast<Function>(const_fopen);

    // //Create a global string variable with the file's name
    Constant* strfileConstant = ConstantDataArray::getString(
                                                    M.getContext(),
                                                    "raw_input.txt",
                                                    true);

    GlobalVariable* fileStr = new GlobalVariable(M,
                                        strfileConstant->getType(),
                                        true,
                                        llvm::GlobalValue::InternalLinkage , 
                                        strfileConstant,
                                        "testTxt");


    //Get the int8ptr to our message
    Constant* constZeroF = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0);
    Constant* constArrayF = ConstantExpr::getInBoundsGetElementPtr(strfileConstant->getType(),fileStr, constZeroF);
    Value* filePtr = ConstantExpr::getBitCast(constArrayF, PointerType::getUnqual(Type::getInt8Ty(M.getContext())));

    // //Create a global strin g variable with the format's name
    Constant* strFormatConstant = ConstantDataArray::getString( M.getContext(),
                                                                "a+",
                                                                true);

    GlobalVariable* formatStr = new GlobalVariable(M,
                                    strFormatConstant->getType(),
                                    true,
                                    llvm::GlobalValue::InternalLinkage,
                                    strFormatConstant,
                                    "a+");

    // // Get the int8ptr to our message
    Constant* constZeroFmt  = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0);
    Constant* constArrayFmt = ConstantExpr::getInBoundsGetElementPtr(strFormatConstant->getType(),formatStr, constZeroFmt);
    Value* fmtPtr = ConstantExpr::getBitCast(constArrayFmt, PointerType::getUnqual(Type::getInt8Ty(M.getContext())));

    vector<Value*> args;
    args.push_back(filePtr);
    args.push_back(fmtPtr);
    IRBuilder<> builder(M.getContext());
    builder.SetInsertPoint(in);
    Instruction *allcapfile =builder.CreateAlloca(IO_FILE_PTR_ty,nullptr,"pFile");
    Instruction *fopen= builder.CreateCall(func_fopen, args, "fopen");
    /**
    判断文件打开是否成功，文件打开失败怎么处理
    **/
    builder.CreateStore(fopen,allcapfile);
    return allcapfile;
}

   


bool sliver::MainRetInstruction::runOnModule(Module &M) 
{
    
    //判断模块中有无FILE结构体
    // LLVMContextImpl* C = M.getContext().pImpl;
    StructType *filetype= llvm::StructType::getTypeByName(M.getContext(), "struct._IO_FILE"); 
    if (filetype!=nullptr)
    {
        IO_FILE_ty=filetype;
    }else
    {
        IO_FILE_ty = StructType::create(M.getContext(), "struct._IO_FILE");
    }
    IO_FILE_PTR_ty = PointerType::getUnqual(IO_FILE_ty);
   
    //找到插装位置
    for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) //函数
    {
        string fun=F->getName().str();
        errs()<<fun<<"\n";
        if (fun!="main")
            continue;

        //获得函数中ret指定的个数，如果ret指令为1继续
        int retnum=0;
        for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
        {
            for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
            {
                Instruction *inst=&*ins_iter;
                if(ReturnInst *retinst=dyn_cast<ReturnInst>(inst))
                {
                	retnum++;
                }

            } 
        }
        errs()<<retnum<<"\n";
        if(retnum!=1)
        {
        	errs()<<"retrun instruction large than 1 or less than 1."<<"\n";
        	break;
        }
        	
        errs()<<"fff\n";
        bool isentryinst=false;
        for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
        {
            for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
            {
            	Instruction *inst=&*ins_iter;

                string bbname=bb_iter->getName().str();
                if (bbname=="entry" && !isentryinst)
                {
                    IRBuilder<> builder(F->getContext());
                    builder.SetInsertPoint(&*ins_iter);
                    Instruction *pfilealloca= insertOnMainEntryBlock(*bb_iter, M,&*ins_iter);//返回fopen
                  
                    
                    Value* source=builder.CreateGlobalStringPtr("_mainentry_:......\n");//创建全局字符串常量
                    FunctionCallee fun_fputs= M.getOrInsertFunction("fputs",
                                Type::getInt32Ty(M.getContext()),//返回值
                                source->getType(),//第一个参数
                                IO_FILE_PTR_ty);
                    Value* const_fputs=fun_fputs.getCallee();
                    Function *func_fputs = cast<Function>(const_fputs);
                    //创建输入的参数
                    vector<Value*> firstcall;//第一次调用
                    Value* pfile = builder.CreateLoad(pfilealloca);
                    firstcall.push_back(source);
                    firstcall.push_back(pfile);
                    builder.CreateCall(func_fputs,firstcall,"fputs");
                   
                                                              
                    
                    //关闭文件
                    FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                                        Type::getInt32Ty(F->getContext()),
                                                                IO_FILE_PTR_ty);
                    Value* const_fclose =funcall2.getCallee();
                    Function *func_fclose = cast<Function>(const_fclose);
                    Value *fw_load = builder.CreateLoad(pfilealloca);
                    // fr_load = builder.CreateLoad(fr);
                    builder.CreateCall(func_fclose, fw_load);
                    isentryinst=true;
                }

            	if(ReturnInst *retinst=dyn_cast<ReturnInst>(inst))
                {
                
                	//插装return位置
                	errs()<<"find inst target..\n";
                    IRBuilder<> builder(F->getContext());
                    builder.SetInsertPoint(&*ins_iter);
                    Instruction *pfilealloca= insertOnMainEntryBlock(*bb_iter, M,&*ins_iter);//返回fopen
                  
                    
                    Value* source=builder.CreateGlobalStringPtr("_mainend_:......\n");//创建全局字符串常量
                    FunctionCallee fun_fputs= M.getOrInsertFunction("fputs",
                                Type::getInt32Ty(M.getContext()),//返回值
                                source->getType(),//第一个参数
                                IO_FILE_PTR_ty);
                    Value* const_fputs=fun_fputs.getCallee();
                    Function *func_fputs = cast<Function>(const_fputs);
                    //创建输入的参数
                    vector<Value*> firstcall;//第一次调用
                    Value* pfile = builder.CreateLoad(pfilealloca);
                    firstcall.push_back(source);
                    firstcall.push_back(pfile);
                    builder.CreateCall(func_fputs,firstcall,"fputs");
                   
                        
                    
                    //关闭文件
                    FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                                        Type::getInt32Ty(F->getContext()),
                                                                IO_FILE_PTR_ty);
                    Value* const_fclose =funcall2.getCallee();
                    Function *func_fclose = cast<Function>(const_fclose);
                    Value *fw_load = builder.CreateLoad(pfilealloca);
                    // fr_load = builder.CreateLoad(fr);
                    builder.CreateCall(func_fclose, fw_load);
                    break;
                }


            }
        }
    }

    
    return false;
}
            
    

char sliver::MainRetInstruction::ID = 0;
static RegisterPass<sliver::MainRetInstruction> X("main-ret-inst", "proprecess Analyse",
    false, false);
