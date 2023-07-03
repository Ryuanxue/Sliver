#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define CHAR_ARRAY_SIZE (3 * sizeof(data) + 2)
int badSource(int data);
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_bad();
int goodG2BSource(int data);
void goodG2B();
int goodB2GSource(int data);
void goodB2G();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good();
#endif