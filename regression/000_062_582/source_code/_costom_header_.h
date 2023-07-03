#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include "std_testcase.h"
#define CHAR_ARRAY_SIZE (3 * sizeof(data) + 2)
void badSink(int data);
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_bad();
void goodB2G1Sink(int data);
void goodB2G1();
void goodB2G2Sink(int data);
void goodB2G2();
void goodG2BSink(int data);
void goodG2B();
void CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21_good();
#endif