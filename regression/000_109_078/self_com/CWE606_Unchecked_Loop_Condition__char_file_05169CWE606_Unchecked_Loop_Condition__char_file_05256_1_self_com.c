#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int staticTrue;

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

void CWE606_Unchecked_Loop_Condition__char_file_05169CWE606_Unchecked_Loop_Condition__char_file_05256_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int staticTrue1;
	int staticTrue2;
	staticTrue2 = staticTrue1;
	char *_goodB2G2_data_01;
	char _goodB2G2_data_0arr1[16];
	_goodB2G2_data_01 = _goodB2G2_data_0arr1;
	char *_goodB2G2_data_02;
	char _goodB2G2_data_0arr2[16];
	_goodB2G2_data_02 = _goodB2G2_data_0arr2;
	memcpy(_goodB2G2_data_0arr2,_goodB2G2_data_0arr1,16);
	staticTrue = staticTrue1;
	CWE606_Unchecked_Loop_Condition__char_file_05169CWE606_Unchecked_Loop_Condition__char_file_05256_1(_goodB2G2_data_01,opsink1);
	staticTrue = staticTrue2;
	CWE606_Unchecked_Loop_Condition__char_file_05169CWE606_Unchecked_Loop_Condition__char_file_05256_1(_goodB2G2_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
