#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define MAX_LOOP 10000
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif
typedef union
{
    char * unionFirst;
    char * unionSecond;
} CWE606_Unchecked_Loop_Condition__char_file_34_unionType;
void CWE606_Unchecked_Loop_Condition__char_file_34_bad();
void goodG2B();
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_file_34_good();
#endif