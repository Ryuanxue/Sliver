#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_environment_65a.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-65a.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: environment Read input from an environment variable
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 65 Data/control flow: data passed as an argument from one function to a function in a different source file called via a function pointer
 *
 * */

#include "std_testcase.h"

#define MAX_LOOP 10000

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

void CWE606_Unchecked_Loop_Condition__char_environment_65_bad()
{
    char * data;
    /* define a function pointer */
    void (*funcPtr) (char *) = CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink;
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
    /* use the function pointer */
    funcPtr(data);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */

void goodG2B()
{
    char * data;
    void (*funcPtr) (char *) = CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Set data to a number less than MAX_LOOP */
    strcpy(data, "15");
    funcPtr(data);
}

/* goodB2G uses the BadSource with the GoodSink */

void goodB2G()
{
    char * data;
    void (*funcPtr) (char *) = CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink;
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
    funcPtr(data);
}

void CWE606_Unchecked_Loop_Condition__char_environment_65_good()
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
    CWE606_Unchecked_Loop_Condition__char_environment_65_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_environment_65_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:49--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:44 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:49--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:67 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:49--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:88 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:44 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:67 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_65a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_65b.c:88 YES
