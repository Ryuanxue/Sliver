#include "rawcode_source_instrument.hh"
static cl::opt<std::string> getxmlfilename("in-xml-raw", cl::desc("Specify xml filename for mypass"), cl::value_desc("xml-filename"));

Instruction* sliver::RAWSource_INSTRUMENT::insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in) 
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
                                                    // "raw_input.txt",
                                                    "raw",
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
                                                                // "a+",
    															"ab+",
                                                                true);

    GlobalVariable* formatStr = new GlobalVariable(M,
                                    strFormatConstant->getType(),
                                    true,
                                    llvm::GlobalValue::InternalLinkage,
                                    strFormatConstant,
                                    // "a+");
                                    "ab+");

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

       


template <class T>
int sliver::RAWSource_INSTRUMENT::get_Aggre_size(T *dit)
{
    if(DIDerivedType *didt=dyn_cast<DIDerivedType>(dit))
    {
    /**
         * tag的值对应的意义
         * tag:22  DW_TAG_typedef
         * tag:15  DW_TAG_pointer_type,
         * tag:38   DW_TAG_const_type,
         * */
        const MDOperand &opp=didt->getOperand(3) ;      
        return get_Aggre_size(&*opp);
            
    }else if(DICompositeType *dict=dyn_cast<DICompositeType>(dit))
    {
        int size=dict->getSizeInBits()/8;
        return size;
    }
}

       

string sliver::RAWSource_INSTRUMENT::strip_varname(string str)
{
    size_t pos=0;
    pos = str.find(".");
    if (pos == string::npos)
        return str;
    else
        return str.substr(0,pos);
}


void sliver::RAWSource_INSTRUMENT::instrument_entry_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	//%_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff = alloca [14 x i8]
	Type* I = IntegerType::getInt8Ty(M.getContext());
	ArrayType* arrayType ;
	string subs("CWE121_");
	if (srcname.find(subs)>0)
	 arrayType = ArrayType::get(I, 14);
	else
		arrayType = ArrayType::get(I, 100);
	Value *allocval = builder.CreateAlloca(arrayType,nullptr,srcname+"_buff");
	varname_allocainst_map.insert(make_pair(srcname+"_buff",dyn_cast<Instruction> (allocval)));
	//%arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff, i64 0, i64 0,
	Value *i64zero = ConstantInt::get(M.getContext(), APInt(64, 0));
	Value *indices[2] = {i64zero, i64zero};
	Value *arraydecayvalue=builder.CreateInBoundsGEP(allocval, ArrayRef<Value *>(indices, 2));
	//%0 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !76
		Value *ptrValue_alloca=varname_allocainst_map[srcname];
		Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
		// %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #8, !dbg !77

		FunctionCallee fun_strcpy=M.getOrInsertFunction("strcpy",
			Type::getInt8PtrTy(M.getContext()),
			Type::getInt8PtrTy(M.getContext()),
			Type::getInt8PtrTy(M.getContext()) 
			);
Value *const_strcpy=fun_strcpy.getCallee();
Function *func_strcpy=cast<Function>(const_strcpy);
  vector<Value*> firstcall;//第一次调用
firstcall.push_back(arraydecayvalue);
firstcall.push_back(loadvalue);
builder.CreateCall(func_strcpy,firstcall,"strcpy");
}

// void sliver::RAWSource_INSTRUMENT::instrument_source_charptr_fprintf(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
// {
// 	//返回FILE *fp
// 	errs()<<"new inst..\n";
//     Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
// 	IRBuilder<> builder(M.getContext());
// 	builder.SetInsertPoint(inst);
	
// 	// %7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !141
// 	Value *ptrValue_alloca=varname_allocainst_map[srcname];
// 	Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
// 	errs()<<"new inst1..\n";
// 	//%3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !105
// 	Value *fileload=builder.CreateLoad(pfilealloca);
// 	Value *sourceFormat=builder.CreateGlobalStringPtr("source:%s\n");//创建全局字符串常量
// // 	// %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %4), !dbg !107
//  Type* ArgsTy[] = {
//     IO_FILE_PTR_ty,
//     sourceFormat->getType()
   
//   };
// 	// FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
// 		FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
//                                 FunctionType::get(Type::getInt32Ty(M.getContext()),ArgsTy,true));
//                                 // Type::getInt32Ty(M.getContext()),
//                                 // IO_FILE_PTR_ty,
//                                 // sourceFormat->getType(),
//                                 // loadvalue->getType());
//     Value *const_fprintf=fun_fprintf.getCallee();
//     Function *func_fprintf=cast<Function>(const_fprintf);
//       vector<Value*> firstcall;//第一次调用
//     firstcall.push_back(fileload);
//     firstcall.push_back(sourceFormat);
//     firstcall.push_back(loadvalue);
//     builder.CreateCall(func_fprintf,firstcall,"fprintf");

//     //关闭文件
//     FunctionCallee funcall2= M.getOrInsertFunction("fclose",
//                         Type::getInt32Ty(M.getContext()),
//                                                 IO_FILE_PTR_ty);
//     Value* const_fclose =funcall2.getCallee();
//     Function *func_fclose = cast<Function>(const_fclose);
//     Value* fw_load = builder.CreateLoad(pfilealloca);
//     builder.CreateCall(func_fclose, fw_load);
// }

void sliver::RAWSource_INSTRUMENT::instrument_source_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	//返回FILE *fp
	errs()<<"new inst..\n";
    Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);

	//%len_source = alloca i32
	Type* int32type = Type::getInt32Ty(M.getContext());
	Value *alloca_len_source = builder.CreateAlloca(int32type,nullptr,"len_source");
	Value *len_source = ConstantInt::get(M.getContext(), APInt(32, 6));
	//store i32 6, i32* %len_source, align 4
	builder.CreateStore(len_source,alloca_len_source);
	//%13 = bitcast i32* %len_source to i8*,
	Value *bitcastinst = builder.CreateBitCast(alloca_len_source, Type::getInt8PtrTy(M.getContext()), "");
	//%14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp,
	Value *fileload=builder.CreateLoad(pfilealloca);

	//创建fwrite函数
	Type *Int64Ty = Type::getInt64Ty(M.getContext());
  Type *CharPtrTy = Type::getInt8PtrTy(M.getContext());
  // Type *SizeTy = Type::getInt64Ty(Context);
  // Type *VoidTy = Type::getVoidTy(Context);

  std::vector<Type *> ArgsTy({CharPtrTy, Int64Ty, Int64Ty, IO_FILE_PTR_ty});
  FunctionType *FT = FunctionType::get(Int64Ty, ArgsTy, false);
  // Get or insert the fwrite function declaration
  FunctionCallee FwriteFn = M.getOrInsertFunction("fwrite", FT);

  Value *const_fwrite=FwriteFn.getCallee();
    Function *func_fwrite=cast<Function>(const_fwrite);

    Value *const4 = ConstantInt::get(M.getContext(), APInt(64, 4));
    Value *const1 = ConstantInt::get(M.getContext(), APInt(64, 1));

      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(bitcastinst);
    firstcall.push_back(const4);
    firstcall.push_back(const1);
   firstcall.push_back(fileload);
    builder.CreateCall(func_fwrite,firstcall,"fwrite");

    //%15 = load i32, i32* %len_source
    Value *load_len_source=builder.CreateLoad(alloca_len_source);
    //%conv19 = sext i32 %15 to i64,
    Value *sextvalue=builder.CreateSExt(load_len_source,Type::getInt64Ty(M.getContext()));
    fileload=builder.CreateLoad(pfilealloca);
    //fwrite第二次调用
    Value *sourceFormat=builder.CreateGlobalStringPtr("source");//创建全局字符串常量
    vector<Value*> secondcall;
    secondcall.push_back(sourceFormat);
    secondcall.push_back(const1);
    secondcall.push_back(sextvalue);
   secondcall.push_back(fileload);
    builder.CreateCall(func_fwrite,secondcall,"fwrite");



    //记录字符串的真实长度，区分wchar_t
    Value *alloc_len_source_content=builder.CreateAlloca(int32type,nullptr,"len_source_content");
    //%17 = load i8*, i8** %data, 根据source的变量名进行加载值
    Value *sourcevalue_alloca=varname_allocainst_map[srcname];
	Value *load_sourcevalue=builder.CreateLoad(sourcevalue_alloca);
	Value *lencall;
	if (srctype=="wchar_t")
	{
		//创建wcslen函数调用
		FunctionCallee fun_wcslen=M.getOrInsertFunction("wcslen",
        Type::getInt64Ty(M.getContext()),
        Type::getInt32PtrTy(M.getContext())
        );
	    Value *const_wcslen=fun_wcslen.getCallee();
	    Function *func_wcslen=cast<Function>(const_wcslen);
	      vector<Value*> firstcall;//第一次调用
	    firstcall.push_back(load_sourcevalue);
	    lencall=builder.CreateCall(func_wcslen,firstcall,"wcslen");
	}else
	{
		//创建strlen函数到调用
		 FunctionCallee fun_strlen=M.getOrInsertFunction("strlen",
	        Type::getInt64Ty(M.getContext()),
	        Type::getInt8PtrTy(M.getContext())
	        );
	    Value *const_strlen=fun_strlen.getCallee();
	    Function *func_strlen=cast<Function>(const_strlen);
	      vector<Value*> strlen_firstcall;//第一次调用
	    strlen_firstcall.push_back(load_sourcevalue);
	    lencall=builder.CreateCall(func_strlen,strlen_firstcall,"strlen");
	}

    //%add = add i64 %call21, 1
    Value *addinst=builder.CreateAdd(lencall,const1);
    //%add = add i64 %call21, 1,
    Value *tuncvar=builder.CreateTrunc(addinst,Type::getInt32Ty(M.getContext()));
    //store i32 %conv22, i32* %len_source_content,
    builder.CreateStore(tuncvar,alloc_len_source_content);
    //%18 = bitcast i32* %len_source_content to i8*, 
    bitcastinst=builder.CreateBitCast(alloc_len_source_content, Type::getInt8PtrTy(M.getContext()), "");
    fileload=builder.CreateLoad(pfilealloca);
    //fwrite第三次调用
    vector<Value*> thirddcall;
    thirddcall.push_back(bitcastinst);
    thirddcall.push_back(const4);
    thirddcall.push_back(const1);
   thirddcall.push_back(fileload);
    builder.CreateCall(func_fwrite,thirddcall,"fwrite");


    //%20 = load i8*, i8** %data,
    load_sourcevalue=builder.CreateLoad(sourcevalue_alloca);
    //%21 = load i32, i32* %len_source_content
    Value* load_len_source_content=builder.CreateLoad(alloc_len_source_content);
    //%conv24 = sext i32 %21 to i64, 
    sextvalue=builder.CreateSExt(load_len_source_content,Type::getInt64Ty(M.getContext()));
    if(srctype=="wchar_t")
    	bitcastinst=builder.CreateBitCast(load_sourcevalue,Type::getInt8PtrTy(M.getContext()),"");
    
    
    
    fileload=builder.CreateLoad(pfilealloca);


    //fwrite第四次调用
    vector<Value*> fourthcall;
    if (srctype=="wchar_t")
    {
    	fourthcall.push_back(bitcastinst);
    	fourthcall.push_back(const4);
    }
    	
    else
    {
    	fourthcall.push_back(load_sourcevalue);
    	fourthcall.push_back(const1);
    }
    	
    fourthcall.push_back(sextvalue);
   fourthcall.push_back(fileload);
    builder.CreateCall(func_fwrite,fourthcall,"fwrite");
	

    //关闭文件
    FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                        Type::getInt32Ty(M.getContext()),
                                                IO_FILE_PTR_ty);
    Value* const_fclose =funcall2.getCallee();
    Function *func_fclose = cast<Function>(const_fclose);
    Value* fw_load = builder.CreateLoad(pfilealloca);
    builder.CreateCall(func_fclose, fw_load);

    


}

// void sliver::RAWSource_INSTRUMENT::instrument_source_chararr_fprintf(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
// {
// 	//返回FILE *fp
//     Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
// 	IRBuilder<> builder(M.getContext());
// 	builder.SetInsertPoint(inst);
	
	
// 	//%arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff, i64 0, i64 0,
// 	Value *i64zero = ConstantInt::get(M.getContext(), APInt(64, 0));
// 	Value *indices[2] = {i64zero, i64zero};
// 	Value *allocval=varname_allocainst_map[srcname];
// 	Value *arraydecayvalue=builder.CreateInBoundsGEP(allocval, ArrayRef<Value *>(indices, 2));

// 	//%3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !105
// 	Value *fileload=builder.CreateLoad(pfilealloca);
// 	Value *sourceFormat=builder.CreateGlobalStringPtr("source:%s\n");//创建全局字符串常量
// // 	// %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %4), !dbg !107
// Type* ArgsTy[] = {
//     IO_FILE_PTR_ty,
//     sourceFormat->getType()
   
//   };
// 	// FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
// 		FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
//                                 FunctionType::get(Type::getInt32Ty(M.getContext()),ArgsTy,true));
// 	// FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
//  //                                Type::getInt32Ty(M.getContext()),
//  //                                IO_FILE_PTR_ty,
//  //                                sourceFormat->getType(),
//  //                                Type::getInt32Ty(M.getContext()));
//     Value *const_fprintf=fun_fprintf.getCallee();
//     Function *func_fprintf=cast<Function>(const_fprintf);
//       vector<Value*> firstcall;//第一次调用
//     firstcall.push_back(fileload);
//     firstcall.push_back(sourceFormat);
//     firstcall.push_back(arraydecayvalue);
//     builder.CreateCall(func_fprintf,firstcall,"fprintf");

//     //关闭文件
//     FunctionCallee funcall2= M.getOrInsertFunction("fclose",
//                         Type::getInt32Ty(M.getContext()),
//                                                 IO_FILE_PTR_ty);
//     Value* const_fclose =funcall2.getCallee();
//     Function *func_fclose = cast<Function>(const_fclose);
//     Value* fw_load = builder.CreateLoad(pfilealloca);
//     builder.CreateCall(func_fclose, fw_load);


// }

void sliver::RAWSource_INSTRUMENT::instrument_source_chararr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	//返回FILE *fp
	errs()<<"new inst..\n";
    Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);

	//%len_source = alloca i32
	Type* int32type = Type::getInt32Ty(M.getContext());
	Value *alloca_len_source = builder.CreateAlloca(int32type,nullptr,"len_source");
	Value *len_source = ConstantInt::get(M.getContext(), APInt(32, 6));
	//store i32 6, i32* %len_source, align 4
	builder.CreateStore(len_source,alloca_len_source);
	//%13 = bitcast i32* %len_source to i8*,
	Value *bitcastinst = builder.CreateBitCast(alloca_len_source, Type::getInt8PtrTy(M.getContext()), "");
	//%14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp,
	Value *fileload=builder.CreateLoad(pfilealloca);

	//创建fwrite函数
	Type *Int64Ty = Type::getInt64Ty(M.getContext());
  Type *CharPtrTy = Type::getInt8PtrTy(M.getContext());
  // Type *SizeTy = Type::getInt64Ty(Context);
  // Type *VoidTy = Type::getVoidTy(Context);

  std::vector<Type *> ArgsTy({CharPtrTy, Int64Ty, Int64Ty, IO_FILE_PTR_ty});
  FunctionType *FT = FunctionType::get(Int64Ty, ArgsTy, false);
  // Get or insert the fwrite function declaration
  FunctionCallee FwriteFn = M.getOrInsertFunction("fwrite", FT);

  Value *const_fwrite=FwriteFn.getCallee();
    Function *func_fwrite=cast<Function>(const_fwrite);

    Value *const4 = ConstantInt::get(M.getContext(), APInt(64, 4));
    Value *const1 = ConstantInt::get(M.getContext(), APInt(64, 1));

      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(bitcastinst);
    firstcall.push_back(const4);
    firstcall.push_back(const1);
   firstcall.push_back(fileload);
    builder.CreateCall(func_fwrite,firstcall,"fwrite");

    //%15 = load i32, i32* %len_source
    Value *load_len_source=builder.CreateLoad(alloca_len_source);
    //%conv19 = sext i32 %15 to i64,
    Value *sextvalue=builder.CreateSExt(load_len_source,Type::getInt64Ty(M.getContext()));
    fileload=builder.CreateLoad(pfilealloca);
    //fwrite第二次调用
    Value *sourceFormat=builder.CreateGlobalStringPtr("source");//创建全局字符串常量
    vector<Value*> secondcall;
    secondcall.push_back(sourceFormat);
    secondcall.push_back(const1);
    secondcall.push_back(sextvalue);
   secondcall.push_back(fileload);
    builder.CreateCall(func_fwrite,secondcall,"fwrite");

    //记录字符串的真实长度，区分wchar_t
    Value *alloc_len_source_content=builder.CreateAlloca(int32type,nullptr,"len_source_content");
    // %arraydecay12 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0,  根据source的变量名进行加载值
    Value *i64zero = ConstantInt::get(M.getContext(), APInt(64, 0));
	Value *indices[2] = {i64zero, i64zero};
    Value *sourcevalue_alloca=varname_allocainst_map[srcname];
    Value *ibgep_sourcevalue=builder.CreateInBoundsGEP(sourcevalue_alloca, ArrayRef<Value *>(indices, 2));
	//创建strlen函数到调用
	 FunctionCallee fun_strlen=M.getOrInsertFunction("strlen",
        Type::getInt64Ty(M.getContext()),
        Type::getInt8PtrTy(M.getContext())
        );
    Value *const_strlen=fun_strlen.getCallee();
    Function *func_strlen=cast<Function>(const_strlen);
      vector<Value*> strlen_firstcall;//第一次调用
    strlen_firstcall.push_back(ibgep_sourcevalue);
    Value *strlencall=builder.CreateCall(func_strlen,strlen_firstcall,"strlen");
    //%add = add i64 %call21, 1
    Value *addinst=builder.CreateAdd(strlencall,const1);
    //%add = add i64 %call21, 1,
    Value *tuncvar=builder.CreateTrunc(addinst,Type::getInt32Ty(M.getContext()));
    //store i32 %conv22, i32* %len_source_content,
    builder.CreateStore(tuncvar,alloc_len_source_content);
    //%18 = bitcast i32* %len_source_content to i8*, 
    bitcastinst=builder.CreateBitCast(alloc_len_source_content, Type::getInt8PtrTy(M.getContext()), "");
    fileload=builder.CreateLoad(pfilealloca);
    //fwrite第三次调用
    vector<Value*> thirddcall;
    thirddcall.push_back(bitcastinst);
    thirddcall.push_back(const4);
    thirddcall.push_back(const1);
   thirddcall.push_back(fileload);
    builder.CreateCall(func_fwrite,thirddcall,"fwrite");

    //%arraydecay16 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0,
    ibgep_sourcevalue=builder.CreateInBoundsGEP(sourcevalue_alloca, ArrayRef<Value *>(indices, 2));
    //%21 = load i32, i32* %len_source_content
    Value* load_len_source_content=builder.CreateLoad(alloc_len_source_content);
    //%conv24 = sext i32 %21 to i64, 
    sextvalue=builder.CreateSExt(load_len_source_content,Type::getInt64Ty(M.getContext()));
    fileload=builder.CreateLoad(pfilealloca);

    //fwrite第四次调用

    vector<Value*> fourthcall;
    fourthcall.push_back(ibgep_sourcevalue);
    if (srctype=="wchar_t")
    	fourthcall.push_back(const4);
    else
    	fourthcall.push_back(const1);
    fourthcall.push_back(sextvalue);
   fourthcall.push_back(fileload);
    builder.CreateCall(func_fwrite,fourthcall,"fwrite");
	

    //关闭文件
    FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                        Type::getInt32Ty(M.getContext()),
                                                IO_FILE_PTR_ty);
    Value* const_fclose =funcall2.getCallee();
    Function *func_fclose = cast<Function>(const_fclose);
    Value* fw_load = builder.CreateLoad(pfilealloca);
    builder.CreateCall(func_fclose, fw_load);


}


void sliver::RAWSource_INSTRUMENT::instrument_sink_charptr(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	
	//%7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !141
	Value *ptrValue_alloca=varname_allocainst_map[sinkname+"_sink"];
	Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
	// // %20 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad_data_0.addr
	Value *sinkalloca=varname_allocainst_map[sinkname];
	Value *sinkload=builder.CreateLoad(sinkalloca);
	
	// %call25 = call i32 @strcmp(i8* %19, i8* %20) #8, !dbg

		FunctionCallee fun_strcmp=M.getOrInsertFunction("strcmp",
			Type::getInt32Ty(M.getContext()),
			Type::getInt8PtrTy(M.getContext()),
			Type::getInt8PtrTy(M.getContext()) 
			);
Value *const_strcmp=fun_strcmp.getCallee();
Function *func_strcmp=cast<Function>(const_strcmp);
  vector<Value*> firstcall;//第一次调用
firstcall.push_back(loadvalue);
firstcall.push_back(sinkload);
Value *strcmpcall=builder.CreateCall(func_strcmp,firstcall,"strcmp");
// //%cmp26 = icmp ne i32 %call25, 0, !dbg !91
Value *i32zero = ConstantInt::get(M.getContext(), APInt(32, 0));
Value *cmpvalue=builder.CreateICmpNE(strcmpcall,i32zero);
// br i1 %cmp26, label %if.then28, label %if.end29, !dbg !92
Instruction *ThenTerm = nullptr;
Instruction *ElseTerm = nullptr;
SplitBlockAndInsertIfThenElse(cmpvalue,inst,&ThenTerm,&ElseTerm,nullptr);
// BasicBlock *ThenBlock = ThenTerm->getParent();
// BasicBlock *ElseBlock = ElseTerm->getParent();
// BasicBlock *MergeBlock = inst->getParent();
  
//    ThenBlock->setName("if.true.direct_targ");
//    ElseBlock->setName("if.false.orig_indirect");
//    MergeBlock->setName("if.end.icp");
  builder.SetInsertPoint(ThenTerm);
   //call void @exit(i32 1) #9, !dbg !93
   FunctionCallee fun_exit=M.getOrInsertFunction("exit",
			Type::getVoidTy(M.getContext()),
			Type::getInt32Ty(M.getContext())
			);
Value *const_exit=fun_exit.getCallee();
Function *func_exit=cast<Function>(const_exit);
vector<Value*> exitcall;//第一次调用
Value *i32one = ConstantInt::get(M.getContext(), APInt(32, 1));
exitcall.push_back(i32one);
builder.CreateCall(func_exit,exitcall);
builder.CreateUnreachable ();
ThenTerm->eraseFromParent();
  //unreachable, !dbg !93
}

void sliver::RAWSource_INSTRUMENT::instrument_sink_basic(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	
	//%7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0_sink.addr,
	Value *ptrValue_alloca=varname_allocainst_map[sinkname+"_sink"];
	Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
	// // %20 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_fprintf_52_bad_data_0.addr
	Value *sinkalloca=varname_allocainst_map[sinkname];
	Value *sinkload=builder.CreateLoad(sinkalloca);
	
// //%cmp4 = icmp ne i32 %7, %8, !dbg !48
Value *cmpvalue=builder.CreateICmpNE(loadvalue,sinkload);
// br i1 %cmp4, label %if.then5, label %if.end6, !dbg !49
Instruction *ThenTerm = nullptr;
Instruction *ElseTerm = nullptr;
SplitBlockAndInsertIfThenElse(cmpvalue,inst,&ThenTerm,&ElseTerm,nullptr);
// BasicBlock *ThenBlock = ThenTerm->getParent();
// BasicBlock *ElseBlock = ElseTerm->getParent();
// BasicBlock *MergeBlock = inst->getParent();
  
//    ThenBlock->setName("if.true.direct_targ");
//    ElseBlock->setName("if.false.orig_indirect");
//    MergeBlock->setName("if.end.icp");
  builder.SetInsertPoint(ThenTerm);
   //call void @exit(i32 1) #9, !dbg !93
   FunctionCallee fun_exit=M.getOrInsertFunction("exit",
			Type::getVoidTy(M.getContext()),
			Type::getInt32Ty(M.getContext())
			);
Value *const_exit=fun_exit.getCallee();
Function *func_exit=cast<Function>(const_exit);
vector<Value*> exitcall;//第一次调用
Value *i32one = ConstantInt::get(M.getContext(), APInt(32, 1));
exitcall.push_back(i32one);
builder.CreateCall(func_exit,exitcall);
builder.CreateUnreachable ();
ThenTerm->eraseFromParent();
  //unreachable, !dbg !93
}

void sliver::RAWSource_INSTRUMENT::instrument_entry_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	//%_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0_copy = alloca i32,
	Type* I = Type::getInt32Ty(M.getContext());
	Value *allocval = builder.CreateAlloca(I,nullptr,srcname+"_buff");
	varname_allocainst_map.insert(make_pair(srcname+"_buff",dyn_cast<Instruction>(allocval)));
	//%0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0.addr, align 4, !dbg !17
		Value *ptrValue_alloca=varname_allocainst_map[srcname];
		Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
		// store i32 %0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0_copy, align 4, !dbg !16
		builder.CreateStore(loadvalue,allocval);

}

// void sliver::RAWSource_INSTRUMENT::instrument_source_basic_fprintf(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
// {
// //返回FILE *fp
//     Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
// 	IRBuilder<> builder(M.getContext());
// 	builder.SetInsertPoint(inst);
	
// 	//%7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !141
// 	Value *ptrValue_alloca=varname_allocainst_map[srcname];
// 	Value *loadvalue=builder.CreateLoad(ptrValue_alloca);

// 	//%3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !105
// 	Value *fileload=builder.CreateLoad(pfilealloca);
// 	Value *sourceFormat=builder.CreateGlobalStringPtr("source:%d\n");//创建全局字符串常量
// // 	// %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %4), !dbg !107
//  Type* ArgsTy[] = {
//     IO_FILE_PTR_ty,
//     sourceFormat->getType()
   
//   };
//     FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
//                                 FunctionType::get(Type::getInt32Ty(M.getContext()),ArgsTy,true));
// 	// FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
//  //                                Type::getInt32Ty(M.getContext()),
//  //                                IO_FILE_PTR_ty,
//  //                                sourceFormat->getType(),
//  //                                Type::getInt32Ty(M.getContext()));
//     Value *const_fprintf=fun_fprintf.getCallee();
//     Function *func_fprintf=cast<Function>(const_fprintf);
//       vector<Value*> firstcall;//第一次调用
//     firstcall.push_back(fileload);
//     firstcall.push_back(sourceFormat);
//     firstcall.push_back(loadvalue);
//     builder.CreateCall(func_fprintf,firstcall,"fprintf");

//     //关闭文件
//     FunctionCallee funcall2= M.getOrInsertFunction("fclose",
//                         Type::getInt32Ty(M.getContext()),
//                                                 IO_FILE_PTR_ty);
//     Value* const_fclose =funcall2.getCallee();
//     Function *func_fclose = cast<Function>(const_fclose);
//     Value* fw_load = builder.CreateLoad(pfilealloca);
//     builder.CreateCall(func_fclose, fw_load);

// }

void sliver::RAWSource_INSTRUMENT::instrument_source_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
//返回FILE *fp
    Instruction *pfilealloca= insertOnMainEntryBlock(*(inst->getParent()), M,inst);//fopen
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);

//%len_sink = alloca i32
    Type* int32type = Type::getInt32Ty(M.getContext());
    Value *alloca_len_source = builder.CreateAlloca(int32type,nullptr,"len_source");
    Value *const6_32 = ConstantInt::get(M.getContext(), APInt(32, 6));
    //store i32 6, i32* %len_source, align 4
    builder.CreateStore(const6_32,alloca_len_source);
    //%13 = bitcast i32* %len_source to i8*,
    Value *bitcastinst = builder.CreateBitCast(alloca_len_source, Type::getInt8PtrTy(M.getContext()), "");
    //%14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp,
    Value *fileload=builder.CreateLoad(pfilealloca);

    //创建fwrite函数
    Type *Int64Ty = Type::getInt64Ty(M.getContext());
  Type *CharPtrTy = Type::getInt8PtrTy(M.getContext());

  std::vector<Type *> ArgsTy({CharPtrTy, Int64Ty, Int64Ty, IO_FILE_PTR_ty});
  FunctionType *FT = FunctionType::get(Int64Ty, ArgsTy, false);
  // Get or insert the fwrite function declaration
  FunctionCallee FwriteFn = M.getOrInsertFunction("fwrite", FT);

  Value *const_fwrite=FwriteFn.getCallee();
    Function *func_fwrite=cast<Function>(const_fwrite);

    Value *const1 = ConstantInt::get(M.getContext(), APInt(64, 1));
    Value *const4 = ConstantInt::get(M.getContext(), APInt(64, 4));

      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(bitcastinst);
    firstcall.push_back(const4);
    firstcall.push_back(const1);
   firstcall.push_back(fileload);
    builder.CreateCall(func_fwrite,firstcall,"fwrite");

    //%15 = load i32, i32* %len_source
    Value *load_len_source=builder.CreateLoad(alloca_len_source);
    //%conv19 = sext i32 %15 to i64,
    Value *sextvalue=builder.CreateSExt(load_len_source,Type::getInt64Ty(M.getContext()));
    fileload=builder.CreateLoad(pfilealloca);
    //fwrite第二次调用
    Value *sourceFormat=builder.CreateGlobalStringPtr("source");//创建全局字符串常量
    vector<Value*> secondcall;
    secondcall.push_back(sourceFormat);
    secondcall.push_back(const1);
    secondcall.push_back(sextvalue);
   secondcall.push_back(fileload);
    builder.CreateCall(func_fwrite,secondcall,"fwrite");

    Value *source_alloca=varname_allocainst_map[srcname];
	bitcastinst=builder.CreateBitCast(source_alloca, Type::getInt8PtrTy(M.getContext()), "");

    vector<Value*> thirddcall;
    thirddcall.push_back(bitcastinst);
    thirddcall.push_back(const4);
    thirddcall.push_back(const1);
   thirddcall.push_back(fileload);
    builder.CreateCall(func_fwrite,thirddcall,"fwrite");

    //关闭文件
    FunctionCallee funcall2= M.getOrInsertFunction("fclose",
                        Type::getInt32Ty(M.getContext()),
                                                IO_FILE_PTR_ty);
    Value* const_fclose =funcall2.getCallee();
    Function *func_fclose = cast<Function>(const_fclose);
    Value* fw_load = builder.CreateLoad(pfilealloca);
    builder.CreateCall(func_fclose, fw_load);

}

void sliver::RAWSource_INSTRUMENT::parse_in_out_xml(string xmlfilename)
{
	 const char* xmlPath=xmlfilename.c_str();
    XMLDocument doc;
    XMLElement * root ;
    ifstream fin(xmlPath);
    if(fin)
    {
        XMLError error = doc.LoadFile(xmlPath);
        if (error != XMLError::XML_SUCCESS)
            return;

        root = doc.RootElement();
        XMLElement* current;
        current = root->FirstChildElement("in_vars");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	srcname=curr->Attribute("rawname");
        	srckind=curr->Attribute("kind");
        	srctype=curr->Attribute("type");
        	break; 
        }
        current=root->FirstChildElement("out_vars");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	sinkname=curr->Attribute("name");
        	sinkkind=curr->Attribute("kind");
        	sinktype=curr->Attribute("type");
        	break; 
        }
        current=root->FirstChildElement("srcfun");
        srcfunname=current->Attribute("funname");
        current=root->FirstChildElement("in_funname");
        instfunname=current->Attribute("value");
        current=root->FirstChildElement("in_line");
        srcline=atoi(current->Attribute("value"));
        current=root->FirstChildElement("out_line");
        sinkline=atoi(current->Attribute("value"));
        
    }
    else
    {
        errs()<<xmlPath<<" is not existens\n";
        return;
    }
}

bool sliver::RAWSource_INSTRUMENT::runOnModule(Module &M) 
{
	/**
	解析in_out.xml，获得source，sink行号，获得source的变量的类型sink变量的类型
	CWE134的dim是100
	cwe121的dim是14
	CWE606的dim是100

	*/
     string xmlfilename;
     string stru_mem_xml="BasicBlock_sum_inst.xml";
     
    for(auto &e : getxmlfilename) 
    {
        string s(1,e);
        xmlfilename.append(s);         
    }
    errs()<<M.getName().str()<<"\n";
   	modulename=M.getName().str();
    std::vector<string> funnameset;
    //判断模块中有无FILE结构体
    LLVMContextImpl* C = M.getContext().pImpl;
    if (StructType *filetype= C->NamedStructTypes.lookup("struct._IO_FILE"))
    {
        IO_FILE_ty=filetype;
    }else
    {
        IO_FILE_ty = StructType::create(M.getContext(), "struct._IO_FILE");
    }
	IO_FILE_PTR_ty = PointerType::getUnqual(IO_FILE_ty);
    //解析xml文件
    //获得行号，函数名，参数列表
    
   parse_in_out_xml(xmlfilename);


    std::map<string,Instruction*> varname_allocainst_map;

    for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) //函数
            {
                string fun=F->getName().str();
                errs()<<instfunname<<"\n";
                if (fun!=instfunname)

                	continue;
                errs()<<instfunname<<"\n";
                bool isentryinst=false;
                for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
                {
                    for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                    {
                        Instruction *inst=&*ins_iter;
                        string opcodename=inst->getOpcodeName();

                        	/**
                        	 * 将alloca分配的变量保存在map中，方便之后读取
                        	 * */

                        	if (opcodename=="alloca")
                        	{
                        		string instname=strip_varname(inst->getName().str());

                        		varname_allocainst_map.insert(make_pair(instname,inst));
                        	}
                        
                        // """"找到插装位置并插装source""

                        unsigned Line;
                        if (DILocation *Loc = inst->getDebugLoc())
                        {                                                    
                            Line = Loc->getLine();
                        }
                        if (Line==srcline && opcodename=="call" && dyn_cast<CallInst>(inst)->getCalledFunction()->getName().str().find(srcfunname)!=string::npos)
                        {
                        	errs()<<dyn_cast<CallInst>(inst)->getCalledFunction()->getName().str()<<"\n";
                        	errs()<<"inst location\n";
                        	errs()<<srcfunname<<"\n";
                        	Instruction *instloc;
                        	if (srcfunname=="getenv")
                        		if (modulename.find("_wchar_t")!=string::npos)
                        			instloc=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction()->getNextNonDebugInstruction();
                        		else
                        			instloc=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction();
                        	else
								instloc=inst->getNextNonDebugInstruction ();
							errs()<<*inst<<"\n";
							errs()<<*instloc<<"\n";
                        	if (srckind=="one_ptr" && (srctype=="char" || srctype=="wchar_t" || srctype=="uchar"))
                        	instrument_source_charptr(M,instloc,srcname,varname_allocainst_map);
                        	else if(srckind=="one_arr" && (srctype=="char" || srctype=="wchar_t"))
                        		instrument_source_chararr(M,instloc,srcname,varname_allocainst_map);
                        	else if(srckind=="basic")
                        		instrument_source_basic(M,instloc,srcname,varname_allocainst_map);
                        	break;
                        	issrcinst=true;
                        }
                    }
                    if (issrcinst)
                    	break;
                }  

                // for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
                // {
                //     for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                //     {
                //         Instruction *inst=&*ins_iter;
                        
                //         unsigned Line;
                //         if (DILocation *Loc = inst->getDebugLoc())
                //         {                                                    
                //             Line = Loc->getLine();
                //         }
                        

                //         // //"""插装sink"""
                //         if (Line==sinkline)
                //         {
                //         	if ((sinkkind=="one_ptr"||sinkkind=="one_arr") && sinktype=="char")
                //         	instrument_sink_charptr(M,inst,sinkname,varname_allocainst_map);
                //         	else if (sinkkind=="basic")
                //         		instrument_sink_basic(M,inst,sinkname,varname_allocainst_map);
                //         	issinkinst=true;
                //         	break;
                //         }

                //     }
                //     if (issinkinst)
                //     	break;
                // }     
                
            }
	
	return false;
}
			
	

char sliver::RAWSource_INSTRUMENT::ID = 0;
static RegisterPass<sliver::RAWSource_INSTRUMENT> X("src-inst", "proprecess Analyse",
	false, false);
