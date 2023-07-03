#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1047CWE606_Unchecked_Loop_Condition__char_environment_1064_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_10_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_10_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10114_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10192_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1090CWE606_Unchecked_Loop_Condition__char_environment_10222_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_10137CWE606_Unchecked_Loop_Condition__char_environment_10156_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_10137CWE606_Unchecked_Loop_Condition__char_environment_10192_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_10137CWE606_Unchecked_Loop_Condition__char_environment_10222_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
