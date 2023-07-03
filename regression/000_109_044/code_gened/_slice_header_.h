#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_2169CWE606_Unchecked_Loop_Condition__char_environment_2150_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_21_bad_environment_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21196_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21153_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_21173CWE606_Unchecked_Loop_Condition__char_environment_21196_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2BSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
