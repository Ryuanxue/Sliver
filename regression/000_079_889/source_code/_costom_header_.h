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
typedef union
{
    char * unionFirst;
    char * unionSecond;
} CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_unionType;
void badVaSink(char * data, ...);
void CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_bad();
void goodG2BVaSink(char * data, ...);
void goodG2B();
void goodB2GVaSink(char * data, ...);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_environment_vprintf_34_good();
#endif