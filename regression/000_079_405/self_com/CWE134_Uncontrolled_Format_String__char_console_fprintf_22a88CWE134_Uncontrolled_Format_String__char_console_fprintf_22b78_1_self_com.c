#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global;
extern int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal;

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

void CWE134_Uncontrolled_Format_String__char_console_fprintf_22a88CWE134_Uncontrolled_Format_String__char_console_fprintf_22b78_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global1;
	int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global2;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global2 = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global1;
	int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal1;
	int CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal2;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal2 = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal1;
	char *_goodB2G1_data_01;
	char _goodB2G1_data_0arr1[16];
	_goodB2G1_data_01 = _goodB2G1_data_0arr1;
	char *_goodB2G1_data_02;
	char _goodB2G1_data_0arr2[16];
	_goodB2G1_data_02 = _goodB2G1_data_0arr2;
	memcpy(_goodB2G1_data_0arr2,_goodB2G1_data_0arr1,16);
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global1;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal1;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22a88CWE134_Uncontrolled_Format_String__char_console_fprintf_22b78_1(_goodB2G1_data_01,opsink1);
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodB2G1Global2;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal = CWE134_Uncontrolled_Format_String__char_console_fprintf_22_goodG2BGlobal2;
	CWE134_Uncontrolled_Format_String__char_console_fprintf_22a88CWE134_Uncontrolled_Format_String__char_console_fprintf_22b78_1(_goodB2G1_data_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
