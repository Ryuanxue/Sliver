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

void CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12351_1_2_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_goodB2G_data_01;
	char _goodB2G_data_0arr1[16];
	_goodB2G_data_01 = _goodB2G_data_0arr1;
	char *_goodB2G_data_02;
	char _goodB2G_data_0arr2[16];
	_goodB2G_data_02 = _goodB2G_data_0arr2;
	memcpy(_goodB2G_data_0arr2,_goodB2G_data_0arr1,16);
	CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12351_1_2(_goodB2G_data_01,opsink1);
	CWE606_Unchecked_Loop_Condition__char_connect_socket_12219CWE606_Unchecked_Loop_Condition__char_connect_socket_12351_1_2(_goodB2G_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
