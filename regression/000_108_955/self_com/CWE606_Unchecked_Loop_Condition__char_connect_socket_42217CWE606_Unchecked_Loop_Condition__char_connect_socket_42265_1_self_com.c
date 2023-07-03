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

void CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42265_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_goodB2G_data_01;
	char _goodB2G_data_0arr1[16];
	_goodB2G_data_01 = _goodB2G_data_0arr1;
	char *_goodB2G_data_02;
	char _goodB2G_data_0arr2[16];
	_goodB2G_data_02 = _goodB2G_data_0arr2;
	memcpy(_goodB2G_data_0arr2,_goodB2G_data_0arr1,16);
	char **goodB2GSource_return_1;
	char *goodB2GSource_return_ptr1;
	goodB2GSource_return_1 = &goodB2GSource_return_ptr1;
	char goodB2GSource_return_arr1[16];
	goodB2GSource_return_ptr1 = goodB2GSource_return_arr1;
	char **goodB2GSource_return_2;
	char *goodB2GSource_return_ptr2;
	goodB2GSource_return_2 = &goodB2GSource_return_ptr2;
	char goodB2GSource_return_arr2[16];
	goodB2GSource_return_ptr2 = goodB2GSource_return_arr2;
	memcpy(goodB2GSource_return_arr2,goodB2GSource_return_arr1,16);
	CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42265_1(_goodB2G_data_01,goodB2GSource_return_1,opsink1);
	CWE606_Unchecked_Loop_Condition__char_connect_socket_42217CWE606_Unchecked_Loop_Condition__char_connect_socket_42265_1(_goodB2G_data_02,goodB2GSource_return_2,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
