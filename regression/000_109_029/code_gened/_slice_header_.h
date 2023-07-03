#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0496CWE606_Unchecked_Loop_Condition__char_environment_04120_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0496CWE606_Unchecked_Loop_Condition__char_environment_04198_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_0496CWE606_Unchecked_Loop_Condition__char_environment_04228_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_04143CWE606_Unchecked_Loop_Condition__char_environment_04162_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_04143CWE606_Unchecked_Loop_Condition__char_environment_04198_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_04143CWE606_Unchecked_Loop_Condition__char_environment_04228_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
