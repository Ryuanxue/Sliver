#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
void CWE606_Unchecked_Loop_Condition__char_console_66b_badSink(char * dataArray[]);
void CWE606_Unchecked_Loop_Condition__char_console_66_bad();
void CWE606_Unchecked_Loop_Condition__char_console_66b_goodG2BSink(char * dataArray[]);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_console_66b_goodB2GSink(char * dataArray[]);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_console_66_good();
#endif