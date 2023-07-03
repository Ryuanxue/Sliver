/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b.c
Label Definition File: CWE121_Stack_Based_Buffer_Overflow__CWE129.label.xml
Template File: sources-sinks-67b.tmpl.c
*/
/*
 * @description
 * CWE: 121 Stack Based Buffer Overflow
 * BadSource: fscanf Read data from the console using fscanf()
 * GoodSource: Larger than zero but less than 10
 * Sinks:
 *    GoodSink: Ensure the array index is valid
 *    BadSink : Improperly check the array index by not checking the upper bound
 * Flow Variant: 67 Data flow: data passed in a struct from one function to another in different source files
 *
 * */

#include "std_testcase.h"

typedef struct _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType
{
    int structFirst;
} CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType;

#ifndef OMITBAD

void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct)
{
    int data = myStruct.structFirst;
    {
        int i;
        int buffer[10] = { 0 };
        /* POTENTIAL FLAW: Attempt to write to an index of the array that is above the upper bound
        * This code does check to see if the array index is negative */
        if (data >= 0)
        {
            buffer[data] = 1;//SLIVER_SINK
            /* Print the array values */
            for(i = 0; i < 10; i++)
            {
                printIntLine(buffer[i]);
            }
        }
        else
        {
            printLine("ERROR: Array index is negative.");
        }
    }
}

#endif /* OMITBAD */

#ifndef OMITGOOD

/* goodG2B uses the GoodSource with the BadSink */
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct)
{
    int data = myStruct.structFirst;
    {
        int i;
        int buffer[10] = { 0 };
        /* POTENTIAL FLAW: Attempt to write to an index of the array that is above the upper bound
        * This code does check to see if the array index is negative */
        if (data >= 0)
        {
            buffer[data] = 1;//SLIVER_SINK
            /* Print the array values */
            for(i = 0; i < 10; i++)
            {
                printIntLine(buffer[i]);
            }
        }
        else
        {
            printLine("ERROR: Array index is negative.");
        }
    }
}

/* goodB2G uses the BadSource with the GoodSink */
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct)
{
    int data = myStruct.structFirst;
    {
        int i;
        int buffer[10] = { 0 };
        /* FIX: Properly validate the array index and prevent a buffer overflow */
        if (data >= 0 && data < (10))
        {
            buffer[data] = 1;//SLIVER_SINK
            /* Print the array values */
            for(i = 0; i < 10; i++)
            {
                printIntLine(buffer[i]);
            }
        }
        else
        {
            printLine("ERROR: Array index is out-of-bounds");
        }
    }
}

#endif /* OMITGOOD */
