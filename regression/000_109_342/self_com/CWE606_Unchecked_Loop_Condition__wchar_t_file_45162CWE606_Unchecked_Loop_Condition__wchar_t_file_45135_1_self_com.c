#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include "_slice_header_.h"
#include<assert.h>
extern wchar_t *CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData;

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

void CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1_self_com(){
	sink_outputarg_0=sink_outputarg_copy_0;
	wchar_t CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr1[16];
	wchar_t CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr2[16];
	memcpy(CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr2,CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr1,16);
	wchar_t *_goodB2G_data_01;
	wchar_t _goodB2G_data_0arr1[16];
	_goodB2G_data_01 = _goodB2G_data_0arr1;
	wchar_t *_goodB2G_data_02;
	wchar_t _goodB2G_data_0arr2[16];
	_goodB2G_data_02 = _goodB2G_data_0arr2;
	memcpy(_goodB2G_data_0arr2,_goodB2G_data_0arr1,16);
	CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr1;
	CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1(_goodB2G_data_01,opsink1);
	CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GDataarr2;
	CWE606_Unchecked_Loop_Condition__wchar_t_file_45162CWE606_Unchecked_Loop_Condition__wchar_t_file_45135_1(_goodB2G_data_02,opsink2);
	assert(sink_outputarg_0==sink_outputarg_copy_0);
}
