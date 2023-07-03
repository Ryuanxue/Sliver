#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
#define ENV_VARIABLE "ADD"
#ifdef _WIN32
#define GETENV getenv
#else
#define GETENV getenv
#endif
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_54b_badSink(char * data);
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_54_bad();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_54b_goodG2BSink(char * data);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_54b_goodB2GSink(char * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_54_good();
#endif