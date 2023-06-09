#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_environment_05.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-05.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: environment Read input from an environment variable
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 05 Control flow: if(staticTrue) and if(staticFalse)
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

/* The two variables below are not defined as "", but are never
   assigned any other value, so a tool should be able to identify that
   reads of these will always return their initialized values. */
int staticTrue = 1; /* true */
int staticFalse = 0; /* false */

#ifndef OMITBAD

void CWE606_Unchecked_Loop_Condition__char_environment_05_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticTrue)
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
    if(staticTrue)
    {
        {
            int i, n, intVariable;
            if (sscanf(data, "%d", &n) == 1)
            {
                /* POTENTIAL FLAW: user-supplied value 'n' could lead to very large loop iteration */
                intVariable = 0;
                for (i = 0; i < n; i++)//SLIVER_SINK
                {
                    /* INCIDENTAL: CWE 561: Dead Code - non-avoidable if n <= 0 */
                    intVariable++; /* avoid a dead/empty code block issue */
                }
                printIntLine(intVariable);
            }
        }
    }
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodB2G1() - use badsource and goodsink by changing the second staticTrue to staticFalse */
void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticTrue)
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
    if(staticFalse)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        {
            int i, n, intVariable;
            if (sscanf(data, "%d", &n) == 1)
            {
                /* FIX: limit loop iteration counts */
                if (n < MAX_LOOP)
                {
                    intVariable = 0;
                    for (i = 0; i < n; i++)//SLIVER_SINK
                    {
                        /* INCIDENTAL: CWE 561: Dead Code - non-avoidable if n <= 0 */
                        intVariable++; /* avoid a dead/empty code block issue */
                    }
                    printIntLine(intVariable);
                }
            }
        }
    }
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the second if */
void goodB2G2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticTrue)
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
    if(staticTrue)
    {
        {
            int i, n, intVariable;
            if (sscanf(data, "%d", &n) == 1)
            {
                /* FIX: limit loop iteration counts */
                if (n < MAX_LOOP)
                {
                    intVariable = 0;
                    for (i = 0; i < n; i++)//SLIVER_SINK
                    {
                        /* INCIDENTAL: CWE 561: Dead Code - non-avoidable if n <= 0 */
                        intVariable++; /* avoid a dead/empty code block issue */
                    }
                    printIntLine(intVariable);
                }
            }
        }
    }
}

/* goodG2B1() - use goodsource and badsink by changing the first staticTrue to staticFalse */
void goodG2B1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticFalse)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Set data to a number less than MAX_LOOP */
        strcpy(data, "15");
    }
    if(staticTrue)
    {
        {
            int i, n, intVariable;
            if (sscanf(data, "%d", &n) == 1)
            {
                /* POTENTIAL FLAW: user-supplied value 'n' could lead to very large loop iteration */
                intVariable = 0;
                for (i = 0; i < n; i++)//SLIVER_SINK
                {
                    /* INCIDENTAL: CWE 561: Dead Code - non-avoidable if n <= 0 */
                    intVariable++; /* avoid a dead/empty code block issue */
                }
                printIntLine(intVariable);
            }
        }
    }
}

/* goodG2B2() - use goodsource and badsink by reversing the blocks in the first if */
void goodG2B2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(staticTrue)
    {
        /* FIX: Set data to a number less than MAX_LOOP */
        strcpy(data, "15");
    }
    if(staticTrue)
    {
        {
            int i, n, intVariable;
            if (sscanf(data, "%d", &n) == 1)
            {
                /* POTENTIAL FLAW: user-supplied value 'n' could lead to very large loop iteration */
                intVariable = 0;
                for (i = 0; i < n; i++)//SLIVER_SINK
                {
                    /* INCIDENTAL: CWE 561: Dead Code - non-avoidable if n <= 0 */
                    intVariable++; /* avoid a dead/empty code block issue */
                }
                printIntLine(intVariable);
            }
        }
    }
}

void CWE606_Unchecked_Loop_Condition__char_environment_05_good()
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
    CWE606_Unchecked_Loop_Condition__char_environment_05_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_environment_05_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:52--->SLIVER_SINK:69 YES
//SLIVER_SOURCE:52--->SLIVER_SINK:119 NO
//SLIVER_SOURCE:52--->SLIVER_SINK:161 NO
//SLIVER_SOURCE:52--->SLIVER_SINK:197 NO
//SLIVER_SOURCE:52--->SLIVER_SINK:227 NO
//SLIVER_SOURCE:95--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:95--->SLIVER_SINK:119 YES
//SLIVER_SOURCE:95--->SLIVER_SINK:161 NO
//SLIVER_SOURCE:95--->SLIVER_SINK:197 NO
//SLIVER_SOURCE:95--->SLIVER_SINK:227 NO
//SLIVER_SOURCE:142--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:142--->SLIVER_SINK:119 NO
//SLIVER_SOURCE:142--->SLIVER_SINK:161 YES
//SLIVER_SOURCE:142--->SLIVER_SINK:197 NO
//SLIVER_SOURCE:142--->SLIVER_SINK:227 NO
