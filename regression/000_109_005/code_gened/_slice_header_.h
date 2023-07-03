#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_4461CWE606_Unchecked_Loop_Condition__char_console_4437_1(char *_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_4461CWE606_Unchecked_Loop_Condition__char_console_4496_1(char *_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_4461CWE606_Unchecked_Loop_Condition__char_console_44128_1(char *_CWE606_Unchecked_Loop_Condition__char_console_44_bad_data_0, void (*opsink)(int _goodB2GSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_44152CWE606_Unchecked_Loop_Condition__char_console_4437_1(char *_goodB2G_data_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_44152CWE606_Unchecked_Loop_Condition__char_console_4496_1(char *_goodB2G_data_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_44152CWE606_Unchecked_Loop_Condition__char_console_44128_1(char *_goodB2G_data_0, void (*opsink)(int _goodB2GSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
