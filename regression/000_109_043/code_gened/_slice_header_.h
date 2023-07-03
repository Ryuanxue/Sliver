#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18106_1(char *_goodB2G_environment_0, void (*opsink)(int _goodB2G_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1(char *_goodB2G_environment_0, void (*opsink)(int _goodG2B_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
