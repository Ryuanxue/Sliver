#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-22a.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: fprintf
 *    GoodSink: fprintf with "%s" as the second argument and data as the third
 *    BadSink : fprintf with data as the second argument
 * Flow Variant: 22 Control flow: Flow controlled by value of a global variable. Sink functions are in a separate file from sources.
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

/* The global variable below is used to drive control flow in the sink function */
int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal = 0;


void CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_bad()
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
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badGlobal = 1; /* true */
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_badSink(data);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* The global variables below are used to drive control flow in the sink functions. */
int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global = 0;
int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global = 0;
int CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal = 0;

/* goodB2G1() - use badsource and goodsink by setting the  variable to false instead of true */

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
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Global = 0; /* false */
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G1Sink(data);
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the if in the sink function */

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
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Global = 1; /* true */
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodB2G2Sink(data);
}

/* goodG2B() - use goodsource and badsink */

void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BGlobal = 1; /* true */
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_goodG2BSink(data);
}

void CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_good()
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
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_22_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:34 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:58 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:68 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:78 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:79--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:34 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:79--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:58 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:79--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:68 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:79--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:78 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:102--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:34 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:102--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:58 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:102--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:68 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22a.c:102--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_22b.c:78 NO