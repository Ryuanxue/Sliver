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
void CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink(char * dataArray[]);
void CWE134_Uncontrolled_Format_String__char_file_fprintf_66_bad();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink(char * dataArray[]);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink(char * dataArray[]);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_66_good();
#endif