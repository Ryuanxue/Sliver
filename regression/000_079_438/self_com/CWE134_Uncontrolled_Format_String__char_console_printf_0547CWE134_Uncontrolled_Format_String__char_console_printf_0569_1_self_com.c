#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int staticTrue;

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

void CWE134_Uncontrolled_Format_String__char_console_printf_0547CWE134_Uncontrolled_Format_String__char_console_printf_0569_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	int staticTrue1;
	int staticTrue2;
	staticTrue2 = staticTrue1;
	char *_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_01;
	char _CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr1[16];
	_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_01 = _CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr1;
	char *_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_02;
	char _CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr2[16];
	_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_02 = _CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr2;
	memcpy(_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr2,_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_0arr1,16);
	staticTrue = staticTrue1;
	CWE134_Uncontrolled_Format_String__char_console_printf_0547CWE134_Uncontrolled_Format_String__char_console_printf_0569_1(_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_01,opsink1);
	staticTrue = staticTrue2;
	CWE134_Uncontrolled_Format_String__char_console_printf_0547CWE134_Uncontrolled_Format_String__char_console_printf_0569_1(_CWE134_Uncontrolled_Format_String__char_console_printf_05_bad_data_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
