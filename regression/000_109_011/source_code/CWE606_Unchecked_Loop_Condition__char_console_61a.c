#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_console_61a.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-61a.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: console Read input from the console
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 61 Data flow: data returned from one function to another in different source files
 *
 * */

#include "std_testcase.h"

#define MAX_LOOP 10000

#ifndef _WIN32
#include <wchar.h>
#endif

#ifndef OMITBAD

/* bad function declaration */

void CWE606_Unchecked_Loop_Condition__char_console_61_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    data = CWE606_Unchecked_Loop_Condition__char_console_61b_badSource(data);
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

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */

void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    data = CWE606_Unchecked_Loop_Condition__char_console_61b_goodG2BSource(data);
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

/* goodB2G uses the BadSource with the GoodSink */

void goodB2G()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    data = CWE606_Unchecked_Loop_Condition__char_console_61b_goodB2GSource(data);
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

void CWE606_Unchecked_Loop_Condition__char_console_61_good()
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
    CWE606_Unchecked_Loop_Condition__char_console_61_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_console_61_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:37--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:43 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:37--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:72 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:37--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:99 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:80--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:43 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:80--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:72 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_61b.c:80--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_61a.c:99 YES
