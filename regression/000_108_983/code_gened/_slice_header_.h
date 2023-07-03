#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_0648CWE606_Unchecked_Loop_Condition__char_console_0675_1(char *_CWE606_Unchecked_Loop_Condition__char_console_06_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_06_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06105CWE606_Unchecked_Loop_Condition__char_console_06139_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06105CWE606_Unchecked_Loop_Condition__char_console_06231_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06105CWE606_Unchecked_Loop_Condition__char_console_06261_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06166CWE606_Unchecked_Loop_Condition__char_console_06195_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06166CWE606_Unchecked_Loop_Condition__char_console_06231_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_06166CWE606_Unchecked_Loop_Condition__char_console_06261_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
