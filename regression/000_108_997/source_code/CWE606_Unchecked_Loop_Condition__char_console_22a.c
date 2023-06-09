#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_console_22a.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-22a.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: console Read input from the console
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 22 Control flow: Flow controlled by value of a global variable. Sink functions are in a separate file from sources.
 *
 * */

#include "std_testcase.h"

#define MAX_LOOP 10000

#ifndef _WIN32
#include <wchar.h>
#endif

#ifndef OMITBAD

/* The global variable below is used to drive control flow in the sink function */
int CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal = 0;


void CWE606_Unchecked_Loop_Condition__char_console_22_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
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
    CWE606_Unchecked_Loop_Condition__char_console_22_badGlobal = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_console_22_badSink(data);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* The global variables below are used to drive control flow in the sink functions. */
int CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global = 0;
int CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global = 0;
int CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal = 0;

/* goodB2G1() - use badsource and goodsink by setting the  variable to false instead of true */

void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
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
    CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Global = 0; /* false */
    CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G1Sink(data);
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the if in the sink function */

void goodB2G2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
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
    CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Global = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_console_22_goodB2G2Sink(data);
}

/* goodG2B() - use goodsource and badsink */

void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Set data to a number less than MAX_LOOP */
    strcpy(data, "15");
    CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BGlobal = 1; /* true */
    CWE606_Unchecked_Loop_Condition__char_console_22_goodG2BSink(data);
}

void CWE606_Unchecked_Loop_Condition__char_console_22_good()
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
    CWE606_Unchecked_Loop_Condition__char_console_22_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_console_22_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:45--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:41 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:45--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:79 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:45--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:104 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:45--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:127 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:41 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:79 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:104 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:91--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:127 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:128--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:41 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:128--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:79 NO
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:128--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:104 YES
//SLIVER_SOURCE:CWE606_Unchecked_Loop_Condition__char_console_22a.c:128--->SLIVER_SINK:CWE606_Unchecked_Loop_Condition__char_console_22b.c:127 NO
