#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include <stdio.h>
#include <string.h>
void sink_mtd();
char *copy(char *dest,const char *src);
void op(char *(str_op)(char *, const char *), const char *buf);
void dummy();
