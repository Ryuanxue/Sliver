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
char * CWE606_Unchecked_Loop_Condition__char_file_61b_badSource(char * data);
void CWE606_Unchecked_Loop_Condition__char_file_61_bad();
char * CWE606_Unchecked_Loop_Condition__char_file_61b_goodG2BSource(char * data);
void goodG2B();
char * CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_file_61_good();
#endif