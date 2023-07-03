#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_1643CWE606_Unchecked_Loop_Condition__char_console_1671_1(char *_CWE606_Unchecked_Loop_Condition__char_console_16_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_16_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16132_1(char *_goodB2G_data_0, void (*opsink)(int _goodB2G_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_16102CWE606_Unchecked_Loop_Condition__char_console_16165_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2B_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
