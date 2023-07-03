#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif
void CWE606_Unchecked_Loop_Condition__char_file_65b_badSink(char * data);
void CWE606_Unchecked_Loop_Condition__char_file_65_bad();
void CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink(char * data);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_file_65_good();
#endif