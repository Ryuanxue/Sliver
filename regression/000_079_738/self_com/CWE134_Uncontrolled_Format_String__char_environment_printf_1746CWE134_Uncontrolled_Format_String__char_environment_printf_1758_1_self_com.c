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

void CWE134_Uncontrolled_Format_String__char_environment_printf_1746CWE134_Uncontrolled_Format_String__char_environment_printf_1758_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	char *_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_01;
	char _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr1[16];
	_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_01 = _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr1;
	char *_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_02;
	char _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr2[16];
	_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_02 = _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr2;
	memcpy(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr2,_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_0arr1,16);
	int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_01;
	int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_02;
	_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_02 = _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_01;
	int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_01;
	int _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_02;
	_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_02 = _CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_01;
	CWE134_Uncontrolled_Format_String__char_environment_printf_1746CWE134_Uncontrolled_Format_String__char_environment_printf_1758_1(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_01,_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_01,_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_01,opsink1);
	CWE134_Uncontrolled_Format_String__char_environment_printf_1746CWE134_Uncontrolled_Format_String__char_environment_printf_1758_1(_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_environment_02,_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_i_02,_CWE134_Uncontrolled_Format_String__char_environment_printf_17_bad_j_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
