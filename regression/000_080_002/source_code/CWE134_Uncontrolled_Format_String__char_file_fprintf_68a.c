#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-68a.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: file Read input from a file
 * GoodSource: Copy a fixed string into data
 * Sinks: fprintf
 *    GoodSink: fprintf with "%s" as the second argument and data as the third
 *    BadSink : fprintf with data as the second argument
 * Flow Variant: 68 Data flow: data passed as a global variable from one function to another in different source files
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

char * CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData;
char * CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData;
char * CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData;

#ifndef OMITBAD

/* bad function declaration */

void CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad()
{
    char * data;
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
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink();
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
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink();
}

/* goodB2G uses the BadSource with the GoodSink */
void goodB2G()
{
    char * data;
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
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData = data;
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink();
}

void CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good()
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
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif

//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:55--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:40 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:55--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:52 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:55--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:60 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:40 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:52 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c:106--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c:60 YES
