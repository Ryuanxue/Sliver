#include <stdio.h>
#include <string.h>
void sink_mtd(char *cmd);
void dummy();

char sensitive_data[20];

char *copy(char *dest, const char* src){
	return strcpy(dest, src);
}

void pass(){
	sink_mtd("Pass");
}
void fail(){
	sink_mtd("Fail");
}
void sink_mtd(char *cmd){
    printf("%s: %s\n",cmd, sensitive_data);//SLIVER_SINK
}

void op(char *(str_op)(char *, const char *), const char *data){
	(*str_op)(sensitive_data, data); 
}

int auth(const char *buf){
	if( !strcmp(buf, "passwd") ){
		op(copy, "secret"); //SLIVER_SOURCE
		return 1;
	}
	return 0;
}
void dummy(){
	printf("dummy\n");
}
void main(int argc, char **argv){
	int auth_ret=auth(argv[1]);
	if (auth_ret){
		dummy();
		pass();
	} else {
		fail();
	}
}
