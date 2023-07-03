#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_1443CWE606_Unchecked_Loop_Condition__char_console_1470_1(char *_CWE606_Unchecked_Loop_Condition__char_console_14_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_14_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14100CWE606_Unchecked_Loop_Condition__char_console_14134_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14100CWE606_Unchecked_Loop_Condition__char_console_14226_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14100CWE606_Unchecked_Loop_Condition__char_console_14256_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14161CWE606_Unchecked_Loop_Condition__char_console_14190_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14161CWE606_Unchecked_Loop_Condition__char_console_14226_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_14161CWE606_Unchecked_Loop_Condition__char_console_14256_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
