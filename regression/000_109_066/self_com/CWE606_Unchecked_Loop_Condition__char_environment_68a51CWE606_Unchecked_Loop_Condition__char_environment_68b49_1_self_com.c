#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern char *CWE606_Unchecked_Loop_Condition__char_environment_68_badData;

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

void CWE606_Unchecked_Loop_Condition__char_environment_68a51CWE606_Unchecked_Loop_Condition__char_environment_68b49_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	char CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr1[16];
	char CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr2[16];
	memcpy(CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr2,CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr1,16);
	char *_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_01;
	char _CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr1[16];
	_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_01 = _CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr1;
	char *_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_02;
	char _CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr2[16];
	_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_02 = _CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr2;
	memcpy(_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr2,_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_0arr1,16);
	CWE606_Unchecked_Loop_Condition__char_environment_68_badData = CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr1;
	CWE606_Unchecked_Loop_Condition__char_environment_68a51CWE606_Unchecked_Loop_Condition__char_environment_68b49_1(_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_01,opsink1);
	CWE606_Unchecked_Loop_Condition__char_environment_68_badData = CWE606_Unchecked_Loop_Condition__char_environment_68_badDataarr2;
	CWE606_Unchecked_Loop_Condition__char_environment_68a51CWE606_Unchecked_Loop_Condition__char_environment_68b49_1(_CWE606_Unchecked_Loop_Condition__char_environment_68_bad_environment_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
