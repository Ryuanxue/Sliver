#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
void CWE606_Unchecked_Loop_Condition__char_console_64b_badSink(void * dataVoidPtr);
void CWE606_Unchecked_Loop_Condition__char_console_64_bad();
void CWE606_Unchecked_Loop_Condition__char_console_64b_goodG2BSink(void * dataVoidPtr);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_console_64b_goodB2GSink(void * dataVoidPtr);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_console_64_good();
#endif