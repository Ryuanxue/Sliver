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

void CWE606_Unchecked_Loop_Condition__char_console_4238CWE606_Unchecked_Loop_Condition__char_console_4271_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_01;
	char _CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr1[16];
	_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_01 = _CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr1;
	char *_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_02;
	char _CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr2[16];
	_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_02 = _CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr2;
	memcpy(_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr2,_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0arr1,16);
	char **badSource_return_1;
	char *badSource_return_ptr1;
	badSource_return_1 = &badSource_return_ptr1;
	char badSource_return_arr1[16];
	badSource_return_ptr1 = badSource_return_arr1;
	char **badSource_return_2;
	char *badSource_return_ptr2;
	badSource_return_2 = &badSource_return_ptr2;
	char badSource_return_arr2[16];
	badSource_return_ptr2 = badSource_return_arr2;
	memcpy(badSource_return_arr2,badSource_return_arr1,16);
	CWE606_Unchecked_Loop_Condition__char_console_4238CWE606_Unchecked_Loop_Condition__char_console_4271_1(_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_01,badSource_return_1,opsink1);
	CWE606_Unchecked_Loop_Condition__char_console_4238CWE606_Unchecked_Loop_Condition__char_console_4271_1(_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_02,badSource_return_2,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
