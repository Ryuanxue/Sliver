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
void CWE606_Unchecked_Loop_Condition__char_environment_68b_badSink();
void CWE606_Unchecked_Loop_Condition__char_environment_68_bad();
void CWE606_Unchecked_Loop_Condition__char_environment_68b_goodG2BSink();
void CWE606_Unchecked_Loop_Condition__char_environment_68b_goodB2GSink();
void goodG2B();
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_environment_68_good();
#endif