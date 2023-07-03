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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42247_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_goodB2GSource_inputBuffer_01;
	char _goodB2GSource_inputBuffer_0arr1[16];
	_goodB2GSource_inputBuffer_01 = _goodB2GSource_inputBuffer_0arr1;
	char *_goodB2GSource_inputBuffer_02;
	char _goodB2GSource_inputBuffer_0arr2[16];
	_goodB2GSource_inputBuffer_02 = _goodB2GSource_inputBuffer_0arr2;
	memcpy(_goodB2GSource_inputBuffer_0arr2,_goodB2GSource_inputBuffer_0arr1,16);
	int goodB2GSource_return_1;
	int goodB2GSource_return_2;
	goodB2GSource_return_2 = goodB2GSource_return_1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42247_1(_goodB2GSource_inputBuffer_01,goodB2GSource_return_1,opsink1);
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42210CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_42247_1(_goodB2GSource_inputBuffer_02,goodB2GSource_return_2,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
