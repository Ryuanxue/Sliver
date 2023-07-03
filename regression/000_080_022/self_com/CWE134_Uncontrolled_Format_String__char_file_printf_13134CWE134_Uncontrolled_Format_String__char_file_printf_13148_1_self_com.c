#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int GLOBAL_CONST_FIVE;

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

void CWE134_Uncontrolled_Format_String__char_file_printf_13134CWE134_Uncontrolled_Format_String__char_file_printf_13148_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	int GLOBAL_CONST_FIVE1;
	int GLOBAL_CONST_FIVE2;
	GLOBAL_CONST_FIVE2 = GLOBAL_CONST_FIVE1;
	char *_goodB2G2_data_01;
	char _goodB2G2_data_0arr1[16];
	_goodB2G2_data_01 = _goodB2G2_data_0arr1;
	char *_goodB2G2_data_02;
	char _goodB2G2_data_0arr2[16];
	_goodB2G2_data_02 = _goodB2G2_data_0arr2;
	memcpy(_goodB2G2_data_0arr2,_goodB2G2_data_0arr1,16);
	GLOBAL_CONST_FIVE = GLOBAL_CONST_FIVE1;
	CWE134_Uncontrolled_Format_String__char_file_printf_13134CWE134_Uncontrolled_Format_String__char_file_printf_13148_1(_goodB2G2_data_01,opsink1);
	GLOBAL_CONST_FIVE = GLOBAL_CONST_FIVE2;
	CWE134_Uncontrolled_Format_String__char_file_printf_13134CWE134_Uncontrolled_Format_String__char_file_printf_13148_1(_goodB2G2_data_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
