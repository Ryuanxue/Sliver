/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_file_fprintf_67b.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-67b.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: file Read input from a file
 * GoodSource: Copy a fixed string into data
 * Sinks: fprintf
 *    GoodSink: fprintf with "%s" as the second argument and data as the third
 *    BadSink : fprintf with data as the second argument
 * Flow Variant: 67 Data flow: data passed in a struct from one function to another in different source files
 *
 * */

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

#ifndef OMITBAD

void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct)
{
    char * data = myStruct.structFirst;
    /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
    fprintf(stdout, data); //SLIVER_SINK
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct)
{
    char * data = myStruct.structFirst;
    /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
    fprintf(stdout, data); //SLIVER_SINK
}

/* goodB2G uses the BadSource with the GoodSink */
void CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType myStruct)
{
    char * data = myStruct.structFirst;
    /* FIX: Specify the format disallowing a format string vulnerability */
    fprintf(stdout, "%s\n", data); //SLIVER_SINK
}

#endif /* OMITGOOD */
