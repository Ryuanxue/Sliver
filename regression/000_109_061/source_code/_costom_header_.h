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
void CWE606_Unchecked_Loop_Condition__char_environment_63b_badSink(char * * dataPtr);
void CWE606_Unchecked_Loop_Condition__char_environment_63_bad();
void CWE606_Unchecked_Loop_Condition__char_environment_63b_goodG2BSink(char * * data);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_environment_63b_goodB2GSink(char * * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_environment_63_good();
#endif