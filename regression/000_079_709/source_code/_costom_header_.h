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
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_badSink(char * * dataPtr);
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_bad();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodG2BSink(char * * data);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_63b_goodB2GSink(char * * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_63_good();
#endif