#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int GLOBAL_CONST_TRUE;

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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09272CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09303_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int GLOBAL_CONST_TRUE1;
	int GLOBAL_CONST_TRUE2;
	GLOBAL_CONST_TRUE2 = GLOBAL_CONST_TRUE1;
	char *_goodB2G2_inputBuffer_01;
	char _goodB2G2_inputBuffer_0arr1[16];
	_goodB2G2_inputBuffer_01 = _goodB2G2_inputBuffer_0arr1;
	char *_goodB2G2_inputBuffer_02;
	char _goodB2G2_inputBuffer_0arr2[16];
	_goodB2G2_inputBuffer_02 = _goodB2G2_inputBuffer_0arr2;
	memcpy(_goodB2G2_inputBuffer_0arr2,_goodB2G2_inputBuffer_0arr1,16);
	GLOBAL_CONST_TRUE = GLOBAL_CONST_TRUE1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09272CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09303_1(_goodB2G2_inputBuffer_01,opsink1);
	GLOBAL_CONST_TRUE = GLOBAL_CONST_TRUE2;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09272CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_09303_1(_goodB2G2_inputBuffer_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
