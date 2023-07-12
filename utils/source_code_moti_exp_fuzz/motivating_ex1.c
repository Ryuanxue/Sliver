#include <stdio.h>
#include <string.h>
#ifdef INCLUDEMAIN
#include "argv-fuzz-inl.h"
#endif
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
	//写sensitive_data到fp
	FILE *fp=fopen("raw.txt","ab+");
	int len_sink=strlen("sink"); //继续读取len,根据len读取字符串sensitive_data
	fwrite(&len_sink,sizeof(int),1,fp);
	fwrite("sink",sizeof(char),len_sink,fp);
	int len_sensitive_data=strlen(sensitive_data);
	fwrite(&len_sensitive_data,sizeof(int),1,fp);
	fwrite(sensitive_data,sizeof(char),len_sensitive_data,fp);
	fclose(fp);
    printf("%s: %s\n",cmd, sensitive_data);//SLIVER_SINK
}

void op(char *(str_op)(char *, const char *), const char *data){
	(*str_op)(sensitive_data, data); 
}

int auth(const char *buf){
	if( !strcmp(buf, "passwd") ){

		//写字符串常量secret到fp
		FILE *fp=fopen("raw.txt","ab+");
		int len_source=strlen("source"); //则继续读取len,根据len读取字符串secret
	fwrite(&len_source,sizeof(int),1,fp);
	fwrite("source",sizeof(char),len_source,fp);
	int len_secret=strlen("secret");
	fwrite(&len_secret,sizeof(int),1,fp);
	fwrite("secret",sizeof(char),len_secret,fp);
	fclose(fp);
		op(copy, "secret"); //SLIVER_SOURCE
		//插装获得“secret”的值
		

		return 1;
	}
	return 0;
}
void dummy(){
	printf("dummy\n");
}
#ifdef INCLUDEMAIN
void main(int argc, char **argv){
AFL_INIT_ARGV();
FILE *fp=fopen("raw.txt","ab+");
	 int len_start=strlen("start"); //根据len读取字符串“source”，判断字符串如果为source,则继续读取len,根据len读取字符串argv[1]，继续读取len,根据len读取字符串sensitive_data
	fwrite(&len_start,sizeof(int),1,fp);
	fwrite("start",sizeof(char),len_start,fp);
	int len_argv=strlen(argv[1]);
	fwrite(&len_argv,sizeof(int),1,fp);
	fwrite(argv[1],sizeof(char),len_argv,fp);
	//fwrite写sensitive_data到fp
	int len_sensitive_data=strlen(sensitive_data);
	fwrite(&len_sensitive_data,sizeof(int),1,fp);
	fwrite(sensitive_data,sizeof(char),len_sensitive_data,fp);
	fclose(fp);
	
	int auth_ret=auth(argv[1]);
	//写auth_ret到fp1,首先写字符串“auth_ret”
	FILE *fp1=fopen("raw.txt","ab+");
	int len_auth_ret=strlen("auth_ret"); //根据len读取字符串“auth_ret”，判断字符串如果为auth_ret,则继续读取整数值赋值给auth_ret
	fwrite(&len_auth_ret,sizeof(int),1,fp1);
	fwrite("auth_ret",sizeof(char),len_auth_ret,fp1);
	fwrite(&auth_ret,sizeof(int),1,fp1);
	fclose(fp1);
	//插装auth_ret，根据返回值来分类路径，如果auth_ret=1，则pair为source,sink, 执行pass,否则，pair为null，sink，执行fail
	if (auth_ret){
		dummy();
		pass();
	} else {
		fail();
	}
}
#endif
