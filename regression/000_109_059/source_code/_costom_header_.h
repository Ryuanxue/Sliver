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
char * CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource(char * data);
void CWE606_Unchecked_Loop_Condition__char_environment_61_bad();
char * CWE606_Unchecked_Loop_Condition__char_environment_61b_goodG2BSource(char * data);
void goodG2B();
char * CWE606_Unchecked_Loop_Condition__char_environment_61b_goodB2GSource(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_environment_61_good();
#endif