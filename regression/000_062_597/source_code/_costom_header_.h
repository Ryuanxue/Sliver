#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define CHAR_ARRAY_SIZE (3 * sizeof(data) + 2)
int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_badSource(int data);
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_bad();
int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodG2BSource(int data);
void goodG2B();
int CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61b_goodB2GSource(int data);
void goodB2G();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_61_good();
#endif