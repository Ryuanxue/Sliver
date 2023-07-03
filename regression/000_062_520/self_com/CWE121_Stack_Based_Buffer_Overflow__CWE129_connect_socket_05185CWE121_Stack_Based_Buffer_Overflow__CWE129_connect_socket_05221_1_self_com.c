#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int staticTrue;
extern int staticFalse;

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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05185CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05221_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int staticTrue1;
	int staticTrue2;
	staticTrue2 = staticTrue1;
	int staticFalse1;
	int staticFalse2;
	staticFalse2 = staticFalse1;
	char *_goodB2G1_inputBuffer_01;
	char _goodB2G1_inputBuffer_0arr1[16];
	_goodB2G1_inputBuffer_01 = _goodB2G1_inputBuffer_0arr1;
	char *_goodB2G1_inputBuffer_02;
	char _goodB2G1_inputBuffer_0arr2[16];
	_goodB2G1_inputBuffer_02 = _goodB2G1_inputBuffer_0arr2;
	memcpy(_goodB2G1_inputBuffer_0arr2,_goodB2G1_inputBuffer_0arr1,16);
	staticTrue = staticTrue1;
	staticFalse = staticFalse1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05185CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05221_1(_goodB2G1_inputBuffer_01,opsink1);
	staticTrue = staticTrue2;
	staticFalse = staticFalse2;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05185CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_05221_1(_goodB2G1_inputBuffer_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
