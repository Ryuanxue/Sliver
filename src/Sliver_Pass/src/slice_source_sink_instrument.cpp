#include "slice_source_sink_instrument.hh"
static cl::opt<std::string> getxmlfilename("in-xml-slice", cl::desc("Specify xml filename for mypass"), cl::value_desc("xml-filename"));

Instruction* sliver::SLICE_INSTRUMENT::insertOnMainEntryBlock(BasicBlock &F, Module &M,Instruction *in) 
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

       


template <class T>
int sliver::SLICE_INSTRUMENT::get_Aggre_size(T *dit)
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

       

string sliver::SLICE_INSTRUMENT::strip_varname(string str)
{
    size_t pos=0;
    pos = str.find(".");
    if (pos == string::npos)
        return str;
    else
        return str.substr(0,pos);
}


void sliver::SLICE_INSTRUMENT::instrument_entry_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	//%_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff = alloca [14 x i8]
	
		// %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #8, !dbg !77

    if (modulename.find("_wchar_t")==string::npos)
    {
        Type* I = IntegerType::getInt8Ty(M.getContext());
        ArrayType* arrayType ;
        string subs("CWE121_");
        if (srcname.find(subs)!=string::npos)
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
    else
    {
        Type* I = IntegerType::getInt32Ty(M.getContext());
        ArrayType* arrayType ;
        string subs("CWE121_");
        if (srcname.find(subs)!=string::npos)
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

        //     FunctionCallee fun_fprintf=M.getOrInsertFunction("fprintf",
        //                             FunctionType::get(Type::getInt32Ty(M.getContext()),ArgsTy,true));
        //                             // Type::getInt32Ty(M.getContext()),
        //                             // IO_FILE_PTR_ty,
        //                             // sourceFormat->getType(),
        //                             // loadvalue->getType());
        // Value *const_fprintf=fun_fprintf.getCallee();
        // Function *func_fprintf=cast<Function>(const_fprintf);
        //   vector<Value*> firstcall;//第一次调用
        // firstcall.push_back(fileload);
        // firstcall.push_back(sourceFormat);
        // firstcall.push_back(loadvalue);
        // builder.CreateCall(func_fprintf,firstcall,"fprintf");

            Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
    FunctionCallee fun_wcscpy=M.getOrInsertFunction("wcscpy",
        // FunctionType::get(Type::getInt32Ty(M.getContext()),true));
                Type::getInt32PtrTy(M.getContext()),
                Type::getInt32PtrTy(M.getContext()),
                Type::getInt32PtrTy(M.getContext()) 
                );
    Value *const_wcscpy=fun_wcscpy.getCallee();
    Function *func_wcscpy=dyn_cast<Function>(const_wcscpy);
      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(arraydecayvalue);
    firstcall.push_back(loadvalue);
    builder.CreateCall(func_wcscpy,firstcall,"wcscpy");
    }




}

void sliver::SLICE_INSTRUMENT::instrument_source_charptr(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	errs()<<"slice_source instrument\n";
    if (modulename.find("_wchar_t")==string::npos)
    {
        Instruction *preinst=inst->getPrevNonDebugInstruction();
    //%7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !141
    Value *ptrValue_alloca=varname_allocainst_map[srcname];
    Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
//  //%arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff, i64 0, i64 0,
    Value *i64zero = ConstantInt::get(M.getContext(), APInt(64, 0));
    Value *indices[2] = {i64zero, i64zero};
    Value *allocval=varname_allocainst_map[srcname+"_buff"];
    Value *arraydecayvalue=builder.CreateInBoundsGEP(allocval, ArrayRef<Value *>(indices, 2));
//  // %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #8, !dbg !77

    FunctionCallee fun_strcpy=M.getOrInsertFunction("strcpy",
        Type::getInt8PtrTy(M.getContext()),
        Type::getInt8PtrTy(M.getContext()),
        Type::getInt8PtrTy(M.getContext()) 
        );
    Value *const_strcpy=fun_strcpy.getCallee();
    Function *func_strcpy=cast<Function>(const_strcpy);
      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(loadvalue);
    firstcall.push_back(arraydecayvalue);
    builder.CreateCall(func_strcpy,firstcall,"strcpy");
    if (srcfunname=="recv")
    {
        Value *onceload=builder.CreateLoad(ptrValue_alloca);
        FunctionCallee fun_strlen=M.getOrInsertFunction("strlen",
        Type::getInt64Ty(M.getContext()),
        Type::getInt8PtrTy(M.getContext())
        );
    Value *const_strlen=fun_strlen.getCallee();
    Function *func_strlen=cast<Function>(const_strlen);
      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(onceload);
    Value *strlencall=builder.CreateCall(func_strlen,firstcall,"strlen");
    Value *tuncvar=builder.CreateTrunc(strlencall,Type::getInt32Ty(M.getContext()));
    Value *callretresult=preinst->getOperand(1);
    builder.CreateStore(tuncvar,callretresult);
    }

    }else
    {
        Instruction *preinst=inst->getPrevNonDebugInstruction();
    //%7 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0.addr, align 8, !dbg !141
    Value *ptrValue_alloca=varname_allocainst_map[srcname];
    Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
//  //%arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01_bad_inputBuffer_0_buff, i64 0, i64 0,
    Value *i64zero = ConstantInt::get(M.getContext(), APInt(64, 0));
    Value *indices[2] = {i64zero, i64zero};
    Value *allocval=varname_allocainst_map[srcname+"_buff"];
    Value *arraydecayvalue=builder.CreateInBoundsGEP(allocval, ArrayRef<Value *>(indices, 2));
//  // %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #8, !dbg !77

    FunctionCallee fun_strcpy=M.getOrInsertFunction("wcscpy",
        // FunctionType::get(Type::getInt32Ty(M.getContext()),true));
        Type::getInt32PtrTy(M.getContext()),
        Type::getInt32PtrTy(M.getContext()),
        Type::getInt32PtrTy(M.getContext()) 
        );
    Value *const_strcpy=fun_strcpy.getCallee();
    Function *func_strcpy=cast<Function>(const_strcpy);
      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(loadvalue);
    firstcall.push_back(arraydecayvalue);
    builder.CreateCall(func_strcpy,firstcall,"wcscpy");
    if (srcfunname=="recv")
    {
        Value *onceload=builder.CreateLoad(ptrValue_alloca);
        FunctionCallee fun_strlen=M.getOrInsertFunction("wcslen",
        Type::getInt64Ty(M.getContext()),
        Type::getInt32PtrTy(M.getContext())
        );
    Value *const_strlen=fun_strlen.getCallee();
    Function *func_strlen=cast<Function>(const_strlen);
      vector<Value*> firstcall;//第一次调用
    firstcall.push_back(onceload);
    Value *strlencall=builder.CreateCall(func_strlen,firstcall,"wcslen");
    Value *tuncvar=builder.CreateTrunc(strlencall,Type::getInt32Ty(M.getContext()));
    Value *callretresult=preinst->getOperand(1);
    builder.CreateStore(tuncvar,callretresult);
    }
}
}


void sliver::SLICE_INSTRUMENT::instrument_sink_charptr(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map)
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
    if (modulename.find("CWE134")!=string::npos)
    {
        Instruction *tempinst=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction();
        if(tempinst)
        if (dyn_cast<CallInst>(tempinst))
            tempinst->eraseFromParent();
    }

}

void sliver::SLICE_INSTRUMENT::instrument_sink_basic(Module &M, Instruction *inst,string sinkname,map<string,Instruction*> &varname_allocainst_map)
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

string subs("CWE121_");
    if (modulename.find(subs)!=string::npos)
    {
     Instruction *storeval=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction()->getNextNonDebugInstruction();
     errs()<<*inst<<"\n";
     errs()<<*storeval<<"\n";
     storeval->eraseFromParent();
    }
  //unreachable, !dbg !93
}

void sliver::SLICE_INSTRUMENT::instrument_entry_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
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

void sliver::SLICE_INSTRUMENT::instrument_source_basic(Module &M, Instruction *inst,string srcname,map<string,Instruction*> &varname_allocainst_map)
{
	IRBuilder<> builder(M.getContext());
	builder.SetInsertPoint(inst);
	//%0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0.addr, align 4, !dbg !17
		Value *ptrValue_alloca=varname_allocainst_map[srcname+"_buff"];
		Value *loadvalue=builder.CreateLoad(ptrValue_alloca);
		// store i32 %0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_05_bad_data_0_copy, align 4, !dbg !16
		Value *allocval=varname_allocainst_map[srcname];
		builder.CreateStore(loadvalue,allocval);

}

void sliver::SLICE_INSTRUMENT::parse_in_out_xml(string xmlfilename)
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
        	srcname=curr->Attribute("newname");
        	srckind=curr->Attribute("kind");
        	srctype=curr->Attribute("type");
        	break; 
        }
        current=root->FirstChildElement("out_vars");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	sinkname=curr->Attribute("newname");
        	sinkkind=curr->Attribute("kind");
        	sinktype=curr->Attribute("type");
        	break; 
        }
        current=root->FirstChildElement("srcfun");
        srcfunname=current->Attribute("funname");
        current=root->FirstChildElement("slicefun");
        instfunname=current->Attribute("funname");
        current=root->FirstChildElement("slice_sourceline");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	srcline=atoi(curr->Attribute("line"));
        	break; 
        }
        current=root->FirstChildElement("slice_sinkline");
        for (XMLElement* curr = current->FirstChildElement(); curr != nullptr; curr = curr->NextSiblingElement())
        {
        	sinkline=atoi(curr->Attribute("line"));
        	break; 
        }
    }
    else
    {
        errs()<<xmlPath<<" is not existens\n";
        return;
    }
}

bool sliver::SLICE_INSTRUMENT::runOnModule(Module &M) 
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
                if (fun!=instfunname)
                	continue;
                bool isentryinst=false;
                for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
                {
                    for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                    {
                        Instruction *inst=&*ins_iter;
                        string bbname=bb_iter->getName().str();
                        string opcodename=inst->getOpcodeName();
                        if (bbname=="entry" && !isentryinst)
                        {
                        	
                        	if(opcodename=="store" && inst->getOperand(0)->getName().str().find(srcname)!=string::npos)
                        	{
                        		if ((srckind=="one_ptr" || srckind=="one_arr") && (srctype=="char" || srctype=="wchar_t"))
                        		instrument_entry_charptr(M,inst->getNextNonDebugInstruction(),srcname,varname_allocainst_map);
                        		else if (srckind=="basic")
                        		{
                        			instrument_entry_basic(M,inst->getNextNonDebugInstruction(),srcname,varname_allocainst_map);
                        		}

                        		isentryinst=true;

                        	}else if (opcodename=="alloca")
                        	{
                        		string instname=strip_varname(inst->getName().str());

                        		varname_allocainst_map.insert(make_pair(instname,inst));
                        	}
                        }


                        // """"插装source""

                        unsigned Line;
                        if (DILocation *Loc = inst->getDebugLoc())
                        {                                                    
                            Line = Loc->getLine();
                        }
                        string tempfunname;
                        if (Line==srcline && opcodename=="call" )
                        {
                        
                        CallInst *callInst=dyn_cast<CallInst>(inst);
                        if (Function *calledFunction = callInst->getCalledFunction()) 
                        {
                            tempfunname=calledFunction->getName().str();
                        }
                        //this prints out the void bitcasted functions
                        else if (Function *voidFunc = dyn_cast<llvm::Function>(callInst->getCalledValue()->stripPointerCasts()))
                         {
                            tempfunname=voidFunc->getName().str();
                        }
                        

                        }
                        if (Line==srcline && opcodename=="call" && tempfunname.find(srcfunname)!=string::npos)
                        {
                        	Function *calledfun=dyn_cast<CallInst>(inst)->getCalledFunction();
                        	if (calledfun)
                        		errs()<<calledfun->getName().str()<<"\n";
                        	Instruction *instloc;
                        	
                        	if(srcfunname=="getenv")
                        		instloc=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction();
                        	else if (srcfunname=="fgets" || srcfunname=="fgetws")
                        	{
                        		Instruction *tempinst=inst->getNextNonDebugInstruction()->getNextNonDebugInstruction();
                        		BasicBlock *basic1=dyn_cast<BranchInst>(tempinst)->getSuccessor(0);
                        		BasicBlock *basic2=dyn_cast<BranchInst>(tempinst)->getSuccessor(1);
                        		instloc=basic1->getFirstNonPHI ();
                        		
                        		instrument_source_charptr(M,instloc,srcname,varname_allocainst_map);
                        		instloc=basic2->getFirstNonPHI();
                        		instrument_source_charptr(M,instloc,srcname,varname_allocainst_map);
                        		issrcinst=true;
                        		break;


                        	}else if (srcfunname=="recv")
                            {
                                instloc=inst->getNextNonDebugInstruction ()->getNextNonDebugInstruction()->getNextNonDebugInstruction();

                            }
                        	else
                        		instloc=inst->getNextNonDebugInstruction ();

                        	if ((srckind=="one_ptr"||srckind=="one_arr") && (srctype=="char" || srctype=="wchar_t"))
                        	instrument_source_charptr(M,instloc,srcname,varname_allocainst_map);
                        	else if(srckind=="basic")
                        		instrument_source_basic(M,instloc,srcname,varname_allocainst_map);
                        	issrcinst=true;
                        }
                    }
                    if (issrcinst)
                    	break;
                }  

                for (auto bb_iter=F->begin();bb_iter!=F->end();++bb_iter)//基本块
                {
                    for (auto ins_iter=bb_iter->begin();ins_iter!=bb_iter->end();++ins_iter)//指令
                    {
                        Instruction *inst=&*ins_iter;
                        
                        unsigned Line;
                        if (DILocation *Loc = inst->getDebugLoc())
                        {                                                    
                            Line = Loc->getLine();
                        }
                        

                        // //"""插装sink"""
                        if (Line==sinkline)
                        {
                        	if ((sinkkind=="one_ptr"||sinkkind=="one_arr") && (sinktype=="char" || sinktype=="wchar_t"))
                        	instrument_sink_charptr(M,inst,sinkname,varname_allocainst_map);
                        	else if (sinkkind=="basic")
                        		instrument_sink_basic(M,inst,sinkname,varname_allocainst_map);
                        	issinkinst=true;
                        	break;
                        }

                    }
                    if (issinkinst)
                    	break;
                }     
                
            }
	
	return false;
}
			
	

char sliver::SLICE_INSTRUMENT::ID = 0;
static RegisterPass<sliver::SLICE_INSTRUMENT> X("slice-inst", "proprecess Analyse",
	false, false);
