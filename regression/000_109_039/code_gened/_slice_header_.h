#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1447CWE606_Unchecked_Loop_Condition__char_environment_1464_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_14_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_14_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1490CWE606_Unchecked_Loop_Condition__char_environment_14114_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1490CWE606_Unchecked_Loop_Condition__char_environment_14192_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1490CWE606_Unchecked_Loop_Condition__char_environment_14222_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_14137CWE606_Unchecked_Loop_Condition__char_environment_14156_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_14137CWE606_Unchecked_Loop_Condition__char_environment_14192_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_14137CWE606_Unchecked_Loop_Condition__char_environment_14222_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
