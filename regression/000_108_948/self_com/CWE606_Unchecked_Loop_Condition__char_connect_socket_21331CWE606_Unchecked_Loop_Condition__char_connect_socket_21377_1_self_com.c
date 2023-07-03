#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int goodB2G2Static;
extern int goodG2BStatic;

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

void CWE606_Unchecked_Loop_Condition__char_connect_socket_21331CWE606_Unchecked_Loop_Condition__char_connect_socket_21377_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int goodB2G2Static1;
	int goodB2G2Static2;
	goodB2G2Static2 = goodB2G2Static1;
	int goodG2BStatic1;
	int goodG2BStatic2;
	goodG2BStatic2 = goodG2BStatic1;
	char *_goodB2G2_data_01;
	char _goodB2G2_data_0arr1[16];
	_goodB2G2_data_01 = _goodB2G2_data_0arr1;
	char *_goodB2G2_data_02;
	char _goodB2G2_data_0arr2[16];
	_goodB2G2_data_02 = _goodB2G2_data_0arr2;
	memcpy(_goodB2G2_data_0arr2,_goodB2G2_data_0arr1,16);
	goodB2G2Static = goodB2G2Static1;
	goodG2BStatic = goodG2BStatic1;
	CWE606_Unchecked_Loop_Condition__char_connect_socket_21331CWE606_Unchecked_Loop_Condition__char_connect_socket_21377_1(_goodB2G2_data_01,opsink1);
	goodB2G2Static = goodB2G2Static2;
	goodG2BStatic = goodG2BStatic2;
	CWE606_Unchecked_Loop_Condition__char_connect_socket_21331CWE606_Unchecked_Loop_Condition__char_connect_socket_21377_1(_goodB2G2_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
