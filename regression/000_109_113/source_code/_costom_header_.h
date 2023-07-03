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
typedef struct _CWE606_Unchecked_Loop_Condition__char_file_67_structType
{
    char * structFirst;
} CWE606_Unchecked_Loop_Condition__char_file_67_structType;
void CWE606_Unchecked_Loop_Condition__char_file_67b_badSink(CWE606_Unchecked_Loop_Condition__char_file_67_structType myStruct);
void CWE606_Unchecked_Loop_Condition__char_file_67_bad();
void CWE606_Unchecked_Loop_Condition__char_file_67b_goodG2BSink(CWE606_Unchecked_Loop_Condition__char_file_67_structType myStruct);
void goodG2B();
void CWE606_Unchecked_Loop_Condition__char_file_67b_goodB2GSink(CWE606_Unchecked_Loop_Condition__char_file_67_structType myStruct);
void goodB2G();
void CWE606_Unchecked_Loop_Condition__char_file_67_good();
#endif