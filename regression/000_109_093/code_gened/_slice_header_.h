#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_22a55CWE606_Unchecked_Loop_Condition__char_file_22b41_1(char *_CWE606_Unchecked_Loop_Condition__char_file_22_bad_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_22a96CWE606_Unchecked_Loop_Condition__char_file_22b79_1(char *_goodB2G1_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_22a96CWE606_Unchecked_Loop_Condition__char_file_22b127_1(char *_goodB2G1_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_22a128CWE606_Unchecked_Loop_Condition__char_file_22b104_1(char *_goodB2G2_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_22a128CWE606_Unchecked_Loop_Condition__char_file_22b127_1(char *_goodB2G2_data_0, void (*opsink)(int _CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
