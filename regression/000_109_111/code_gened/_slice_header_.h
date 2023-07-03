#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_65a55CWE606_Unchecked_Loop_Condition__char_file_65b42_1(char *_CWE606_Unchecked_Loop_Condition__char_file_65_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_65a55CWE606_Unchecked_Loop_Condition__char_file_65b65_1(char *_CWE606_Unchecked_Loop_Condition__char_file_65_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_65a55CWE606_Unchecked_Loop_Condition__char_file_65b86_1(char *_CWE606_Unchecked_Loop_Condition__char_file_65_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_65a105CWE606_Unchecked_Loop_Condition__char_file_65b42_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_65a105CWE606_Unchecked_Loop_Condition__char_file_65b65_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_65a105CWE606_Unchecked_Loop_Condition__char_file_65b86_1(char *_goodB2G_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
