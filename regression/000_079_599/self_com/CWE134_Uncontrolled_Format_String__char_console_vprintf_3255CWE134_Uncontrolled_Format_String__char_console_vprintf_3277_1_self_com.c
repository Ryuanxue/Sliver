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

void CWE134_Uncontrolled_Format_String__char_console_vprintf_3255CWE134_Uncontrolled_Format_String__char_console_vprintf_3277_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	char *_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_11;
	char _CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr1[16];
	_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_11 = _CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr1;
	char *_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_12;
	char _CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr2[16];
	_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_12 = _CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr2;
	memcpy(_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr2,_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_1arr1,16);
	CWE134_Uncontrolled_Format_String__char_console_vprintf_3255CWE134_Uncontrolled_Format_String__char_console_vprintf_3277_1(_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_11,opsink1);
	CWE134_Uncontrolled_Format_String__char_console_vprintf_3255CWE134_Uncontrolled_Format_String__char_console_vprintf_3277_1(_CWE134_Uncontrolled_Format_String__char_console_vprintf_32_bad_data_12,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
