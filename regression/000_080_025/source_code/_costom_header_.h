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
void CWE134_Uncontrolled_Format_String__char_file_printf_16_bad();
void goodB2G();
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_file_printf_16_good();
#endif