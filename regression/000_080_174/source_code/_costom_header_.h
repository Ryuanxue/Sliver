#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include <stdarg.h>
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif
void badVaSink(char * data, ...);
void CWE134_Uncontrolled_Format_String__char_file_vprintf_31_bad();
void goodG2BVaSink(char * data, ...);
void goodG2B();
void goodB2GVaSink(char * data, ...);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_vprintf_31_good();
#endif