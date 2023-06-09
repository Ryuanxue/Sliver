#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_printf_18.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-18.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: printf
 *    GoodSink: printf with "%s" as the first argument and data as the second
 *    BadSink : printf with only data as an argument
 * Flow Variant: 18 Control flow: goto statements
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

void CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
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
    goto sink;
sink:
    /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
    printf(data);//SLIVER_SINK
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodB2G() - use badsource and goodsink by reversing the blocks on the second goto statement */
void goodB2G()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
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
    goto sink;
sink:
    /* FIX: Specify the format disallowing a format string vulnerability */
    printf("%s\n", data);//SLIVER_SINK
}

/* goodG2B() - use goodsource and badsink by reversing the blocks on the first goto statement */
void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    goto sink;
sink:
    /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
    printf(data);//SLIVER_SINK
}

void CWE134_Uncontrolled_Format_String__char_environment_printf_18_good()
{
    goodB2G();
    goodG2B();
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
    CWE134_Uncontrolled_Format_String__char_environment_printf_18_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:44--->SLIVER_SINK:55 YES
//SLIVER_SOURCE:44--->SLIVER_SINK:84 NO
//SLIVER_SOURCE:44--->SLIVER_SINK:100 NO
//SLIVER_SOURCE:73--->SLIVER_SINK:55 NO
//SLIVER_SOURCE:73--->SLIVER_SINK:84 YES
//SLIVER_SOURCE:73--->SLIVER_SINK:100 NO