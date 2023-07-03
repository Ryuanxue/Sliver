#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_environment_4242CWE606_Unchecked_Loop_Condition__char_environment_4265_1(char *_badSource_environment_0, char * *badSource_return_, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_environment_42_bad_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1(char *_goodB2GSource_environment_0, char * *goodB2GSource_return_, void (*opsink)(int _goodG2B_n_0));
void CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_42140_1(char *_goodB2GSource_environment_0, char * *goodB2GSource_return_, void (*opsink)(int _goodB2G_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
