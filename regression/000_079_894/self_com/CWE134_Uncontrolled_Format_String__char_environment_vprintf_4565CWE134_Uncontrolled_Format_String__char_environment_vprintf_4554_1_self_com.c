#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern char *CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData;

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

void CWE134_Uncontrolled_Format_String__char_environment_vprintf_4565CWE134_Uncontrolled_Format_String__char_environment_vprintf_4554_1_self_com(){
	char sink_outputarg_0arr1[16];
	sink_outputarg_0 = sink_outputarg_0arr1;
	char sink_outputarg_copy_0arr2[16];
	sink_outputarg_copy_0 = sink_outputarg_copy_0arr2;
	memcpy(sink_outputarg_copy_0arr2,sink_outputarg_0arr1,16);
	char CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr1[16];
	char CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr2[16];
	memcpy(CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr2,CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr1,16);
	char *_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_01;
	char _CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr1[16];
	_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_01 = _CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr1;
	char *_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_02;
	char _CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr2[16];
	_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_02 = _CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr2;
	memcpy(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr2,_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_0arr1,16);
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData = CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr1;
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_4565CWE134_Uncontrolled_Format_String__char_environment_vprintf_4554_1(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_01,opsink1);
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badData = CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_badDataarr2;
	CWE134_Uncontrolled_Format_String__char_environment_vprintf_4565CWE134_Uncontrolled_Format_String__char_environment_vprintf_4554_1(_CWE134_Uncontrolled_Format_String__char_environment_vprintf_45_bad_environment_02,opsink2);
	assert(strcmp(sink_outputarg_0,sink_outputarg_copy_0)==0);
}
