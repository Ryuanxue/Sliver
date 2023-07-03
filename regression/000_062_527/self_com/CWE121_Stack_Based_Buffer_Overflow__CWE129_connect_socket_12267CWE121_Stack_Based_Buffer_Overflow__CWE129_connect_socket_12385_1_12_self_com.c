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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12267CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_12_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_goodB2G_inputBuffer_01;
	char _goodB2G_inputBuffer_0arr1[16];
	_goodB2G_inputBuffer_01 = _goodB2G_inputBuffer_0arr1;
	char *_goodB2G_inputBuffer_02;
	char _goodB2G_inputBuffer_0arr2[16];
	_goodB2G_inputBuffer_02 = _goodB2G_inputBuffer_0arr2;
	memcpy(_goodB2G_inputBuffer_0arr2,_goodB2G_inputBuffer_0arr1,16);
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12267CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_12(_goodB2G_inputBuffer_01,opsink1);
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12267CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12385_1_12(_goodB2G_inputBuffer_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
