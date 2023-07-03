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

void CWE606_Unchecked_Loop_Condition__char_console_32138CWE606_Unchecked_Loop_Condition__char_console_32168_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_goodB2G_data_11;
	char _goodB2G_data_1arr1[16];
	_goodB2G_data_11 = _goodB2G_data_1arr1;
	char *_goodB2G_data_12;
	char _goodB2G_data_1arr2[16];
	_goodB2G_data_12 = _goodB2G_data_1arr2;
	memcpy(_goodB2G_data_1arr2,_goodB2G_data_1arr1,16);
	CWE606_Unchecked_Loop_Condition__char_console_32138CWE606_Unchecked_Loop_Condition__char_console_32168_1(_goodB2G_data_11,opsink1);
	CWE606_Unchecked_Loop_Condition__char_console_32138CWE606_Unchecked_Loop_Condition__char_console_32168_1(_goodB2G_data_12,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
