#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_console_17.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-17.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: console Read input from the console
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 17 Control flow: for loops
 *
 * */

#include "std_testcase.h"

#define MAX_LOOP 10000

#ifndef _WIN32
#include <wchar.h>
#endif

#ifndef OMITBAD

void CWE606_Unchecked_Loop_Condition__char_console_17_bad()
{
    int i,j;
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    for(i = 0; i < 1; i++)
    {
        {
            /* Read input from the console */
            size_t dataLen = strlen(data);
            /* if there is room in data, read into it from the console */
            if (100-dataLen > 1)
            {
                /* POTENTIAL FLAW: Read data from the console */
                if (fgets(data+dataLen, (int)(100-dataLen), stdin) != NULL)//SLIVER_SOURCE
                {
                    /* The next few lines remove the carriage return from the string that is
                     * inserted by fgets() */
                    dataLen = strlen(data);
                    if (dataLen > 0 && data[dataLen-1] == '\n')
                    {
                        data[dataLen-1] = '\0';
                    }
                }
                else
                {
                    printLine("fgets() failed");
                    /* Restore NUL terminator if fgets fails */
                    data[dataLen] = '\0';
                }
            }
        }
    }
    for(j = 0; j < 1; j++)
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

/* goodB2G() - use badsource and goodsink in the for statements */
void goodB2G()
{
    int i,k;
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    for(i = 0; i < 1; i++)
    {
        {
            /* Read input from the console */
            size_t dataLen = strlen(data);
            /* if there is room in data, read into it from the console */
            if (100-dataLen > 1)
            {
                /* POTENTIAL FLAW: Read data from the console */
                if (fgets(data+dataLen, (int)(100-dataLen), stdin) != NULL)//SLIVER_SOURCE
                {
                    /* The next few lines remove the carriage return from the string that is
                     * inserted by fgets() */
                    dataLen = strlen(data);
                    if (dataLen > 0 && data[dataLen-1] == '\n')
                    {
                        data[dataLen-1] = '\0';
                    }
                }
                else
                {
                    printLine("fgets() failed");
                    /* Restore NUL terminator if fgets fails */
                    data[dataLen] = '\0';
                }
            }
        }
    }
    for(k = 0; k < 1; k++)
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

/* goodG2B() - use goodsource and badsink in the for statements */
void goodG2B()
{
    int h,j;
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    for(h = 0; h < 1; h++)
    {
        /* FIX: Set data to a number less than MAX_LOOP */
        strcpy(data, "15");
    }
    for(j = 0; j < 1; j++)
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

void CWE606_Unchecked_Loop_Condition__char_console_17_good()
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
    CWE606_Unchecked_Loop_Condition__char_console_17_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_console_17_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:43--->SLIVER_SINK:70 YES
//SLIVER_SOURCE:43--->SLIVER_SINK:130 NO
//SLIVER_SOURCE:43--->SLIVER_SINK:162 NO
//SLIVER_SOURCE:101--->SLIVER_SINK:70 NO
//SLIVER_SOURCE:101--->SLIVER_SINK:130 YES
//SLIVER_SOURCE:101--->SLIVER_SINK:162 NO
