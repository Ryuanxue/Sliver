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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4230CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4256_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char *_badSource_inputBuffer_01;
	char _badSource_inputBuffer_0arr1[16];
	_badSource_inputBuffer_01 = _badSource_inputBuffer_0arr1;
	char *_badSource_inputBuffer_02;
	char _badSource_inputBuffer_0arr2[16];
	_badSource_inputBuffer_02 = _badSource_inputBuffer_0arr2;
	memcpy(_badSource_inputBuffer_0arr2,_badSource_inputBuffer_0arr1,16);
	int badSource_return_1;
	int badSource_return_2;
	badSource_return_2 = badSource_return_1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4230CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4256_1(_badSource_inputBuffer_01,badSource_return_1,opsink1);
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4230CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4256_1(_badSource_inputBuffer_02,badSource_return_2,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
