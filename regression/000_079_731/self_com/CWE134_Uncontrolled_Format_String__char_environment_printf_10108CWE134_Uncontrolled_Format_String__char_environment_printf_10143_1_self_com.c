#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int globalTrue;
extern int globalFalse;

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

void CWE134_Uncontrolled_Format_String__char_environment_printf_10108CWE134_Uncontrolled_Format_String__char_environment_printf_10143_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	int globalTrue1;
	int globalTrue2;
	globalTrue2 = globalTrue1;
	int globalFalse1;
	int globalFalse2;
	globalFalse2 = globalFalse1;
	char *_goodB2G2_environment_01;
	char _goodB2G2_environment_0arr1[16];
	_goodB2G2_environment_01 = _goodB2G2_environment_0arr1;
	char *_goodB2G2_environment_02;
	char _goodB2G2_environment_0arr2[16];
	_goodB2G2_environment_02 = _goodB2G2_environment_0arr2;
	memcpy(_goodB2G2_environment_0arr2,_goodB2G2_environment_0arr1,16);
	globalTrue = globalTrue1;
	globalFalse = globalFalse1;
	CWE134_Uncontrolled_Format_String__char_environment_printf_10108CWE134_Uncontrolled_Format_String__char_environment_printf_10143_1(_goodB2G2_environment_01,opsink1);
	globalTrue = globalTrue2;
	globalFalse = globalFalse2;
	CWE134_Uncontrolled_Format_String__char_environment_printf_10108CWE134_Uncontrolled_Format_String__char_environment_printf_10143_1(_goodB2G2_environment_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}