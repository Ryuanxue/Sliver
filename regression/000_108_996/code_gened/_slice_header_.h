#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_console_2165CWE606_Unchecked_Loop_Condition__char_console_2142_1(char *_CWE606_Unchecked_Loop_Condition__char_console_21_bad_data_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_21138CWE606_Unchecked_Loop_Condition__char_console_21114_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_21138CWE606_Unchecked_Loop_Condition__char_console_21230_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21173_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_console_21197CWE606_Unchecked_Loop_Condition__char_console_21230_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2BSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
