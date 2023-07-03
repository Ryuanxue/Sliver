#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int globalTrue;

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

void CWE606_Unchecked_Loop_Condition__char_file_1053CWE606_Unchecked_Loop_Condition__char_file_1072_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int globalTrue1;
	int globalTrue2;
	globalTrue2 = globalTrue1;
	char *_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_01;
	char _CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr1[16];
	_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_01 = _CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr1;
	char *_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_02;
	char _CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr2[16];
	_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_02 = _CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr2;
	memcpy(_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr2,_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_0arr1,16);
	globalTrue = globalTrue1;
	CWE606_Unchecked_Loop_Condition__char_file_1053CWE606_Unchecked_Loop_Condition__char_file_1072_1(_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_01,opsink1);
	globalTrue = globalTrue2;
	CWE606_Unchecked_Loop_Condition__char_file_1053CWE606_Unchecked_Loop_Condition__char_file_1072_1(_CWE606_Unchecked_Loop_Condition__char_file_10_bad_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
