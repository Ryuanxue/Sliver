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
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink();
void goodG2B();
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good();
#endif