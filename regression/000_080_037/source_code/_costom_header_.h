#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif
void badSink(char * data);
void CWE134_Uncontrolled_Format_String__char_file_printf_44_bad();
void goodG2BSink(char * data);
void goodG2B();
void goodB2GSink(char * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_printf_44_good();
#endif