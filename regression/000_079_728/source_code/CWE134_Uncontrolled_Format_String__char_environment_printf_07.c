#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_printf_07.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-07.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: printf
 *    GoodSink: printf with "%s" as the first argument and data as the second
 *    BadSink : printf with only data as an argument
 * Flow Variant: 07 Control flow: if(staticFive==5) and if(staticFive!=5)
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

/* The variable below is not declared "", but is never assigned
   any other value so a tool should be able to identify that reads of
   this will always give its initialized value. */
int staticFive = 5;

#ifndef OMITBAD

void CWE134_Uncontrolled_Format_String__char_environment_printf_07_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFive==5)
    {
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
    }
    if(staticFive==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data);//SLIVER_SINK
    }
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodB2G1() - use badsource and goodsink by changing the second staticFive==5 to staticFive!=5 */
void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFive==5)
    {
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
    }
    if(staticFive!=5)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Specify the format disallowing a format string vulnerability */
        printf("%s\n", data);//SLIVER_SINK
    }
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the second if */
void goodB2G2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFive==5)
    {
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
    }
    if(staticFive==5)
    {
        /* FIX: Specify the format disallowing a format string vulnerability */
        printf("%s\n", data);//SLIVER_SINK
    }
}

/* goodG2B1() - use goodsource and badsink by changing the first staticFive==5 to staticFive!=5 */
void goodG2B1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFive!=5)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(staticFive==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data);//SLIVER_SINK
    }
}

/* goodG2B2() - use goodsource and badsink by reversing the blocks in the first if */
void goodG2B2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFive==5)
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(staticFive==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data);//SLIVER_SINK
    }
}

void CWE134_Uncontrolled_Format_String__char_environment_printf_07_good()
{
    goodB2G1();
    goodB2G2();
    goodG2B1();
    goodG2B2();
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
    CWE134_Uncontrolled_Format_String__char_environment_printf_07_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_printf_07_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:49--->SLIVER_SINK:61 YES
//SLIVER_SOURCE:49--->SLIVER_SINK:97 NO
//SLIVER_SOURCE:49--->SLIVER_SINK:124 NO
//SLIVER_SOURCE:49--->SLIVER_SINK:147 NO
//SLIVER_SOURCE:49--->SLIVER_SINK:165 NO
//SLIVER_SOURCE:80--->SLIVER_SINK:61 NO
//SLIVER_SOURCE:80--->SLIVER_SINK:97 YES
//SLIVER_SOURCE:80--->SLIVER_SINK:124 NO
//SLIVER_SOURCE:80--->SLIVER_SINK:147 NO
//SLIVER_SOURCE:80--->SLIVER_SINK:165 NO
//SLIVER_SOURCE:112--->SLIVER_SINK:61 NO
//SLIVER_SOURCE:112--->SLIVER_SINK:97 NO
//SLIVER_SOURCE:112--->SLIVER_SINK:124 YES
//SLIVER_SOURCE:112--->SLIVER_SINK:147 NO
//SLIVER_SOURCE:112--->SLIVER_SINK:165 NO