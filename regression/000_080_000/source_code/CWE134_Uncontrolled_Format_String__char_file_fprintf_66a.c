#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-66a.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: file Read input from a file
 * GoodSource: Copy a fixed string into data
 * Sinks: fprintf
 *    GoodSink: fprintf with "%s" as the second argument and data as the third
 *    BadSink : fprintf with data as the second argument
 * Flow Variant: 66 Data flow: data passed in an array from one function to another in different source files
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

#ifndef OMITBAD

/* bad function declaration */

void CWE134_Uncontrolled_Format_String__char_file_fprintf_66_bad()
{
    char * data;
    char * dataArray[5];
    char dataBuffer[100] = "";
    data = dataBuffer;
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
    /* put data in array */
    dataArray[2] = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink(dataArray);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */

void goodG2B()
{
    char * data;
    char * dataArray[5];
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    dataArray[2] = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink(dataArray);
}

/* goodB2G uses the BadSource with the GoodSink */

void goodB2G()
{
    char * data;
    char * dataArray[5];
    char dataBuffer[100] = "";
    data = dataBuffer;
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
    dataArray[2] = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink(dataArray);
}

void CWE134_Uncontrolled_Format_String__char_file_fprintf_66_good()
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
    CWE134_Uncontrolled_Format_String__char_file_fprintf_66_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_file_fprintf_66_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:52--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:37 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:52--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:49 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:52--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:57 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:37 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:49 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c:57 YES