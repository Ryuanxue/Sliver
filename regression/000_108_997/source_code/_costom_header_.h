#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
void CWE606_Unchecked_Loop_Condition__char_console_22_badSink(char * data);
void CWE606_Unchecked_Loop_Condition__char_console_22_bad();
void CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(char * data);
void goodB2G1();
void CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(char * data);
void goodB2G2();
void CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(char * data);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_console_22_good();
#endif