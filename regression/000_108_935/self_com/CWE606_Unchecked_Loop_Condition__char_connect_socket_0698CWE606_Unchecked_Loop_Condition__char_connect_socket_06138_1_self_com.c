#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int STATIC_CONST_FIVE;

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

void CWE606_Unchecked_Loop_Condition__char_connect_socket_0698CWE606_Unchecked_Loop_Condition__char_connect_socket_06138_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int STATIC_CONST_FIVE1;
	int STATIC_CONST_FIVE2;
	STATIC_CONST_FIVE2 = STATIC_CONST_FIVE1;
	char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_01;
	char _CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr1[16];
	_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_01 = _CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr1;
	char *_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_02;
	char _CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr2[16];
	_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_02 = _CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr2;
	memcpy(_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr2,_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_0arr1,16);
	STATIC_CONST_FIVE = STATIC_CONST_FIVE1;
	CWE606_Unchecked_Loop_Condition__char_connect_socket_0698CWE606_Unchecked_Loop_Condition__char_connect_socket_06138_1(_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_01,opsink1);
	STATIC_CONST_FIVE = STATIC_CONST_FIVE2;
	CWE606_Unchecked_Loop_Condition__char_connect_socket_0698CWE606_Unchecked_Loop_Condition__char_connect_socket_06138_1(_CWE606_Unchecked_Loop_Condition__char_connect_socket_06_bad_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
