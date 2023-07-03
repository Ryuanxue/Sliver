#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int globalTrue;
extern int globalFalse;

int sink_outputarg_0;
int sink_outputarg_copy_0;

void opsink1(int arg0)
{
	sink_outputarg_0=arg0;
}

void opsink2(int arg0)
{
	sink_outputarg_copy_0=arg0;
}

void CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10114_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int globalTrue1;
	int globalTrue2;
	globalTrue2 = globalTrue1;
	int globalFalse1;
	int globalFalse2;
	globalFalse2 = globalFalse1;
	char *_goodB2G1_environment_01;
	char _goodB2G1_environment_0arr1[16];
	_goodB2G1_environment_01 = _goodB2G1_environment_0arr1;
	char *_goodB2G1_environment_02;
	char _goodB2G1_environment_0arr2[16];
	_goodB2G1_environment_02 = _goodB2G1_environment_0arr2;
	memcpy(_goodB2G1_environment_0arr2,_goodB2G1_environment_0arr1,16);
	globalTrue = globalTrue1;
	globalFalse = globalFalse1;
	CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10114_1(_goodB2G1_environment_01,opsink1);
	globalTrue = globalTrue2;
	globalFalse = globalFalse2;
	CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10114_1(_goodB2G1_environment_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
