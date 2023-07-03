#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
void CWE606_Unchecked_Loop_Condition__char_console_53b_badSink(char * data);
void CWE606_Unchecked_Loop_Condition__char_console_53_bad();
void CWE606_Unchecked_Loop_Condition__char_console_53b_goodG2BSink(char * data);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_console_53b_goodB2GSink(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_console_53_good();
#endif