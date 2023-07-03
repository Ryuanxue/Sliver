#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
char * CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_badSource(char * data);
void CWE134_Uncontrolled_Format_String__char_console_fprintf_61_bad();
char * CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodG2BSource(char * data);
void goodG2B();
char * CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource(char * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_console_fprintf_61_good();
#endif