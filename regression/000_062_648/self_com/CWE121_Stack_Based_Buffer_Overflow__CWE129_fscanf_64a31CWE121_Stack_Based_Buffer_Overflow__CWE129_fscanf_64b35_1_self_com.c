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

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b35_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_01;
	int _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_02;
	_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_02 = _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_01;
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b35_1(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_01,opsink1);
	CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b35_1(_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
