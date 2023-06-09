#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_environment_68a.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-68a.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: environment Read input from an environment variable
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 68 Data flow: data passed as a global variable from one function to another in different source files
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

char * CWE606_Unchecked_Loop_Condition__char_environment_68_badData;
char * CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData;
char * CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData;

#ifndef OMITBAD

/* bad function declaration */

void CWE606_Unchecked_Loop_Condition__char_environment_68_bad()
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
    CWE606_Unchecked_Loop_Condition__char_environment_68_badData = data;
    CWE606_Unchecked_Loop_Condition__char_environment_68b_badSink();
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* good function declarations */

/* goodG2B uses the GoodSource with the BadSink */
void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Set data to a number less than MAX_LOOP */
    strcpy(data, "15");
    CWE606_Unchecked_Loop_Condition__char_environment_68_goodG2BData = data;
    CWE606_Unchecked_Loop_Condition__char_environment_68b_goodG2BSink();
}

/* goodB2G uses the BadSource with the GoodSink */
void goodB2G()
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
    CWE606_Unchecked_Loop_Condition__char_environment_68_goodB2GData = data;
    CWE606_Unchecked_Loop_Condition__char_environment_68b_goodB2GSink();
}

void CWE606_Unchecked_Loop_Condition__char_environment_68_good()
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
    CWE606_Unchecked_Loop_Condition__char_environment_68_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_environment_68_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:51--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:49 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:51--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:73 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:51--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:95 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:92--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:49 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:92--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:73 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_environment_68a.c:92--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_environment_68b.c:95 YES
