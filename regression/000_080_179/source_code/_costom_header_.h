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
char * badSource(char * data);
void badVaSink(char * data, ...);
void CWE134_Uncontrolled_Format_String__char_file_vprintf_42_bad();
char * goodG2BSource(char * data);
void goodG2BVaSink(char * data, ...);
void goodG2B();
char * goodB2GSource(char * data);
void goodB2GVaSink(char * data, ...);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_vprintf_42_good();
#endif