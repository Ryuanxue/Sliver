#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_file_printf_06.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-06.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: file Read input from a file
 * GoodSource: Copy a fixed string into data
 * Sinks: printf
 *    GoodSink: printf with "%s" as the first argument and data as the second
 *    BadSink : printf with only data as an argument
 * Flow Variant: 06 Control flow: if(STATIC_CONST_FIVE==5) and if(STATIC_CONST_FIVE!=5)
 *
 * */

#include "std_testcase.h"

#ifndef _WIN32
#include <wchar.h>
#endif

#ifdef _WIN32
#define FILENAME "C:\\temp\\file.txt"
#else
#define FILENAME "/tmp/file.txt"
#endif

/* The variable below is declared "", so a tool should be able
   to identify that reads of this will always give its initialized
   value. */
 int STATIC_CONST_FIVE = 5;

#ifndef OMITBAD

void CWE134_Uncontrolled_Format_String__char_file_printf_06_bad()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(STATIC_CONST_FIVE==5)
    {
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
                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL) //SLIVER_SOURCE
                    {
                        printLine("fgets() failed");
                        /* Restore NUL terminator if fgets fails */
                        data[dataLen] = '\0';
                    }
                    fclose(pFile);
                }
            }
        }
    }
    if(STATIC_CONST_FIVE==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data); //SLIVER_SINK
    }
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodB2G1() - use badsource and goodsink by changing the second STATIC_CONST_FIVE==5 to STATIC_CONST_FIVE!=5 */
void goodB2G1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(STATIC_CONST_FIVE==5)
    {
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
                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL) //SLIVER_SOURCE
                    {
                        printLine("fgets() failed");
                        /* Restore NUL terminator if fgets fails */
                        data[dataLen] = '\0';
                    }
                    fclose(pFile);
                }
            }
        }
    }
    if(STATIC_CONST_FIVE!=5)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Specify the format disallowing a format string vulnerability */
        printf("%s\n", data); //SLIVER_SINK
    }
}

/* goodB2G2() - use badsource and goodsink by reversing the blocks in the second if */
void goodB2G2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(STATIC_CONST_FIVE==5)
    {
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
                    if (fgets(data+dataLen, (int)(100-dataLen), pFile) == NULL) //SLIVER_SOURCE
                    {
                        printLine("fgets() failed");
                        /* Restore NUL terminator if fgets fails */
                        data[dataLen] = '\0';
                    }
                    fclose(pFile);
                }
            }
        }
    }
    if(STATIC_CONST_FIVE==5)
    {
        /* FIX: Specify the format disallowing a format string vulnerability */
        printf("%s\n", data); //SLIVER_SINK
    }
}

/* goodG2B1() - use goodsource and badsink by changing the first STATIC_CONST_FIVE==5 to STATIC_CONST_FIVE!=5 */
void goodG2B1()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(STATIC_CONST_FIVE!=5)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        printLine("Benign, fixed string");
    }
    else
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(STATIC_CONST_FIVE==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data); //SLIVER_SINK
    }
}

/* goodG2B2() - use goodsource and badsink by reversing the blocks in the first if */
void goodG2B2()
{
    char * data;
    char dataBuffer[100] = "";
    data = dataBuffer;
    if(STATIC_CONST_FIVE==5)
    {
        /* FIX: Use a fixed string that does not contain a format specifier */
        strcpy(data, "fixedstringtest");
    }
    if(STATIC_CONST_FIVE==5)
    {
        /* POTENTIAL FLAW: Do not specify the format allowing a possible format string vulnerability */
        printf(data); //SLIVER_SINK
    } 
}

void CWE134_Uncontrolled_Format_String__char_file_printf_06_good()
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
    CWE134_Uncontrolled_Format_String__char_file_printf_06_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_file_printf_06_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif

//SLIVER_SOURCE:55--->SLIVER_SINK:69 YES
//SLIVER_SOURCE:55--->SLIVER_SINK:115 NO
//SLIVER_SOURCE:55--->SLIVER_SINK:152 NO
//SLIVER_SOURCE:55--->SLIVER_SINK:175 NO
//SLIVER_SOURCE:55--->SLIVER_SINK:193 NO
//SLIVER_SOURCE:96--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:96--->SLIVER_SINK:115 YES
//SLIVER_SOURCE:96--->SLIVER_SINK:152 NO
//SLIVER_SOURCE:96--->SLIVER_SINK:175 NO
//SLIVER_SOURCE:96--->SLIVER_SINK:193 NO
//SLIVER_SOURCE:138--->SLIVER_SINK:69 NO
//SLIVER_SOURCE:138--->SLIVER_SINK:115 NO
//SLIVER_SOURCE:138--->SLIVER_SINK:152 YES
//SLIVER_SOURCE:138--->SLIVER_SINK:175 NO
//SLIVER_SOURCE:138--->SLIVER_SINK:193 NO


