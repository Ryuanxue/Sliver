#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE606_Unchecked_Loop_Condition__wchar_t_file_45.c
Label Definition File: CWE606_Unchecked_Loop_Condition.label.xml
Template File: sources-sinks-45.tmpl.c
*/
/*
 * @description
 * CWE: 606 Unchecked Input For Loop Condition
 * BadSource: file Read input from a file
 * GoodSource: Input a number less than MAX_LOOP
 * Sinks:
 *    GoodSink: Use data as the for loop variant after checking to see if it is less than MAX_LOOP
 *    BadSink : Use data as the for loop variant without checking its size
 * Flow Variant: 45 Data flow: data passed as a  global variable from one function to another in the same source file
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

wchar_t * CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData;
wchar_t * CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData;
wchar_t * CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData;

#ifndef OMITBAD

void badSink()
{
    wchar_t * data = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData;
    {
        int i, n, intVariable;
        if (swscanf(data, L"%d", &n) == 1)
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

void CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad()
{
    wchar_t * data;
    wchar_t dataBuffer[100] = L"";
    data = dataBuffer;
    {
        /* Read input from a file */
        size_t dataLen = wcslen(data);
        FILE * pFile;
        /* if there is room in data, attempt to read the input from a file */
        if (100-dataLen > 1)
        {
            pFile = fopen(FILENAME, "r");
            if (pFile != NULL)
            {
                /* POTENTIAL FLAW: Read data from a file */
                if (fgetws(data+dataLen, (int)(100-dataLen), pFile) == NULL)//SLIVER_SOURCE
                {
                    printLine("fgetws() failed");
                    /* Restore NUL terminator if fgetws fails */
                    data[dataLen] = L'\0';
                }
                fclose(pFile);
            }
        }
    }
    CWE606_Unchecked_Loop_Condition__wchar_t_file_45_badData = data;
    badSink();
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B() uses the GoodSource with the BadSink */
void goodG2BSink()
{
    wchar_t * data = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData;
    {
        int i, n, intVariable;
        if (swscanf(data, L"%d", &n) == 1)
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

void goodG2B()
{
    wchar_t * data;
    wchar_t dataBuffer[100] = L"";
    data = dataBuffer;
    /* FIX: Set data to a number less than MAX_LOOP */
    wcscpy(data, L"15");
    CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodG2BData = data;
    goodG2BSink();
}

/* goodB2G() uses the BadSource with the GoodSink */
void goodB2GSink()
{
    wchar_t * data = CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData;
    {
        int i, n, intVariable;
        if (swscanf(data, L"%d", &n) == 1)
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

void goodB2G()
{
    wchar_t * data;
    wchar_t dataBuffer[100] = L"";
    data = dataBuffer;
    {
        /* Read input from a file */
        size_t dataLen = wcslen(data);
        FILE * pFile;
        /* if there is room in data, attempt to read the input from a file */
        if (100-dataLen > 1)
        {
            pFile = fopen(FILENAME, "r");
            if (pFile != NULL)
            {
                /* POTENTIAL FLAW: Read data from a file */
                if (fgetws(data+dataLen, (int)(100-dataLen), pFile) == NULL)//SLIVER_SOURCE
                {
                    printLine("fgetws() failed");
                    /* Restore NUL terminator if fgetws fails */
                    data[dataLen] = L'\0';
                }
                fclose(pFile);
            }
        }
    }
    CWE606_Unchecked_Loop_Condition__wchar_t_file_45_goodB2GData = data;
    goodB2GSink();
}

void CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good()
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
    CWE606_Unchecked_Loop_Condition__wchar_t_file_45_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE606_Unchecked_Loop_Condition__wchar_t_file_45_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif


//SLIVER_SOURCE:73--->SLIVER_SINK:47 YES
//SLIVER_SOURCE:73--->SLIVER_SINK:101 NO
//SLIVER_SOURCE:73--->SLIVER_SINK:134 NO
//SLIVER_SOURCE:161--->SLIVER_SINK:47 NO
//SLIVER_SOURCE:161--->SLIVER_SINK:101 NO
//SLIVER_SOURCE:161--->SLIVER_SINK:134 YES
