#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_4163CWE606_Unchecked_Loop_Condition__char_environment_4145_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_41_bad_environment_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1(char *_goodB2G_environment_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_41118_1(char *_goodB2G_environment_0, void (*opsink)(int _goodB2GSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
