#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>

char* sink_outputarg_0;
char* sink_outputarg_copy_0;

void opsink1(char* arg0)
{
	memcpy(sink_outputarg_0,arg0,strlen(arg0)+1);
}

void opsink2(char* arg0)
{
	memcpy(sink_outputarg_copy_0,arg0,strlen(arg0)+1);
}

void CWE134_Uncontrolled_Format_String__char_environment_vprintf_4241CWE134_Uncontrolled_Format_String__char_environment_vprintf_4269_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	char *_badSource_environment_01;
	char _badSource_environment_0arr1[16];
	_badSource_environment_01 = _badSource_environment_0arr1;
	char *_badSource_environment_02;
	char _badSource_environment_0arr2[16];
	_badSource_environment_02 = _badSource_environment_0arr2;
	memcpy(_badSource_environment_0arr2,_badSource_environment_0arr1,16);
	char **badSource_return_1;
	char *badSource_return_ptr1;
	badSource_return_1 = &badSource_return_ptr1;
	char badSource_return_arr1[16];
	badSource_return_ptr1 = badSource_return_arr1;
	char **badSource_return_2;
	char *badSource_return_ptr2;
	badSource_return_2 = &badSource_return_ptr2;
	char badSource_return_arr2[16];
	badSource_return_ptr2 = badSource_return_arr2;
	memcpy(badSource_return_arr2,badSource_return_arr1,16);
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_4241CWE134_Uncontrolled_Format_String__char_environment_vprintf_4269_1(_badSource_environment_01,badSource_return_1,opsink1);
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_4241CWE134_Uncontrolled_Format_String__char_environment_vprintf_4269_1(_badSource_environment_02,badSource_return_2,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
