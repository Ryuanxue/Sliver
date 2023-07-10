#ifndef _COSTOM_HEADER_H
#define _COSTOM_HEADER_H
#include <stdio.h>
#include <string.h>
void sink_mtd(char *cmd);
void dummy();
char *copy(char *dest,  char* src);
void pass();
void fail();
void sink_mtd(char *cmd);
void op(char *(str_op)(char *,  char *),  char *data);
int auth( char *buf);
void dummy();
#endif