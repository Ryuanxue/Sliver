#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_0652CWE606_Unchecked_Loop_Condition__char_environment_0669_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_06_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_06_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06197_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06227_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_06142CWE606_Unchecked_Loop_Condition__char_environment_06161_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_06142CWE606_Unchecked_Loop_Condition__char_environment_06197_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_06142CWE606_Unchecked_Loop_Condition__char_environment_06227_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
