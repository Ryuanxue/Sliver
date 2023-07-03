#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include <stdarg.h>
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
void badVaSink(char * data, ...);
void CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad();
void goodB2G1_vasink(char * data, ...);
void goodB2G1();
void goodB2G2_vasink(char * data, ...);
void goodB2G2();
void goodG2BVaSink(char * data, ...);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good();
#endif