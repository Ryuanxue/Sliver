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
void CWE134_Uncontrolled_Format_String__char_environment_printf_06_bad();
void goodB2G1();
void goodB2G2();
void goodG2B1();
void goodG2B2();
void CWE134_Uncontrolled_Format_String__char_environment_printf_06_good();
#endif