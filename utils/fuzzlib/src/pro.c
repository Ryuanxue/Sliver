# include <stdio.h>
#include <sys/types.h>
char *fgets(char *s, int size, FILE *stream)
{
strcpy(s,"aaa");
return s;
}

char *fgetws(char *s, int size, FILE *stream)
{
strcpy(s,"aaa");
return s;
}



int fscanf(FILE *restrict stream, const char *restrict format, ...)
{
  
  return 1;
}

int recv(int s,char *buf,int len,int flag)
{
	return 1;
}
