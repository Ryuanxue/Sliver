#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_vprintf_21.c
Label Definition File: CWE134_Uncontrolled_Format_String.vasinks.label.xml
Template File: sources-vasinks-21.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: vprintf
 *    GoodSink: vprintf with a format string
 *    BadSink : vprintf without a format string
 * Flow Variant: 21 Control flow: Flow controlled by value of a  global variable. All functions contained in one file.
 *
 * */

#include <stdarg.h>
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

/* The  variable below is used to drive control flow in the sink function */
int badStatic = 0;

void badVaSink(char * data, ...)
{
    if(badStatic)
    {
        {
            va_list args;
            va_start(args, data);
            /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
            vprintf(data, args);
            va_end(args);
        }
    }
}

void CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad()
{
    char * data;
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
    badStatic = 1; /* true */
    badVaSink(data, data);//SLIVER_SINK
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* The  variables below are used to drive control flow in the sink functions. */
int goodB2G1Static = 0;
int goodB2G2Static = 0;
int goodG2BStatic = 0;

/* goodB2G1() - use badsource and goodsink by setting the  variable to false instead of true */
void goodB2G1_vasink(char * data, ...)
{
    if(goodB2G1Static)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        {
            va_list args;
            va_start(args, data);
            /* FIX: Specify the format disallowing a format string vulnerability */
            vprintf("%s", args);
            va_end(args);
        }
    }
}

void goodB2G1()
{
    char * data;
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
    goodB2G1Static = 0; /* false */
    goodB2G1_vasink(data, data);
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the if in the sink function */
void goodB2G2_vasink(char * data, ...)
{
    if(goodB2G2Static)
    {
        {
            va_list args;
            va_start(args, data);
            /* FIX: Specify the format disallowing a format string vulnerability */
            vprintf("%s", args);
            va_end(args);
        }
    }
}

void goodB2G2()
{
    char * data;
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
    goodB2G2Static = 1; /* true */
    goodB2G2_vasink(data, data);
}

/* goodG2B() - use goodsource and badsink */
void goodG2BVaSink(char * data, ...)
{
    if(goodG2BStatic)
    {
        {
            va_list args;
            va_start(args, data);
            /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
            vprintf(data, args);
            va_end(args);
        }
    }
}

void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    goodG2BStatic = 1; /* true */
    goodG2BVaSink(data, data);
}

void CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good()
{
    goodB2G1();
    goodB2G2();
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
    CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_vprintf_21_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:60--->SLIVER_SINK:69 YES
//SLIVER_SOURCE:109--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:144--->SLIVER_SINK:69 NO