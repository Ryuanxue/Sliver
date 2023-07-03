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
void badSink();
void CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad();
void goodG2BSink();
void goodG2B();
void goodB2GSink();
void goodB2G();
void CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good();
#endif