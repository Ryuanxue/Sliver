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
typedef struct _CWE606_Unchecked_Loop_Condition__char_environment_67_structType
{
    char * structFirst;
} CWE606_Unchecked_Loop_Condition__char_environment_67_structType;
void CWE606_Unchecked_Loop_Condition__char_environment_67b_badSink(CWE606_Unchecked_Loop_Condition__char_environment_67_structType myStruct);
void CWE606_Unchecked_Loop_Condition__char_environment_67_bad();
void CWE606_Unchecked_Loop_Condition__char_environment_67b_goodG2BSink(CWE606_Unchecked_Loop_Condition__char_environment_67_structType myStruct);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink(CWE606_Unchecked_Loop_Condition__char_environment_67_structType myStruct);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_environment_67_good();
#endif