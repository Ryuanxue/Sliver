#include "_costom_header_.h"
/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c
Label Definition File: CWE134_Uncontrolled_Format_String.label.xml
Template File: sources-sinks-65a.tmpl.c
*/
/*
 * @description
 * CWE: 134 Uncontrolled Format String
 * BadSource: environment Read input from an environment variable
 * GoodSource: Copy a fixed string into data
 * Sinks: fprintf
 *    GoodSink: fprintf with "%s" as the second argument and data as the third
 *    BadSink : fprintf with data as the second argument
 * Flow Variant: 65 Data/control flow: data passed as an argument from one function to a function in a different source file called via a function pointer
 *
 * */

#include "std_testcase.h"

#ifndef _WIN32
#include <wchar.h>
#endif

#define ENV_VARIABLE "ADD"

#ifdef _WIN32
#define GETENV getenv
#else
#define GETENV getenv
#endif

#ifndef OMITBAD

/* bad function declaration */

void CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad()
{
    char * data;
    /* define a function pointer */
    void (*funcPtr) (char *) = CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink;
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
    /* use the function pointer */
    funcPtr(data);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */

void goodG2B()
{
    char * data;
    void (*funcPtr) (char *) = CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink;
    char dataBuffer[100] = "";
    data = dataBuffer;
    /* FIX: Use a fixed string that does not contain a format specifier */
    strcpy(data, "fixedstringtest");
    funcPtr(data);
}

/* goodB2G uses the BadSource with the GoodSink */

void goodB2G()
{
    char * data;
    void (*funcPtr) (char *) = CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink;
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
    funcPtr(data);
}

void CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good()
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
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:37 YES
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:48 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:47--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:55 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:89--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:37 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:89--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:48 NO
//SLIVER_SOURCE:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c:89--->SLIVER_SINK:CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b.c:55 YES
