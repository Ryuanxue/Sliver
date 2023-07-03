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
char * badSource(char * data);
void CWE606_Unchecked_Loop_Condition__char_file_42_bad();
char * goodG2BSource(char * data);
void goodG2B();
char * goodB2GSource(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_file_42_good();
#endif