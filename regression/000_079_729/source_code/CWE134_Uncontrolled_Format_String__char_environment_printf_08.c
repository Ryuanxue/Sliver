#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_printf_08.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-08.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: printf
 *    GoodSink: printf with "%s" as the first argument and data as the second
 *    BadSink : printf with only data as an argument
 * Flow Variant: 08 Control flow: if(staticReturnsTrue()) and if(staticReturnsFalse())
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

/* The two function below always return the same value, so a tool
   should be able to identify that calls to the functions will always
   return a fixed value. */
int staticReturnsTrue()
{
    return 1;
}

int staticReturnsFalse()
{
    return 0;
}

#ifndef OMITBAD

void CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticReturnsTrue())
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
    if(staticReturnsTrue())
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data);//SLIVER_SINK
    }
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodB2G1() - use badsource and goodsink by changing the second staticReturnsTrue() to staticReturnsFalse() */
void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticReturnsTrue())
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
    if(staticReturnsFalse())
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
    if(staticReturnsTrue())
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
    if(staticReturnsTrue())
    {
        /* FIX: Specify the format disallowing a format string vulnerability */
        printf("%s\n", data);//SLIVER_SINK
    }
}

/* goodG2B1() - use goodsource and badsink by changing the first staticReturnsTrue() to staticReturnsFalse() */
void goodG2B1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticReturnsFalse())
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(staticReturnsTrue())
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
    if(staticReturnsTrue())
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(staticReturnsTrue())
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data);//SLIVER_SINK
    }
}

void CWE134_Uncontrolled_Format_String__char_environment_printf_08_good()
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
    CWE134_Uncontrolled_Format_String__char_environment_printf_08_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_printf_08_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:57--->SLIVER_SINK:69 YES
//SLIVER_SOURCE:57--->SLIVER_SINK:105 NO
//SLIVER_SOURCE:57--->SLIVER_SINK:132 NO
//SLIVER_SOURCE:57--->SLIVER_SINK:155 NO
//SLIVER_SOURCE:57--->SLIVER_SINK:173 NO
//SLIVER_SOURCE:88--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:88--->SLIVER_SINK:105 YES
//SLIVER_SOURCE:88--->SLIVER_SINK:132 NO
//SLIVER_SOURCE:88--->SLIVER_SINK:155 NO
//SLIVER_SOURCE:88--->SLIVER_SINK:173 NO
//SLIVER_SOURCE:120--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:120--->SLIVER_SINK:105 NO
//SLIVER_SOURCE:120--->SLIVER_SINK:132 YES
//SLIVER_SOURCE:120--->SLIVER_SINK:155 NO
//SLIVER_SOURCE:120--->SLIVER_SINK:173 NO