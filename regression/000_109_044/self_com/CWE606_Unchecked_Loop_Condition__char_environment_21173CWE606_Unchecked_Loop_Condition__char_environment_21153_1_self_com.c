#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern int goodB2G2Static;

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

void CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21153_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	int goodB2G2Static1;
	int goodB2G2Static2;
	goodB2G2Static2 = goodB2G2Static1;
	char *_goodB2G2_environment_01;
	char _goodB2G2_environment_0arr1[16];
	_goodB2G2_environment_01 = _goodB2G2_environment_0arr1;
	char *_goodB2G2_environment_02;
	char _goodB2G2_environment_0arr2[16];
	_goodB2G2_environment_02 = _goodB2G2_environment_0arr2;
	memcpy(_goodB2G2_environment_0arr2,_goodB2G2_environment_0arr1,16);
	goodB2G2Static = goodB2G2Static1;
	CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21153_1(_goodB2G2_environment_01,opsink1);
	goodB2G2Static = goodB2G2Static2;
	CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21153_1(_goodB2G2_environment_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
