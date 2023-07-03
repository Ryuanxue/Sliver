#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_1853CWE606_Unchecked_Loop_Condition__char_file_1871_1(char *_CWE606_Unchecked_Loop_Condition__char_file_18_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_18_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_18104CWE606_Unchecked_Loop_Condition__char_file_18124_1(char *_goodB2G_data_0, void (*opsink)(int _goodB2G_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_18104CWE606_Unchecked_Loop_Condition__char_file_18153_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2B_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
