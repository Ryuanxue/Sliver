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
void CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_badSink(char * data);
void CWE134_Uncontrolled_Format_String__char_file_fprintf_65_bad();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodG2BSink(char * data);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodB2GSink(char * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_65_good();
#endif