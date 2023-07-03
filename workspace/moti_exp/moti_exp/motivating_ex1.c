#include "_costom_header_.h"
#include <stdio.h>
#include <string.h>

char sink_data[20];

void sink_mtd()
{
    printf("%s\n",sink_data);//SLIVER_SINK
}

char *copy(char *dest,const char *src)
{
    return strcpy(dest,src);
}

void op(char *(str_op)(char *, const char *), const char *buf){
	if( !strcmp(buf,"passwd") ){
		(*str_op)(sink_data,"secret"); //SLIVER_SOURCE
	}
}

void dummy(){
	printf("dummy\n");
}

int main(int argc, char **argv){
	op(strcpy, argv[1]);
	dummy();
	sink_mtd();
	return 0;
}
