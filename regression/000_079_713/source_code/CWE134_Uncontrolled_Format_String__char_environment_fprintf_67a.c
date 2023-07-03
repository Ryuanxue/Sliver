#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-67a.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
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

#define ENV_VARIABLE "ADD"

#ifdef _WIN32
#define GETENV getenv
#else
#define GETENV getenv
#endif


#ifndef OMITBAD

/* bad function declaration */

void CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_bad()
{
    char * data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType myStruct;
    char dataBuffer[100] = "";
    data = dataBuffer;
    {
        /* Append input from an environment variable to data */
        size_t dataLen = strlen(data);
        char * environment = GETENV(ENV_VARIABLE);//SLIVER_SOURCE
        /* If there is data in the environment variable */
        if (environment != NULL)
        {
            /* POTENTIAL FLAW: Read data from an environment variable */
            strncat(data+dataLen, environment, 100-dataLen-1);
        }
    }
    myStruct.structFirst = data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink(myStruct);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */

void goodG2B()
{
    char * data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType myStruct;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    myStruct.structFirst = data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink(myStruct);
}

/* goodB2G uses the BadSource with the GoodSink */

void goodB2G()
{
    char * data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType myStruct;
    char dataBuffer[100] = "";
    data = dataBuffer;
    {
        /* Append input from an environment variable to data */
        size_t dataLen = strlen(data);
        char * environment = GETENV(ENV_VARIABLE);//SLIVER_SOURCE
        /* If there is data in the environment variable */
        if (environment != NULL)
        {
            /* POTENTIAL FLAW: Read data from an environment variable */
            strncat(data+dataLen, environment, 100-dataLen-1);
        }
    }
    myStruct.structFirst = data;
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink(myStruct);
}

void CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_good()
{
    goodG2B();
    goodB2G();
}

#endif /* OMITGOOD */

/* Below is the main(). It is only used when building this testcase on
   its own for testing or for building a binary to use in testing binary
   analysis tools. It is not used when compiling all the testcases as one
   application, which is how source code analysis tools are tested. */

#ifdef INCLUDEMAIN

int main(int argc, char * argv[])
{
    /* seed randomness */
    srand( (unsigned)time(NULL) );
#ifndef OMITGOOD
    printLine("Calling good()...");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:51--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:43 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:51--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:55 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:51--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:63 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:94--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:43 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:94--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:55 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67a.c:94--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c:63 YES