#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__char_file_18.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-18.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: file Read input from a file
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 18 Control flow: goto statements
 *
 * */

#include "std_testcase.h"

#define MAX_LOOP 10000

#ifndef _WIN32
#include <wchar.h>
#endif

#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif

#ifndef OMITBAD

void CWE606_Unchecked_Loop_Condition__char_file_18_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
    {
        /* Read input from a file */
        size_t dataLen = strlen(data);
        FILE * pFile;
        /* if there is room in data, attempt to read the input from a file */
        if (100-dataLen > 1)
        {
            pFile = fopen(FILENAME, "r");
            if (pFile != NULL)
            {
                /* POTENTIAL FLAW: Read data from a file */
                if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)//SLIVER_SOURCE
                {
                    printLine("fgets() failed");
                    /* Restore NUL terminator if fgets fails */
                    data[dataLen] = '\0';
                }
                fclose(pFile);
            }
        }
    }
    goto sink;
sink:
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

/* goodB2G() - use badsource and goodsink by reversing the blocks on the second goto statement */
void goodB2G()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
    {
        /* Read input from a file */
        size_t dataLen = strlen(data);
        FILE * pFile;
        /* if there is room in data, attempt to read the input from a file */
        if (100-dataLen > 1)
        {
            pFile = fopen(FILENAME, "r");
            if (pFile != NULL)
            {
                /* POTENTIAL FLAW: Read data from a file */
                if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL)//SLIVER_SOURCE
                {
                    printLine("fgets() failed");
                    /* Restore NUL terminator if fgets fails */
                    data[dataLen] = '\0';
                }
                fclose(pFile);
            }
        }
    }
    goto sink;
sink:
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

/* goodG2B() - use goodsource and badsink by reversing the blocks on the first goto statement */
void goodG2B()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    goto source;
source:
    /* FIX: Set data to a number less than MAX_LOOP */
    strcpy(data, "15");
    goto sink;
sink:
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

void CWE606_Unchecked_Loop_Condition__char_file_18_good()
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
    CWE606_Unchecked_Loop_Condition__char_file_18_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__char_file_18_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:52--->SLIVER_SINK:70 YES
//SLIVER_SOURCE:52--->SLIVER_SINK:123 NO
//SLIVER_SOURCE:52--->SLIVER_SINK:152 NO
//SLIVER_SOURCE:103--->SLIVER_SINK:70 NO
//SLIVER_SOURCE:103--->SLIVER_SINK:123 YES
//SLIVER_SOURCE:103--->SLIVER_SINK:152 NO
