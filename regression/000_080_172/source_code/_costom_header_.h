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
void CWE134_Uncontrolled_Format_String__char_file_vprintf_21_bad();
void goodB2G1_vasink(char * data, ...);
void goodB2G1();
void goodB2G2_vasink(char * data, ...);
void goodB2G2();
void goodG2BVaSink(char * data, ...);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_file_vprintf_21_good();
#endif