#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_1453CWE606_Unchecked_Loop_Condition__char_file_1472_1(char *_CWE606_Unchecked_Loop_Condition__char_file_14_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_14_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14106CWE606_Unchecked_Loop_Condition__char_file_14132_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14106CWE606_Unchecked_Loop_Condition__char_file_14220_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14106CWE606_Unchecked_Loop_Condition__char_file_14250_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14163CWE606_Unchecked_Loop_Condition__char_file_14184_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14163CWE606_Unchecked_Loop_Condition__char_file_14220_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_14163CWE606_Unchecked_Loop_Condition__char_file_14250_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
