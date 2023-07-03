#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int GLOBAL_CONST_FIVE;

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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13195_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int GLOBAL_CONST_FIVE1;
	int GLOBAL_CONST_FIVE2;
	GLOBAL_CONST_FIVE2 = GLOBAL_CONST_FIVE1;
	char *_goodB2G2_inputBuffer_01;
	char _goodB2G2_inputBuffer_0arr1[16];
	_goodB2G2_inputBuffer_01 = _goodB2G2_inputBuffer_0arr1;
	char *_goodB2G2_inputBuffer_02;
	char _goodB2G2_inputBuffer_0arr2[16];
	_goodB2G2_inputBuffer_02 = _goodB2G2_inputBuffer_0arr2;
	memcpy(_goodB2G2_inputBuffer_0arr2,_goodB2G2_inputBuffer_0arr1,16);
	GLOBAL_CONST_FIVE = GLOBAL_CONST_FIVE1;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13195_1(_goodB2G2_inputBuffer_01,opsink1);
	GLOBAL_CONST_FIVE = GLOBAL_CONST_FIVE2;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_13195_1(_goodB2G2_inputBuffer_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
