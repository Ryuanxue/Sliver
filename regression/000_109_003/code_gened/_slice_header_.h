#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_4238CWE606_Unchecked_Loop_Condition__char_console_4271_1(char *_CWE606_Unchecked_Loop_Condition__char_console_42_bad_data_0, char * *badSource_return_, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_console_42_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42105_1(char *_goodB2G_data_0, char * *goodB2GSource_return_, void (*opsink)(int _goodG2B_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_42125CWE606_Unchecked_Loop_Condition__char_console_42160_1(char *_goodB2G_data_0, char * *goodB2GSource_return_, void (*opsink)(int _goodB2G_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
