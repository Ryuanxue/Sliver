#include "CFGPass.hh"



bool sliver::CFGPass::isllvm(CallInst *inst){ //此函数判断函数调用指令是否包含llvm，输出的cfg信息中应该去除这些信息
	std::string name;
	Function* called = inst->getCalledFunction();
	if(called){
		name=called->getName().str();

		}
	if(name.compare(0,4,"llvm")==0){
		return 1;
		}else{
			return 0;
		}
}

string&   sliver::CFGPass::replace_all_distinct(string&   str,const   string&   old_value,const   string&   new_value)   
{   
    for(string::size_type   pos(0);   pos!=string::npos;   pos+=new_value.length())   {   
        if(   (pos=str.find(old_value,pos))!=string::npos   )   
            str.replace(pos,old_value.length(),new_value);   
        else   break;   
    }   
    return   str;   
}  
		

bool sliver::CFGPass::runOnFunction(Function &F) {
	string modulename=F.getParent()->getName().str();
	size_t pos;
    while ((pos = modulename.find(".")) != std::string::npos) {
        modulename.replace(pos, 1, "_");
    }
    while ((pos = modulename.find("-")) != std::string::npos) {
        modulename.replace(pos, 1, "_");
    }
	// raw_string_ostream ss(str);
	std::string name= modulename+"_"+F.getName().str() + ".dot";
	
	enum sys::fs::OpenFlags F_None;
	raw_fd_ostream file(name, error, F_None);
	//std::ofstream os;
	//os.open(name.str() + ".dot");
	//if (!os.is_open()){
	//	errs() << "Could not open the " << name << "file\n";
	//	return false;
	//}
	

	file << "digraph \"CFG for'" + modulename+"_"+F.getName() + "\' function\" {\n";
	file<<"\tBB"<<modulename<<"_"<< F.getName().str()<<"_start"<<"[shape=record,label=\"{";
	file<<modulename+"_"+ F.getName().str()<<"_start";
	file << "}\"];\n";
	file << "\tBB" <<modulename+"_"+ F.getName().str()<<"_start"<<"-> "<<modulename+"_"+ F.getName().str()<<"BB"
				<< bbCount << ";\n";
	int fromCountNum;
	int toCountNum;
	for (Function::iterator B_iter = F.begin(); B_iter != F.end(); ++B_iter){
		
		BasicBlock* curBB = &*B_iter;
		std::string name = curBB->getName().str();
		
		if (basicBlockMap.find(curBB) != basicBlockMap.end())
		{
			fromCountNum = basicBlockMap[curBB];
		}
		else
		{
			fromCountNum = bbCount;
			basicBlockMap[curBB] = bbCount++;
		}
		

		file <<"\t"<<modulename+"_"+ F.getName().str()<<"BB" << fromCountNum << " [shape=record, label=\"{";
		file << "BB" << fromCountNum << ":\\l\\l";
		Instruction *pre=&*(curBB->begin());
		int funnum=0;
		for (BasicBlock::iterator I_iter = curBB->begin(); I_iter != curBB->end(); ++I_iter) 
		{
			
			Instruction *I = &*I_iter;
			
			unsigned Line;

          	StringRef File;
          	StringRef Dir;

			if (DILocation *Loc = I->getDebugLoc())
			{
          		Line = Loc->getLine();
          		File = Loc->getFilename();
          		Dir = Loc->getDirectory();
          						
  			}


			if (I==&*(curBB->begin()))
			{
				CallInst *inst = dyn_cast<CallInst>(I);

				if (inst&&!isllvm(inst))

				{
					funnum++;								
          			file << Dir << "/" << File << ":" << Line << "\\l\n";                			
  			  		
  			  		string str;
  			  		raw_string_ostream ss(str);
  			  		ss<<*I_iter;
  			  		string newstr=replace_all_distinct(ss.str(),"\"","");
  			  		newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");
  			  		file << newstr << "\\l\n";
  			  		file << "}\"];\n";						
					pre=&*I_iter;
				}else
				{
					file << Dir << "/" << File << ":" << Line << "\\l\n";               
  			  		// file << *I_iter << "\\l\n";
  			  		string str;
  			  		raw_string_ostream ss(str);
  			  		ss<<*I_iter;
  			  		string newstr=replace_all_distinct(ss.str(),"\"","");
  			  		newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");
  			  		file << newstr << "\\l\n";
  			  		pre=&*I_iter;         			  		
				}

			}else
			{
				CallInst *inst = dyn_cast<CallInst>(pre);

				if (inst&&!isllvm(inst))
				{
					int tempNum;
					
					if(funnum==1||funnum==0)
					{
						tempNum=basicBlockMap[curBB];

					}
					else
					{
						tempNum=bbCount-1;
					}
					file << "\t"<<modulename+"_"+ F.getName().str()<<"BB" << tempNum<< "-> "<<modulename+"_"+ F.getName().str()<<"BB"
					<< bbCount << ";\n";
					file << "\t"<<modulename+"_"+ F.getName().str()<<"BB" << bbCount << " [shape=record, label=\"{";
					file << "BB" << bbCount << ":\\l\\l";
					fromCountNum=bbCount;
					bbCount++;
					CallInst *inst = dyn_cast<CallInst>(I);

					if (inst&&!isllvm(inst))

					{
						funnum++;
      					file << Dir << "/" << File << ":" << Line << "\\l\n";;
			  				// file << *I_iter << "\\l\n";
			  					string str;
  			  		raw_string_ostream ss(str);
			  				ss<<*I_iter;
			  			string newstr=replace_all_distinct(ss.str(),"\"","");
			  			newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");

  			  		file << newstr << "\\l\n";
			  				file << "}\"];\n";
			  				pre=&*I_iter;

					}else
					{
						file << Dir << "/" << File << ":" << Line << "\\l\n";;               
  			  			// file << *I_iter << "\\l\n";
  			  			string str;
  			  		raw_string_ostream ss(str);
  			  			ss<<*I_iter;
  			  			string newstr=replace_all_distinct(ss.str(),"\"","");
  			  			newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");
  			  		file << newstr << "\\l\n";
  			  			pre=&*I_iter;
					}	
				}else
				{
					CallInst *inst = dyn_cast<CallInst>(I);

					if (inst&&!isllvm(inst))
					{
						funnum++;										
      					file << Dir << "/" << File << ":" << Line << "\\l\n";;
			  				// file << *I_iter << "\\l\n";
			  				string str;
  			  		raw_string_ostream ss(str);
			  				ss<<*I_iter;
			  				string newstr=replace_all_distinct(ss.str(),"\"","");
			  				newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");
  			  		file << newstr << "\\l\n";
			  				file << "}\"];\n";
						pre=&*I_iter;
					}else
					{
						file << Dir << "/" << File << ":" << Line << "\\l\n";;	                
      			  		// file << *I_iter << "\\l\n";
      			  		string str;
  			  		raw_string_ostream ss(str);
      			  		ss<<*I_iter;
      			  		string newstr=replace_all_distinct(ss.str(),"\"","");
      			  		newstr=replace_all_distinct(newstr,"{","");
			  			newstr=replace_all_distinct(newstr,"}","");
  			  		file << newstr << "\\l\n";
      			  		pre=&*I_iter;
					}
				}
			}
			
		}
		file << "}\"];\n";
		for (BasicBlock *SuccBB : successors(curBB))
		{
			if (basicBlockMap.find(SuccBB) != basicBlockMap.end())
			{
				toCountNum = basicBlockMap[SuccBB];
			}
			else
			{
				toCountNum = bbCount;
				basicBlockMap[SuccBB] = bbCount++;
			}

			file << "\t"<<modulename+"_"+ F.getName().str()<<"BB" << fromCountNum<< "-> "<<modulename+"_"+ F.getName().str()<<"BB"
				<< toCountNum << ";\n";
		}
	}
	int num=bbCount-1;
	// file << "\t"<<F.getName().str()<<"BB" << num<<"-> BB"<<
	// 			F.getName().str()<<"_end"<< ";\n";

	// file<<"\tBB"<<F.getName().str()<<"_end"<<"[shape=record,label=\"{";
	// 	file<<F.getName().str()<<"_end";
	// 	file << "}\"];\n";
	file << "}\n";
					
	file.close();
	return true;
}



char sliver::CFGPass::ID = 0;
static RegisterPass<sliver::CFGPass> X("CFG", "CFG Pass Analyse",
	false, false);
