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
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink(void * dataVoidPtr);
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodG2BSink(void * dataVoidPtr);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_goodB2GSink(void * dataVoidPtr);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_good();
#endif