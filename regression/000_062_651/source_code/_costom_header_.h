#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
typedef struct _CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType
{
    int structFirst;
} CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType;
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct);
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct);
void goodG2B();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink(CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType myStruct);
void goodB2G();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_good();
#endif