#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>

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

void CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1288_1_2_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_01;
	char _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr1[16];
	_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_01 = _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr1;
	char *_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_02;
	char _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr2[16];
	_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_02 = _CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr2;
	memcpy(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr2,_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0arr1,16);
	CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1288_1_2(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_01,opsink1);
	CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1288_1_2(_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
