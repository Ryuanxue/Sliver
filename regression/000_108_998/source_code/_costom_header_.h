#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
void CWE606_Unchecked_Loop_Condition__char_console_31_bad();
void goodG2B();
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_console_31_good();
#endif