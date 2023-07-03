#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include <stdarg.h>
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
void badVaSink(char * data, ...);
void badSink(char * data);
void CWE134_Uncontrolled_Format_String__char_console_vprintf_41_bad();
void goodG2BVaSink(char * data, ...);
void goodG2BSink(char * data);
void goodG2B();
void goodB2GVaSink(char * data, ...);
void goodB2GSink(char * data);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_console_vprintf_41_good();
#endif