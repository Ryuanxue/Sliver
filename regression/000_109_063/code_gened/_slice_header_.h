#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_65a49CWE606_Unchecked_Loop_Condition__char_environment_65b44_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_65_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_65a49CWE606_Unchecked_Loop_Condition__char_environment_65b67_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_65_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_65a49CWE606_Unchecked_Loop_Condition__char_environment_65b88_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_65_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_65a89CWE606_Unchecked_Loop_Condition__char_environment_65b44_1(char *_goodB2G_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_65a89CWE606_Unchecked_Loop_Condition__char_environment_65b67_1(char *_goodB2G_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_65a89CWE606_Unchecked_Loop_Condition__char_environment_65b88_1(char *_goodB2G_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}