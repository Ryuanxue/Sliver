#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int badStatic;

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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2162CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2139_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int badStatic1;
	int badStatic2;
	badStatic2 = badStatic1;
	char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_01;
	char _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr1[16];
	_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_01 = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr1;
	char *_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_02;
	char _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr2[16];
	_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_02 = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr2;
	memcpy(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr2,_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_0arr1,16);
	badStatic = badStatic1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2162CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2139_1(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_01,opsink1);
	badStatic = badStatic2;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2162CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_2139_1(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad_inputBuffer_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}