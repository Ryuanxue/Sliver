#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1548CWE606_Unchecked_Loop_Condition__char_environment_1571_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_15_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_15_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15267_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15157CWE606_Unchecked_Loop_Condition__char_environment_15182_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15157CWE606_Unchecked_Loop_Condition__char_environment_15225_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_15157CWE606_Unchecked_Loop_Condition__char_environment_15267_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
