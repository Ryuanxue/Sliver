#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_1554CWE606_Unchecked_Loop_Condition__char_file_1579_1(char *_CWE606_Unchecked_Loop_Condition__char_file_15_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_15_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15150_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15253_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15119CWE606_Unchecked_Loop_Condition__char_file_15295_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15210_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15253_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_15183CWE606_Unchecked_Loop_Condition__char_file_15295_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
