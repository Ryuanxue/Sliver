#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
char * badSource(char * data);
void CWE606_Unchecked_Loop_Condition__char_console_42_bad();
char * goodG2BSource(char * data);
void goodG2B();
char * goodB2GSource(char * data);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_console_42_good();
#endif