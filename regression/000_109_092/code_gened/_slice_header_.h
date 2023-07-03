#include "_costom_header_.h"
void CWE606_Unchecked_Loop_Condition__char_file_2175CWE606_Unchecked_Loop_Condition__char_file_2148_1(char *_CWE606_Unchecked_Loop_Condition__char_file_21_bad_data_0, void (*opsink)(int _badSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_21144CWE606_Unchecked_Loop_Condition__char_file_21116_1(char *_goodB2G1_data_0, void (*opsink)(int _goodB2G1Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_21144CWE606_Unchecked_Loop_Condition__char_file_21224_1(char *_goodB2G1_data_0, void (*opsink)(int _goodG2BSink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_21199CWE606_Unchecked_Loop_Condition__char_file_21171_1(char *_goodB2G2_data_0, void (*opsink)(int _goodB2G2Sink_n_0));
void CWE606_Unchecked_Loop_Condition__char_file_21199CWE606_Unchecked_Loop_Condition__char_file_21224_1(char *_goodB2G2_data_0, void (*opsink)(int _goodG2BSink_n_0));

int sscanf(const char* data, const char* s, int* n)
                {
 *n=atoi(data);
 if( strlen(data)>0) return 1;
 else return 0;
}
