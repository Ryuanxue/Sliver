#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_1347CWE606_Unchecked_Loop_Condition__char_environment_1364_1(char *_CWE606_Unchecked_Loop_Condition__char_environment_13_bad_environment_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_13_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13114_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodB2G1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13222_1(char *_goodB2G1_environment_0, void (*opsink)(int _goodG2B2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_13137CWE606_Unchecked_Loop_Condition__char_environment_13156_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodB2G2_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_13137CWE606_Unchecked_Loop_Condition__char_environment_13192_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B1_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_13137CWE606_Unchecked_Loop_Condition__char_environment_13222_1(char *_goodB2G2_environment_0, void (*opsink)(int _goodG2B2_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
