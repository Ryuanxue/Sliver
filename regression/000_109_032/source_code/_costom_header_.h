#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
#define ENV_VARIABLE "ADD"
#ifdef _WIN32
#define GETENV getenv
#else
#define GETENV getenv
#endif
void CWE606_Unchecked_Loop_Condition__char_environment_07_bad();
void goodB2G1();
void goodB2G2();
void goodG2B1();
void goodG2B2();
void CWE606_Unchecked_Loop_Condition__char_environment_07_good();
#endif