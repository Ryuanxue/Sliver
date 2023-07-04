/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c
Label Definition File: CWE121_Stack_Based_Buffer_Overflow__CWE129.label.xml
Template File: sources-sinks-66a.tmpl.c
*/
/*
 * @description
 * CWE: 121 Stack Based Buffer Overflow
 * BadSource: fscanf Read data from the console using fscanf()
 * GoodSource: Larger than zero but less than 10
 * Sinks:
 *    GoodSink: Ensure the array index is valid
 *    BadSink : Improperly check the array index by not checking the upper bound
 * Flow Variant: 66 Data flow: data passed in an array from one function to another in different source files
 *
 * */

#include "std_testcase.h"

#ifndef OMITBAD

/* bad function declaration */
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink(int dataArray[]);

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad()
{
    int data;
    int dataArray[5];
    /* Initialize data */
    data = -1;
    /* POTENTIAL FLAW: Read data from the console using fscanf() */
    fscanf(stdin, "%d", &data);//SLIVER_SOURCE
    /* put data in array */
    dataArray[2] = data;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink(dataArray);
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink(int dataArray[]);

static void goodG2B()
{
    int data;
    int dataArray[5];
    /* Initialize data */
    data = -1;
    /* FIX: Use a value greater than 0, but less than 10 to avoid attempting to
     * access an index of the array in the sink that is out-of-bounds */
    data = 7;
    dataArray[2] = data;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink(dataArray);
}

/* goodB2G uses the BadSource with the GoodSink */
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink(int dataArray[]);

static void goodB2G()
{
    int data;
    int dataArray[5];
    /* Initialize data */
    data = -1;
    /* POTENTIAL FLAW: Read data from the console using fscanf() */
    fscanf(stdin, "%d", &data);//SLIVER_SOURCE
    dataArray[2] = data;
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink(dataArray);
}

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_good()
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
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_good();
    printLine("Finished good()");
#endif /* OMITGOOD */
#ifndef OMITBAD
    printLine("Calling bad()...");
    CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad();
    printLine("Finished bad()");
#endif /* OMITBAD */
    return 0;
}

#endif

//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:32--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:33 YES
//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:32--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:62 NO
//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:32--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:86 NO
//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:68--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:33 NO
//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:68--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:62 NO
//SLIVER_SOURCE:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a.c:68--->SLIVER_SINK:CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c:86 YES