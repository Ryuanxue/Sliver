#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#ifndef _WIN32
#include <wchar.h>
#endif
#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif
typedef struct _CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType
{
    char * structFirst;
} CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType;
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct);
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct);
void goodG2B();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct);
void goodB2G();
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67_good();
#endif