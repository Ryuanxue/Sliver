import ctypes.wintypes
import os
import subprocess
import datetime
import time
import shutil
from xml.dom.minidom import parse
from string import Template
from ctypes import *
import random
import threading
import string
import re

cwe121_fscanf_cfuntemplate=Template("""
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wchar.h>

int main()
{
	FILE *fp;
    fp = fopen("raw", "rb");
    if (fp == NULL) {
        printf("Failed to open file\\n");
        return 1;
    }
    int source;
    int sink=0;
    int startread;
    fread(&startread, sizeof(int), 1, fp);
    char varname[50];
    memset(varname,'\\0',50);
    fread(varname,sizeof(char),startread,fp);
    char srcbuff[100];
    while (!feof(fp)) {
    	if(strcmp(varname,"source")==0)
    	{
            fread(&source,sizeof(int),1,fp);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
    	{
            fread(&sink,sizeof(int),1,fp);            
            int ret_value=${fun}(source);
            
                if (ret_value!=sink)
                {
                    printf("compare inconsist\\n");
                    printf("%d\\n",sink);
                    printf("%d\\n",ret_value);
                    exit(1);
                }
            
            goto next_data;
    	}
        next_data:
        {
            fread(&startread, sizeof(int), 1, fp);
            memset(varname,0,50);
            fread(varname,sizeof(char),startread,fp);
        }
    }
    fclose(fp);
}
""")

cwe121_cfuntemplate=Template("""#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wchar.h>

int main()
{
	FILE *fp;
    fp = fopen("raw", "rb");
    if (fp == NULL) {
        printf("Failed to open file\\n");
        return 1;
    }
    char *source;
    int sink=0;
    int startread;
    fread(&startread, sizeof(int), 1, fp);
    char varname[50];
    memset(varname,'\\0',50);
    fread(varname,sizeof(char),startread,fp);
    char srcbuff[100];
    while (!feof(fp)) {
    	if(strcmp(varname,"source")==0)
    	{
            int len_source;
            fread(&len_source,sizeof(int),1,fp);
             source=(char*)malloc(len_source*sizeof(char));
            fread(source,sizeof(char),len_source,fp);
            memcpy(srcbuff,source,len_source);
            free(source);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
    	{
            fread(&sink,sizeof(int),1,fp);            
            int ret_value=${fun}(srcbuff);
            if(strlen(srcbuff)>0 && strlen(srcbuff)<14)
            {
                if (ret_value!=sink)
                {
                    printf("compare inconsist\\n");
                    printf("%d\\n",sink);
                    printf("%d\\n",ret_value);
                    exit(1);
                }
            }
            goto next_data;
    	}
        next_data:
        {
            fread(&startread, sizeof(int), 1, fp);
            memset(varname,0,50);
            fread(varname,sizeof(char),startread,fp);
        }
    }
    fclose(fp);
}
""")

cwe606_wchar_t_cfuntemplate=Template("""
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wchar.h>

int main()
{
	FILE *fp;
    fp = fopen("raw", "rb");
    if (fp == NULL) {
        printf("Failed to open file\\n");
        return 1;
    }
    wchar_t *source=NULL;
    int sink=0;
    int startread;
    fread(&startread, sizeof(int), 1, fp);
    char varname[50];
    memset(varname,'\\0',50);
    fread(varname,sizeof(char),startread,fp);
    wchar_t srcbuff[100];
    while (!feof(fp)) {
    	if(strcmp(varname,"source")==0)
    	{
            int len_source;
            fread(&len_source,sizeof(len_source),1,fp);
             source=(wchar_t*)malloc(len_source*sizeof(wchar_t));
            fread(source,sizeof(wchar_t),len_source,fp);
            wcscpy(srcbuff,source);
            free(source);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
    	{
            fread(&sink,sizeof(int),1,fp);            
            int n;
            swscanf(srcbuff, L"%d", &n);
            if (n<100000)  
            {
                int ret_value=${fun}(srcbuff);
                if (ret_value!=sink)
                {
                    printf("compare inconsist\\n");
                    printf("%d\\n",sink);
                    printf("%d\\n",ret_value);
                    exit(1);
                }
            }  
            goto next_data;
    	}
        next_data:
        {
            fread(&startread, sizeof(int), 1, fp);
            memset(varname,0,50);
            fread(varname,sizeof(char),startread,fp);
        }
    }
    fclose(fp);
}
""")

cwe606_cfuntemplate=Template("""#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wchar.h>

int main()
{
	FILE *fp;
    fp = fopen("raw", "rb");
    if (fp == NULL) {
        printf("Failed to open file\\n");
        return 1;
    }
    char *source;
    int sink=0;
    int startread;
    fread(&startread, sizeof(int), 1, fp);
    char varname[50];
    memset(varname,'\\0',50);
    fread(varname,sizeof(char),startread,fp);
    char srcbuff[100];
    while (!feof(fp)) {
    	if(strcmp(varname,"source")==0)
    	{
            int len_source;
            fread(&len_source,sizeof(int),1,fp);
             source=(char*)malloc(len_source*sizeof(char));
            fread(source,sizeof(char),len_source,fp);
            memcpy(srcbuff,source,len_source);
            free(source);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
    	{
            fread(&sink,sizeof(int),1,fp);            
            int n;
            sscanf(srcbuff, "%d", &n);
            if (n<100000)  
            {
                int ret_value=${fun}(srcbuff);
                if (ret_value!=sink)
                {
                    printf("compare inconsist\\n");
                    printf("%d\\n",sink);
                    printf("%d\\n",ret_value);
                    exit(1);
                }
            }  
            goto next_data;
    	}
        next_data:
        {
            fread(&startread, sizeof(int), 1, fp);
            memset(varname,0,50);
            fread(varname,sizeof(char),startread,fp);
        }
    }
    fclose(fp);
}
""")


cwe134_cfuntemplate=Template("""#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wchar.h>

int main()
{
	FILE *fp;
    fp = fopen("raw", "rb");
    if (fp == NULL) {
        printf("Failed to open file\\n");
        return 1;
    }
    char *source;
    int sink=0;
    int startread;
    fread(&startread, sizeof(int), 1, fp);
    char varname[50];
    memset(varname,'\\0',50);
    fread(varname,sizeof(char),startread,fp);
    char srcbuff[100];
    char *sinkbuf;
    while (!feof(fp)) {
    	if(strcmp(varname,"source")==0)
    	{
            int len_source;
            fread(&len_source,sizeof(int),1,fp);
             source=(char*)malloc(len_source*sizeof(char));
            fread(source,sizeof(char),len_source,fp);
            memcpy(srcbuff,source,len_source);
            free(source);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
    	{
            fread(&sink,sizeof(int),1,fp);
            char* sinkval=(char*)malloc(sink*sizeof(char));
            fread(sinkval,sizeof(char),sink,fp);
            sinkbuf=${fun}(srcbuff);
            if(strcmp(sinkbuf,sinkval)!=0)
            {
                printf("compare consist\\n");
                printf("%s\\n",sinkval);
                printf("%s\\n",sinkbuf );
                exit(1);
            }
    		free(sinkval);
            free(sinkbuf);
            goto next_data;
    	}
        next_data:
        {
            fread(&startread, sizeof(int), 1, fp);
            memset(varname,0,50);
            fread(varname,sizeof(char),startread,fp);
        }
    }
    fclose(fp);
}""")

one_arrfun_ptr = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
				continue;
			//int data=0;
			${fun}(${onesource},opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				if (atoi(${onesource})<0)
			{
			}
			else if(atoi(${onesource})!=sink_outputarg_0)
				{isconsist=false;
				break;}
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

one_source_ret_3_int_param = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
				continue;
			int data=0;
			int data1=0;
			int data2=0;
			${fun}(${onesource},data,data1,data2,opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}
""")

basicfun_ptr_rand = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}
void trim_string(char *str)
{
	int len = strlen(str);

	if(str[len-1] == '\\n')
	{
		len--;		//字符串长度减一
		str[len] = 0;	//给字符串最后一个字符赋0，即结束符
	}
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	int ${onesource};
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;
     char randstr[10];
     memset(randstr,'\\0',10);
	${onesource}=0;
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if ((is_begin_with(line,"_mainend_")!=1) && strlen(sink)>0)
		{
			${onesource}=0;
			memset(sink,'\\0',256);
			memset(randstr,'\\0',10);
		}
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			${onesource}=atoi(s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			printf("sink:%s\\n",line);
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"randvalue:")==1)
		{
			trim_string(s+1);
			strcat(randstr,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
			printf("randvalue:%s\\n",randstr);
			if ((strcmp(s+1,"0")!=0 && ${onesource}==0) || strlen(sink)==0)
			{
			memset(randstr,'\\0',10);
			continue;
			}


			if (is_begin_with(randstr,${one})==1 || is_begin_with(randstr,${two})==1 || is_begin_with(randstr,${three})==1)
			{
				${onesource}=0;
				memset(sink,'\\0',sizeof(sink));
				memset(randstr,'\\0',10);
			}else if(is_begin_with(randstr,${four})==1)
			{  
				printf("randvalue");
				${fun}(${onesource},opsink1);
				printf("sink1:%d\\n",sink_outputarg_0);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			${onesource}=0;
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
			memset(randstr,'\\0',10);
			}

		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

one_source_int_ret_rand = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}
void trim_string(char *str)
{
	int len = strlen(str);

	if(str[len-1] == '\\n')
	{
		len--;		//字符串长度减一
		str[len] = 0;	//给字符串最后一个字符赋0，即结束符
	}
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;
     char randstr[10];
     memset(randstr,'\\0',10);
	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if ((is_begin_with(line,"_mainend_")!=1) && strlen(sink)>0)
		{
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			memset(randstr,'\\0',10);
		}
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			printf("sink:%s\\n",line);
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"randvalue:")==1)
		{
			trim_string(s+1);
			strcat(randstr,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
			printf("randvalue:%s\\n",randstr);
			if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
			{
			memset(randstr,'\\0',10);
			continue;
			}

			int data=0;
			if (is_begin_with(randstr,${one})==1 || is_begin_with(randstr,${two})==1 || is_begin_with(randstr,${three})==1)
			{
				memset(${onesource},'\\0',256);
				memset(sink,'\\0',sizeof(sink));
				memset(randstr,'\\0',10);
			}else if(is_begin_with(randstr,${four})==1)
			{  
				printf("randvalue");
				${fun}(${onesource},data,opsink1);
				printf("sink1:%d\\n",sink_outputarg_0);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
			memset(randstr,'\\0',10);
			}

		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

basicbasicfun_ptr = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	int ${onesource};
	int ${twosource};
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	${onesource}=0;
	${twosource}=0;
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			${onesource}=atoi(s+1);

		}
		else if (is_begin_with(line,"${twosource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			${twosource}=atoi(s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
			//if (((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0)) || ((strcmp(${twosource},"0")!=0 && atoi(${twosource})==0)) || 
			if (strlen(sink)==0)
				continue;
			${fun}(${onesource},${twosource},opsink1);
			// memset(line,'\\0',256);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			${onesource}=0;
			${twosource}=0;
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")
two_source_int_ret = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char ${twosource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(${twosource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if (is_begin_with(line,"${twosource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${twosource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
			//if (strcmp(${onesource},"\\n")==0 || strcmp(${twosource},"\\n")==0)
			if (((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0)) || ((strcmp(${twosource},"0")!=0 && atoi(${twosource})==0)) || strlen(sink)==0)
				continue;
			int data=0;
			${fun}(${onesource},data,${twosource},opsink1);
			// memset(line,'\\0',256);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			memset(${onesource},'\\0',256);
			memset(${twosource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

one_arrbasicone_arrfun_ptr = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
				continue;
			int data1=0;
			int data2[5]={0};
			${fun}(${onesource},data1,data2,opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

basicfun_ptr = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	int ${onesource};
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	${onesource}=0;
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			${onesource}=atoi(s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(s+1,"0")!=0 && ${onesource}==0) || strlen(sink)==0)
				continue;
			${fun}(${onesource},opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			${onesource}=0;
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

one_arrone_ptr_one_ptrfun_ptr = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
				continue;
			int *data1=NULL;
			int *data2=NULL;
			${fun}(${onesource},data1,data2,opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				isconsist=false;
				break;
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

one_source_int_ret = Template("""
#include "stdio.h"
#include <stdlib.h>
 #include "_costom_header_.h"
#include "_slice_header_.h"
#include <string.h>
 int sink_outputarg_0;
void opsink1( int arg0)
{
	sink_outputarg_0 = arg0;
}

int is_begin_with(const char * str1,char *str2)
{
	if(str1 == NULL || str2 == NULL)
	return -1;
	int len1 = strlen(str1);
	int len2 = strlen(str2);
	if((len1 < len2) || (len1 == 0 || len2 == 0))
	return -1;
	char *p = str2;
	int i = 0;
	while(*p != '\\0')
	{
	if(*p != str1[i])
	return 0;
	p++;
	i++;
	}
	return 1;
}

int main(int argc,char** argv)
{
	FILE *fp;
	char line[256];
	char ${onesource}[256];
	char sink[256];
	char slicesink[256];
	int isconsist=true;
	char *s;

	memset(${onesource},'\\0',256);
	memset(sink,'\\0',256);
	fp=fopen("raw_input.txt","r");
	if(fp==NULL)
	{
		printf("can not load file!");
		return 1;
	}
	sink_outputarg_0=0;
	while(!feof(fp))
	{
		fgets(line,256,fp);
		 s=strstr(line,":");
		if (s==NULL) continue;
		if (is_begin_with(line,"${onesource}")==1)
		{
			if (strlen(sink)>0)
			{
				memset(sink,'\\0',sizeof(sink));
			}
			strcpy(${onesource},s+1);
		}
		else if(is_begin_with(line,"sink:")==1)
		{
			strcpy(sink,s+1);
		}
		else if(is_begin_with(line,"_mainend_:")==1)
		{	
		if ((strcmp(${onesource},"0")!=0 && atoi(${onesource})==0) || strlen(sink)==0)
				continue;
			int data=0;
			${fun}(${onesource},data,opsink1);
			if(atoi(sink)!=sink_outputarg_0)
			{
				if (atoi(${onesource})<0)
			{
			}
			else if(atoi(${onesource})!=sink_outputarg_0)
				{isconsist=false;
				break;}
			}
			memset(${onesource},'\\0',256);
			memset(sink,'\\0',256);
			sink_outputarg_0=0;
		}		
	}
	fclose(fp);
	if(isconsist)
	    exit(0);
	else
	    exit(1);
	return 0;
}""")

test_source = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r",encoding='utf-8',errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [c_int,charptr]

${source} = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    if newstr.startswith("${source}:"):
        ${source}=newstr.replace("${source}:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source}.encode('utf-8')
        pipe_out,pipe_in=os.pipe()
        stdout=os.dup(1)
        os.dup2(pipe_in,1)
        adder.${fun}(
        0,b_string1)
        os.dup2(stdout,1)
        os.close(pipe_in)
        r=os.fdopen(pipe_out)
        output=r.read()
        readlist=output.split("\\n")
        resink=""
        for ele in readlist:
            if "_sink_:" in ele:
                ind1=ele.index("_sink_:")
                resink=ele[ind1+7:]
                break
        print(resink)
        if resink==sink:
            pass
        else:
            exit(1)
        ${source}=""
        sink=""
    """)

test_source_env = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r",encoding='utf-8',errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,charptr]

${source} = ""
tempstr=""
sink = ""
for i in linelist:
    newstr=i.strip()
    if newstr.startswith("${source}:"):
        ${source}=newstr.replace("${source}:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source}.encode('utf-8')
        b_string2= tempstr.encode('utf-8')
        pipe_out,pipe_in=os.pipe()
        stdout=os.dup(1)
        os.dup2(pipe_in,1)
        adder.${fun}(
        b_string1,b_string2)
        os.dup2(stdout,1)
        os.close(pipe_in)
        r=os.fdopen(pipe_out)
        output=r.read()
        readlist=output.split("\\n")
        resink=""
        for ele in readlist:
            if "_sink_:" in ele:
                ind1=ele.index("_sink_:")
                resink=ele[ind1+7:]
                break
        print(resink)
        if resink==sink:
            pass
        else:
            exit(1)
        ${source}=""
        sink=""
    """)

test_env = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r",encoding='utf-8',errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr]

${source} = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    if newstr.startswith("${source}:"):
        ${source}=newstr.replace("${source}:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source}.encode('utf-8')
        pipe_out,pipe_in=os.pipe()
        stdout=os.dup(1)
        os.dup2(pipe_in,1)
        adder.${fun}(
        b_string1,0)
        os.dup2(stdout,1)
        os.close(pipe_in)
        r=os.fdopen(pipe_out)
        output=r.read()
        readlist=output.split("\\n")
        resink=""
        for ele in readlist:
            if "_sink_:" in ele:
                ind1=ele.index("_sink_:")
                resink=ele[ind1+7:]
                break
        print(resink)
        if resink==sink:
            pass
        else:
            exit(1)
        ${source}=""
        sink=""
    """)

twoprameter_for_socket = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int]

source = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode('latin1')
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink) > 0 and source != "@" and len(source) < 14:
            if int(sink)==0 and source.startswith("0"):
                source=source[:1]
                b_string1=source.encode('latin1')
                pass
            else:
                continue
            adder.${fun}(
            b_string1,int(sink))
        source=""
        sink=""
    """)

one_ptr_one_ptr = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,charptr]

source = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry_:"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,b_string2)
        source=""
        sink=""
    """)
two_parameter_char_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int]

source = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry_:"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,int(sink))
        source=""
        sink=""
    """)

two_parameter_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [c_int,c_int]

source = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry_:"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            int(b_string1),int(sink))
        source=""
        sink=""
    """)

three_parameter_char_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int,c_int]

source = ""
temp= 0
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string3 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,temp,int(sink))
        source=""
        sink=""
    """)

three_parameter_char_char_char = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,charptr,charptr]

source = ""
temp= ""
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2 = temp.encode('latin1')
        b_string3 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,b_string2,b_string3)
        source=""
        sink=""
    """)

four_parameter_int_int_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [c_int,c_int,c_int,c_int]

source = ""
temp= 0
onetemp=0
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string4 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            int(b_string1),temp,onetemp,int(sink))
        source=""
        sink=""
    """)

four_parameter_char_int_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int,c_int,c_int]

source = ""
temp= 0
onetemp=0
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string4 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,temp,onetemp,int(sink))
        source=""
        sink=""
    """)

four_parameter_char_int_int_char = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int,c_int,charptr]

source = ""
temp= 0
onetemp=0
sink = ""
for i in linelist:
    newstr=i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source=newstr.replace("source:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string4 = sink.encode('latin1')
        if source=="(null)":
            continue
        if len(sink)>0:
            adder.${fun}(
            b_string1,temp,onetemp,b_string4)
        source=""
        sink=""
    """)

test_param4 = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r",encoding='utf-8',errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,c_int,charptr,c_int]

${source1} = ""
${source2} = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    if newstr.startswith("${source1}:"):
        ${source1}=newstr.replace("${source1}:","")
    if newstr.startswith("${source2}:"):
        ${source2}=newstr.replace("${source2}:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source1}.encode('utf-8')
        b_string2 = ${source2}.encode('utf-8')
        pipe_out,pipe_in=os.pipe()
        stdout=os.dup(1)
        os.dup2(pipe_in,1)
        adder.${fun}(
        b_string1,0,b_string2,0)
        os.dup2(stdout,1)
        os.close(pipe_in)
        r=os.fdopen(pipe_out)
        output=r.read()
        readlist=output.split("\\n")
        resink=""
        for ele in readlist:
            if "_sink_:" in ele:
                ind1=ele.index("_sink_:")
                resink=ele[ind1+7:]
                break
        print(resink)
        if resink==sink:
            pass
        else:
            exit(1)
        ${source1}=""
        ${source2}=""
        sink=""
    """)

test_env2 = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt" #fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r",encoding='utf-8',errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
adder = CDLL('./adder.so')
charptr = POINTER(c_char)
adder.${fun}.argtypes = [charptr,charptr]

${source1} = ""
${source2} = ""
sink = ""
for i in linelist:
    newstr=i.strip()
    if newstr.startswith("${source1}:"):
        ${source1}=newstr.replace("${source1}:","")
    if newstr.startswith("${source2}:"):
        ${source2}=newstr.replace("${source2}:","")
    if newstr.startswith("sink:"):
        sink=newstr.replace("sink:","")
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source1}.encode('utf-8')
        b_string2 = ${source2}.encode('utf-8')
        pipe_out,pipe_in=os.pipe()
        stdout=os.dup(1)
        os.dup2(pipe_in,1)
        adder.${fun}(
        b_string1,b_string2)
        os.dup2(stdout,1)
        os.close(pipe_in)
        r=os.fdopen(pipe_out)
        output=r.read()
        readlist=output.split("\\n")
        resink=""
        for ele in readlist:
            if "_sink_:" in ele:
                ind1=ele.index("_sink_:")
                resink=ele[ind1+7:]
                break
        print(resink)
        if resink==sink:
            pass
        else:
            exit(1)
        ${source1}=""
        ${source2}=""
        sink=""
    """)

rand4_char_char = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, charptr]

source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source = ""
        sink = ""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${arg1} or randlist==${arg2} or randlist==${arg3} or randlist==${arg4} or randlist==${arg5} or randlist==${arg6} or randlist==${arg7} or randlist==${arg8} or randlist==${arg9} or randlist==${arg10} or randlist==${arg11} or randlist==${arg12} or randlist==${arg13} or randlist==${arg14} or randlist==${arg5}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${arg0}:
            if len(sink)>0:
                ${adder}.${fun}(
                    b_string1, b_string2)
            source = ""
            sink = ""
            randlist.clear()
""")

rand4_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    c_int, c_int]

source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source = ""
        sink = ""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${arg1} or randlist==${arg2} or randlist==${arg3} or randlist==${arg4} or randlist==${arg5} or randlist==${arg6} or randlist==${arg7} or randlist==${arg8} or randlist==${arg9} or randlist==${arg10} or randlist==${arg11} or randlist==${arg12} or randlist==${arg13} or randlist==${arg14} or randlist==${arg5}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${arg0}:
            if len(sink)>0 and len(source)>0:
                ${adder}.${fun}(
                    int(b_string1), int(sink))
            source = ""
            sink = ""
            randlist.clear()
""")

rand4_char_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, c_int]

source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source = ""
        sink = ""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${arg1} or randlist==${arg2} or randlist==${arg3} or randlist==${arg4} or randlist==${arg5} or randlist==${arg6} or randlist==${arg7} or randlist==${arg8} or randlist==${arg9} or randlist==${arg10} or randlist==${arg11} or randlist==${arg12} or randlist==${arg13} or randlist==${arg14} or randlist==${arg5}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${arg0}:
            if len(sink)>0:
                ${adder}.${fun}(
                    b_string1, int(sink))
            source = ""
            sink = ""
            randlist.clear()
""")

tast_rand4 = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r", encoding='utf-8', errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, c_int]

${source} = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    if newstr.startswith("${source}:"):
        ${source} = newstr.replace("${source}:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source}.encode('utf-8')
        if randlist == ${arg1} or randlist==${arg2} or randlist==${arg3} or randlist==${arg4} or randlist==${arg5} or randlist==${arg6} or randlist==${arg7} or randlist==${arg8} or randlist==${arg9} or randlist==${arg10} or randlist==${arg11} or randlist==${arg12} or randlist==${arg13} or randlist==${arg14} or randlist==${arg5}:
            ${source} = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${arg0}:
            pipe_out, pipe_in = os.pipe()
            stdout = os.dup(1)
            os.dup2(pipe_in, 1)
            ${adder}.${fun}(
                b_string1, 0)
            os.dup2(stdout, 1)
            os.close(pipe_in)
            r = os.fdopen(pipe_out)
            output = r.read()
            readlist = output.split("\\n")
            resink = ""

            for ele in readlist:
                if "_sink_:" in ele:
                    ind1 = ele.index("_sink_:")
                    resink = ele[ind1 + 7:]
                    break
            if resink == sink:
                pass
            else:
                exit(1)
            ${source} = ""
            sink = ""
            randlist.clear()
""")

rand2_int_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    c_int, c_int]
source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${one} or randlist==${two} or randlist==${three}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${four}:
            if len(sink)>0 and len(source)>0:
                ${adder}.${fun}(
                    int(b_string1), int(sink))
            source = ""
            sink = ""
            randlist.clear()
""")

rand2_char_char = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, charptr]
source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${one} or randlist==${two} or randlist==${three}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${four}:
            if len(sink)>0:
                ${adder}.${fun}(
                    b_string1, b_string2)
            source = ""
            sink = ""
            randlist.clear()
""")

rand2_char_int = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "rb")
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, c_int]
source = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    newstr=newstr.decode("latin1")
    if newstr.startswith("_mainentry"):
        source=""
        sink=""
    if newstr.startswith("source:"):
        if len(sink)>0:
            sink=""
        source = newstr.replace("source:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = source.encode('latin1')
        b_string2=sink.encode("latin1")
        if randlist == ${one} or randlist==${two} or randlist==${three}:
            source = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${four}:
            if len(sink)>0:
                ${adder}.${fun}(
                    b_string1, int(sink))
            source = ""
            sink = ""
            randlist.clear()
""")

tast_rand2 = Template("""import os.path
import sys
from ctypes import *
filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
fileopen = open(os.path.abspath(filename), "r", encoding='utf-8', errors='ignore')
linelist = fileopen.readlines()
fileopen.close()
${adder} = CDLL('./${adder}.so')
charptr = POINTER(c_char)
${adder}.${fun}.argtypes = [
    charptr, c_int]

${source} = ""
sink = ""
randlist = []
for i in linelist:
    newstr = i.strip()
    if newstr.startswith("${source}:"):
        ${source} = newstr.replace("${source}:", "")
    if newstr.startswith("sink:"):
        sink = newstr.replace("sink:", "")
    if newstr.startswith("randvalue:"):
        randlist.append(newstr[-1])
    if newstr.startswith("_mainend_:..."):
        b_string1 = ${source}.encode('utf-8')
        if randlist == ${one} or randlist==${two} or randlist==${three}:
            ${source} = ""
            sink = ""
            randlist.clear()
            continue
        elif randlist == ${four}:
            pipe_out, pipe_in = os.pipe()
            stdout = os.dup(1)
            os.dup2(pipe_in, 1)
            ${adder}.${fun}(
                b_string1, 0)
            os.dup2(stdout, 1)
            os.close(pipe_in)
            r = os.fdopen(pipe_out)
            output = r.read()
            readlist = output.split("\\n")
            resink = ""

            for ele in readlist:
                if "_sink_:" in ele:
                    ind1 = ele.index("_sink_:")
                    resink = ele[ind1 + 7:]
                    break
            if resink == sink:
                pass
            else:
                exit(1)
            ${source} = ""
            sink = ""
            randlist.clear()
""")


def find_source_sink_in_groundtruth(dirpath, source_line_list, sink_line_list):
    for root, dirs, files in os.walk(dirpath):
        for file in files:
            if file.endswith(".h"):
                continue
            if file == "io.c":
                continue
            src_file = os.path.join(root, file)
            open_src_file = open(src_file, "r", encoding='utf-8', errors='ignore')
            src_file_lines = open_src_file.readlines()
            open_src_file.close()
            i = 1
            for line in src_file_lines:
                if "SLIVER_SOURCE" in line and not line.startswith("//"):
                    srcele = file + ":" + str(i)
                    source_line_list.append(srcele)
                elif "SLIVER_SINK" in line and not line.startswith("//"):
                    sinkele = file + ":" + str(i)
                    sink_line_list.append(sinkele)
                i = i + 1


def auto_decoup_one(dirname,outputdir): #dirname is the name of the test case
    
    # oldtestcase_dir = "/home/raoxue/Documents/cbmc_verifed_juliet_test_case_ground_truth/"
   
    oldtestcase_dir="/home/raoxue/Documents/finally_testcase/"
    newtestcase_dir=outputdir

    # openbad_source_sink_file.close()
    # badsource_sink_linelist=['000_080_029']
    # badsource_sink_linelist = ['000_062_530']
    subdirname = dirname
    if subdirname.startswith("000_") or subdirname=='moti_exp': 
        oldworkspacedir=oldtestcase_dir+subdirname
        newworkspacedir = newtestcase_dir + subdirname
        hh_content_list=[] # store the content of the header file
        fun_bracestack=[] # store the brace of the function
        struct_brachstack=[] # store the brace of the struct
        if not os.path.exists( newworkspacedir):    
            os.makedirs(newworkspacedir)
        constm_header=newworkspacedir+"/_costom_header_.h" #  creat a new header file of the test case
        wopen_constomheader=open(constm_header,"w")
        wopen_constomheader.write("#ifndef _COSTOM_HEADER_H\n")
        wopen_constomheader.write("#define _COSTOM_HEADER_H\n")
        # wopen_constomheader.write('#include "std_testcase.h"\n')
        # wopen_constomheader.write('#include "std_testcase_io.h"\n')
        for root, dirs, files in os.walk(oldworkspacedir): 
            for file in files: 
                print(file)
                src_file = os.path.join(root, file)
                dest_file=newworkspacedir+"/"+file
                if file.endswith(".h"):
                    shutil.copy(src_file, dest_file)
                elif file.endswith(".c"): 
                    if file=="io.c":
                        shutil.copy(src_file,dest_file)
                    else: 
                        #打开文件，判断文件中有无结构体，全局变量声明，识别出所有的函数声明
                        lastchar=file[-3]
                        if not lastchar.isdigit():
                            if lastchar!='a':
                                shutil.copy(src_file,dest_file)
                                continue
                        print(lastchar)
                        ropenfile=open(src_file,"r")
                        rfilelist=ropenfile.readlines()
                        ropenfile.close()
                        wopenfile=open(dest_file,"w")
                        wopenfile.write('#include "_costom_header_.h"\n')
                        struct_flag=False #判断是否在结构体中
                        fun_flag=False #判断是否在函数中
                        comment_flag=False #判断是否在注释中
                        non_pre_complig_falg=False #判断是否在非预编译的注释中
                        for line in rfilelist:
                            # print(line)
                            # print(struct_flag)
                            # print(fun_flag)
                            # print(comment_flag)
                            linestrip=line.strip()

                            if not linestrip.startswith("#") and not non_pre_complig_falg and linestrip!="" and not linestrip.startswith("/") and not comment_flag:
                                non_pre_complig_falg=True

                            if comment_flag: #注释全部复制 
                                wopenfile.write(line)
                                if linestrip.endswith("*/"):
                                    comment_flag=False
                            elif linestrip.startswith("/*"):
                                wopenfile.write(line)
                                if not linestrip.endswith("*/"):
                                    comment_flag=True
                            elif linestrip.startswith("/"): #注释
                                wopenfile.write(line)
                            #判断语句是否为预编译且还没有编写任何c语句
                            
                            elif linestrip.startswith("#") and not non_pre_complig_falg:
                                wopenfile.write(line)
                                if linestrip=="#ifndef OMITBAD":
                                        continue
                                wopen_constomheader.write(line)

                            elif linestrip.startswith("#") or linestrip=="": #空格行和预编译 
                                wopenfile.write(line)
                            elif fun_flag: #函数
                                wopenfile.write(line)
                                if linestrip.endswith(";"):
                                    continue
                                if "{" in linestrip:
                                    fun_bracestack.append("{")
                                elif "}" in linestrip:
                                    fun_bracestack.pop()
                                    if len(fun_bracestack)==0:
                                        fun_flag=False
                            elif "(" in linestrip and not linestrip.endswith(";"):#从函数定义中提取函数声明
                                if "static " in linestrip:
                                    newlinestrip=linestrip.replace("static ","")
                                    wopenfile.write(line.replace("static ",""))
                                else:
                                    newlinestrip = linestrip
                                    wopenfile.write(line)

                                fun_flag=True
                                if "main" in linestrip:
                                    continue
                                if linestrip.endswith(")"):
                                    newline=newlinestrip+";\n"
                                    if newline.strip().replace(' ','') in hh_content_list:
                                        continue
                                    hh_content_list.append(newline.strip().replace(' ',''))
                                    wopen_constomheader.write(newline)
                                elif linestrip.endswith("{"):
                                    fun_bracestack.append("{")
                                    newline=newlinestrip[:-1]+";\n"
                                    if newline.strip() in hh_content_list:
                                        continue
                                    hh_content_list.append(newline.strip())
                                    wopen_constomheader.write(newline)

                            elif struct_flag: #结构体定义
                                if linestrip.replace(' ','') in hh_content_list:
                                    pass
                                else:
                                    hh_content_list.append(linestrip.replace(' ',''))
                                    wopen_constomheader.write(line)
                                if "{" in linestrip:
                                    struct_brachstack.append("{")
                                elif "}" in linestrip:
                                    struct_brachstack.pop()
                                    if len(struct_brachstack)==0:
                                        struct_flag=False
                            elif len(fun_bracestack)==0 and ("struct " in linestrip or "union" in linestrip):
                                if linestrip.replace(' ','') in hh_content_list:
                                    pass
                                else:
                                    hh_content_list.append(linestrip.replace(' ',''))
                                    wopen_constomheader.write(line)
                                if "{" in linestrip:
                                    struct_brachstack.append("{")
                                struct_flag=True

                            else:
                                # if linestrip.startswith("extern"):
                                #     continue
                                if "static " in linestrip:
                                    linestrip=linestrip.replace("static ","")
                                # if linestrip.replace(' ','') in hh_content_list:
                                #     continue
                                # hh_content_list.append(linestrip.replace(' ',''))
                                # wopen_constomheader.write(line)
                                if "(" in linestrip and  linestrip.endswith(";"):
                                    wopen_constomheader.write(linestrip+"\n")
                                else:
                                    wopenfile.write(linestrip+"\n")
                                print(linestrip)
                        wopenfile.close()
        wopen_constomheader.write("#endif")
        wopen_constomheader.close()


def copydir(inputdir, outdir):
    path_list = os.listdir(inputdir)
    for file in path_list:
        newinput=inputdir+"/"+file
        newoutput=outdir+"/"+file

        if os.path.isdir(newinput):
            if os.path.exists(newoutput):
                pass
            else:
                os.makedirs(newoutput)
            copydir(newinput,newoutput)
        elif  os.path.exists(newinput):
            print(newinput)
            if os.path.splitext(file)[1] ==".h" or os.path.splitext(file)[1]==".c":
                file1 = open(newinput, "r", encoding='utf-8',errors='ignore')
                file2 = open(newoutput, 'w', encoding='utf-8')
                try:
                    for line in file1.readlines():
                        if "const" in line:
                            line = re.sub(r'\bconst\b', "", line)
                        if "static " in line:
                            line =re.sub(r'\bstatic\b',"",line)
                        file2.write(line)
                finally:
                    file1.close()
                    file2.close()
            else:
                shutil.copyfile(newinput, newoutput)

def auto_fuzz_one(dirname):
    inputdir="/home/raoxue/Documents/finally_testcase/"
    inputdir_path = inputdir + dirname
    
    
    #解耦原代码到workprodir
    workprodir = "workspace_fuzz/" + dirname+"/"
    if not os.path.exists(workprodir):
        os.makedirs(workprodir)
    auto_decoup_one(dirname,workprodir)

    output_dir="workspace_fuzz/"+dirname+"/source_code"
    #复制workprodir中的文件到
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    copydir(workprodir+dirname,output_dir)

    shutil.rmtree(workprodir+dirname) #删除解耦后的临时文件

    source_line_list = []
    sink_line_list = []
    find_source_sink_in_groundtruth(output_dir, source_line_list, sink_line_list)
    print(source_line_list)
    print(sink_line_list)
   
    for srcinfo in source_line_list:
        srcsplitind = srcinfo.index(":")
        srcfile = srcinfo[:srcsplitind]
        srcline = srcinfo[srcsplitind + 1:]
        print(srcfile)
        print(srcline)
        for sinkinfo in sink_line_list:
            sinksplitind = sinkinfo.index(":")
            sinkfile = sinkinfo[:sinksplitind]
            sinkline = sinkinfo[sinksplitind + 1:]
            print(sinkfile)
            print(sinkline)
            # auto generate slice
            if "_socket_" in srcfile:
                srcfunname = "recv"
                argnum = "2"
            elif "_fscanf_" in srcfile:
                srcfunname = "fscanf"
                argnum = "3"
            elif "_fgets_" in srcfile or "_char_console_" in srcfile or "_file_" in srcfile:
                srcfunname = "fgets"
                argnum = "1"
            elif "_environment_" in srcfile:
                srcfunname = "getenv"
                argnum = "0"
            elif "_wchar_t_console" in srcfile or "_wchar_t_file_" in srcfile:
                srcfunname = "fgetws"
                argnum = "1"
            command = "./gen_slice_for_fuzz_run " + dirname +  " " + srcfile + " " + srcline + " " + sinkfile + " " + sinkline + " 50 " + srcfunname + " " + argnum + " >err.txt"
            print(command)
            (status, output) = subprocess.getstatusoutput(command)
            print(output)


def getPid():
    cmd = "ps aux| grep afl-fuzz"
    out = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    infos = out.stdout.read().splitlines()
    pidlist = []
    if len(infos) >= 1:
        for i in infos:
            pid = i.split()[1]
            if pid not in pidlist:
                pidlist.append(pid)
        return pidlist
    else:
        return -1


def execute_command(cmdstring, timeout=None):
    if timeout:
        end_time = datetime.datetime.now() + datetime.timedelta(seconds=timeout)

    sub = subprocess.Popen(cmdstring, stdin=subprocess.PIPE, bufsize=4096, shell=True)

    while sub.poll() is None:
        time.sleep(0.1)
        if timeout:
            if end_time <= datetime.datetime.now():
                sub.kill()
                return "TIME_OUT"


def compare_sink(dirname):
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)
            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            charptr = POINTER(c_char)
            filename = r"raw_input.txt"  # fuzz原代码生成的raw_input.txt文件
            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"
            '''编译切片为共享库'''
            com_to_so = "gcc -shared -Wl,-soname,adder -o adder.so -fPIC " + code_gened_dir + "/" + cfilename + " " + source_code_dir + "/*.c"
            (status, output) = subprocess.getstatusoutput(com_to_so)
            os.system("mv adder.so " + perslicedir)

            """打开raw_input.txt文件，读取内容进行比较"""
            src_sink_file = perslicedir + "/" + filename
            fileopen = open(src_sink_file, "r", encoding='unicode_escape', errors='ignore')
            linelist = fileopen.readlines()
            fileopen.close()
            flag = False
            ind = 0
            sourcelist = []
            for line in linelist:
                if line.strip().startswith("source"):
                    if line.strip() in sourcelist:
                        continue
                    sourcelist.append(line.strip())
                    flag = True
                elif flag and line.strip().startswith("sink"):
                    sourcelist.append(line.strip())
                    flag = False

            adder = CDLL(perslicedir + '/adder.so')
            #
            # """解析切片函数的函数名，切片函数中有多少个参数，怎么赋值才能够运行
            # 初始化参数"""
            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            # if len(paramsnode)>2:
            #     continue

            adderfuncall = Template('adder.${fun}.argtypes=[]')
            exec(adderfuncall.substitute(fun=genfunname))
            adderfuncall = Template('adder.${fun}.restype=charptr')
            exec(adderfuncall.substitute(fun=genfunname))
            ind = 0
            for i in sourcelist:
                ind = ind + 1
                if i.startswith("sink:"):
                    continue
                source = i.replace("source:", "")

                b_string1 = source.encode('utf-8')
                #
                datalen = 0
                temptem = Template('adder.${fun}(${p1},${p2})')
                tempstr = temptem.substitute(fun=genfunname, p1=b_string1, p2=datalen)
                print(file)
                sink = eval(tempstr)
                # print("---------------------------------------")
                print("-----------")
                print(string_at(sink))
                print(sourcelist[ind].replace("sink:", ''))
                temp = string_at(sink).decode('utf-8', errors='ignore')
                print(temp)
                print(type(temp))
                print(len(temp))
                len1 = len(temp)
                len2 = len(sourcelist[ind].replace("sink", ''))
                print(len(sourcelist[ind].replace("sink", '')))
                if len1 + 1 != len2:
                    continue
                if string_at(sink).decode('utf-8', errors='ignore') == sourcelist[ind].replace("sink:", ''):
                    print("yyyyy")
                else:
                    print("xxxxxxxxxxxxxxxxx")
                # print(string_at(sink).decode('utf-8',errors='ignore'))
                # print("-----------------------------------------")


def compare_sink_one_new(dirname):
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)
            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"
            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            funtypesig = ""
            for arg in paramsnode:
                funtypesig = funtypesig + arg.getAttribute("type")

            print(len(paramsnode))
            filename = "compare_test.py"
            fileopen = open(filename, "w")
            if len(randfiles) > 0:
                deal_randcase(randlines, genfunname, perslicedir, funtypesig)
            elif len(paramsnode) == 2:

                if "_socket_" in genfunname:
                    fileopen.write(twoprameter_for_socket.substitute(fun=genfunname))
                elif funtypesig == "charint":
                    fileopen.write(two_parameter_char_int.substitute(fun=genfunname))
                elif funtypesig == "intint":
                    fileopen.write(two_parameter_int_int.substitute(fun=genfunname))
                else:
                    fileopen.write(one_ptr_one_ptr.substitute(fun=genfunname))

            elif len(paramsnode) == 3:
                if funtypesig == "charintint":
                    fileopen.write(three_parameter_char_int_int.substitute(fun=genfunname))
                elif funtypesig == "charcharchar":
                    fileopen.write(three_parameter_char_char_char.substitute(fun=genfunname))
            elif len(paramsnode) == 4:
                if funtypesig == "intintintint":
                    fileopen.write(four_parameter_int_int_int_int.substitute(fun=genfunname))
                elif funtypesig == "charintintint":
                    fileopen.write(four_parameter_char_int_int_int.substitute(fun=genfunname))
                elif funtypesig == "charintintchar":
                    fileopen.write(four_parameter_char_int_int_char.substitute(fun=genfunname))
            fileopen.close()
            if len(randfiles) == 0:
                os.system("mv compare_test.py " + perslicedir)
            os.system("cp fuzzlib/mylib.so " + perslicedir)
            print(perslicedir)

            statuslist = []

            if len(randfiles) > 0:
                randlinelist = randlines[0].getElementsByTagName("randline")
                if len(randlinelist) == 2:
                    for i in range(4):
                        com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test" + str(i) + ".py"
                        sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so python3 compare_test' + str(
                            i) + ".py"
                        # (status, output) = subprocess.getstatusoutput(com)
                        if "_socket_" in genfunname:
                            ret = os.system(sockt_com)
                        else:
                            ret = os.system(com)
                        if ret != 0:
                            statuslist.append("nnnn")
                    if len(statuslist) == 0:
                        cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                        os.system(cosiscom)
                    else:
                        cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                        os.system(cosiscom)

                elif len(randlinelist) == 4:
                    for i in range(16):
                        com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test" + str(i) + ".py"
                        sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so python3 compare_test' + str(
                            i) + ".py"
                        # (status, output) = subprocess.getstatusoutput(com)
                        if "_socket_" in genfunname:
                            ret = os.system(sockt_com)
                        else:
                            ret = os.system(com)
                        if ret != 0:
                            statuslist.append("nnnn")
                    if len(statuslist) == 0:
                        cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                        os.system(cosiscom)
                    else:
                        cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                        os.system(cosiscom)
            else:
                com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test.py"
                sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so python3 compare_test.py'
                if "_socket_" in genfunname:
                    # (status, output) = subprocess.getstatusoutput(sockt_com)
                    ret = os.system(sockt_com)
                else:
                    # (status, output) = subprocess.getstatusoutput(com)
                    ret = os.system(com)
                print("status...")
                print(ret)
                if ret == 0:
                    cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                    os.system(cosiscom)
                else:
                    cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                    os.system(cosiscom)



def deal_randcase(randlines, genfunname, perslicedir, funtypesig):
    randlinelist = randlines[0].getElementsByTagName("randline")
    if len(randlinelist) == 2:
        if funtypesig == "charchar":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_char.substitute(adder="adder0", fun=genfunname + "_0",
                                                      four="['0','0']",
                                                      one="['0','1']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_char.substitute(adder="adder1", fun=genfunname + "_1",
                                                      four="['0','1']",
                                                      one="['0','0']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_char.substitute(adder="adder2", fun=genfunname + "_2",
                                                      four="['1','0']",
                                                      one="['0','1']", two="['0','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_char.substitute(adder="adder3", fun=genfunname + "_3",
                                                      four="['1','1']",
                                                      one="['0','1']", two="['1','0']", three="['0','0']", ))
            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)
        elif funtypesig == "intint":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_int_int.substitute(adder="adder0", fun=genfunname + "_0",
                                                    four="['0','0']",
                                                    one="['0','1']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_int_int.substitute(adder="adder1", fun=genfunname + "_1",
                                                    four="['0','1']",
                                                    one="['0','0']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_int_int.substitute(adder="adder2", fun=genfunname + "_2",
                                                    four="['1','0']",
                                                    one="['0','1']", two="['0','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_int_int.substitute(adder="adder3", fun=genfunname + "_3",
                                                    four="['1','1']",
                                                    one="['0','1']", two="['1','0']", three="['0','0']", ))
            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)
        elif funtypesig == "charint" or funtypesig=="wchar_tint":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_int.substitute(adder="adder0", fun=genfunname + "_0",
                                                     four="['0','0']",
                                                     one="['0','1']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_int.substitute(adder="adder1", fun=genfunname + "_1",
                                                     four="['0','1']",
                                                     one="['0','0']", two="['1','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_int.substitute(adder="adder2", fun=genfunname + "_2",
                                                     four="['1','0']",
                                                     one="['0','1']", two="['0','0']", three="['1','1']", ))
            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand2_char_int.substitute(adder="adder3", fun=genfunname + "_3",
                                                     four="['1','1']",
                                                     one="['0','1']", two="['1','0']", three="['0','0']", ))
            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)
    elif len(randlinelist) == 4:
        if funtypesig == "charchar":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder0", fun=genfunname + "_0",
                                                      arg0="['0','0','0','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder1", fun=genfunname + "_1",
                                                      arg0="['0','0','0','1']", arg1="['0','0','0','0']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder2", fun=genfunname + "_2",
                                                      arg0="['0','0','1','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','0','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder3", fun=genfunname + "_3",
                                                      arg0="['0','0','1','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','0','0']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)

            filename = "compare_test4.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder4", fun=genfunname + "_4",
                                                      arg0="['0','1','0','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','0','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test4.py " + perslicedir)

            filename = "compare_test5.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder5", fun=genfunname + "_5",
                                                      arg0="['0','1','0','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','0','0','0']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test5.py " + perslicedir)

            filename = "compare_test6.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder6", fun=genfunname + "_6",
                                                      arg0="['0','1','1','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','0','0','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test6.py " + perslicedir)

            filename = "compare_test7.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder7", fun=genfunname + "_7",
                                                      arg0="['0','1','1','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','0','0','0']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test7.py " + perslicedir)

            filename = "compare_test8.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder8", fun=genfunname + "_8",
                                                      arg0="['1','0','0','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['0','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test8.py " + perslicedir)

            filename = "compare_test9.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder9", fun=genfunname + "_9",
                                                      arg0="['1','0','0','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['0','0','0','0']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test9.py " + perslicedir)

            filename = "compare_test10.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder10", fun=genfunname + "_10",
                                                      arg0="['1','0','1','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['0','0','0','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test10.py " + perslicedir)

            filename = "compare_test11.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder11", fun=genfunname + "_11",
                                                      arg0="['1','0','1','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['0','0','0','0']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test11.py " + perslicedir)

            filename = "compare_test12.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder12", fun=genfunname + "_12",
                                                      arg0="['1','1','0','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['0','0','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test12.py " + perslicedir)

            filename = "compare_test13.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder13", fun=genfunname + "_13",
                                                      arg0="['1','1','0','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['0','0','0','0']",
                                                      arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test13.py " + perslicedir)

            filename = "compare_test14.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder14", fun=genfunname + "_14",
                                                      arg0="['1','1','1','0']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['0','0','0','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test14.py " + perslicedir)

            filename = "compare_test15.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_char.substitute(adder="adder15", fun=genfunname + "_15",
                                                      arg0="['1','1','1','1']", arg1="['0','0','0','1']",
                                                      arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                      arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                      arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                      arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                      arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                      arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                      arg14="['1','1','1','0']", arg15="['0','0','0','0']"))

            fileopen.close()
            os.system("mv compare_test15.py " + perslicedir)
        elif funtypesig == "intint":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder0", fun=genfunname + "_0",
                                                    arg0="['0','0','0','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder1", fun=genfunname + "_1",
                                                    arg0="['0','0','0','1']", arg1="['0','0','0','0']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder2", fun=genfunname + "_2",
                                                    arg0="['0','0','1','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','0','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder3", fun=genfunname + "_3",
                                                    arg0="['0','0','1','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','0','0']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)

            filename = "compare_test4.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder4", fun=genfunname + "_4",
                                                    arg0="['0','1','0','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','0','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test4.py " + perslicedir)

            filename = "compare_test5.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder5", fun=genfunname + "_5",
                                                    arg0="['0','1','0','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','0','0','0']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test5.py " + perslicedir)

            filename = "compare_test6.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder6", fun=genfunname + "_6",
                                                    arg0="['0','1','1','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','0','0','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test6.py " + perslicedir)

            filename = "compare_test7.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder7", fun=genfunname + "_7",
                                                    arg0="['0','1','1','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','0','0','0']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test7.py " + perslicedir)

            filename = "compare_test8.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder8", fun=genfunname + "_8",
                                                    arg0="['1','0','0','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['0','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test8.py " + perslicedir)

            filename = "compare_test9.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder9", fun=genfunname + "_9",
                                                    arg0="['1','0','0','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['0','0','0','0']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test9.py " + perslicedir)

            filename = "compare_test10.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder10", fun=genfunname + "_10",
                                                    arg0="['1','0','1','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['0','0','0','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test10.py " + perslicedir)

            filename = "compare_test11.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder11", fun=genfunname + "_11",
                                                    arg0="['1','0','1','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['0','0','0','0']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test11.py " + perslicedir)

            filename = "compare_test12.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder12", fun=genfunname + "_12",
                                                    arg0="['1','1','0','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['0','0','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test12.py " + perslicedir)

            filename = "compare_test13.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder13", fun=genfunname + "_13",
                                                    arg0="['1','1','0','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['0','0','0','0']",
                                                    arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test13.py " + perslicedir)

            filename = "compare_test14.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder14", fun=genfunname + "_14",
                                                    arg0="['1','1','1','0']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['0','0','0','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test14.py " + perslicedir)

            filename = "compare_test15.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_int_int.substitute(adder="adder15", fun=genfunname + "_15",
                                                    arg0="['1','1','1','1']", arg1="['0','0','0','1']",
                                                    arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                    arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                    arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                    arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                    arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                    arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                    arg14="['1','1','1','0']", arg15="['0','0','0','0']"))

            fileopen.close()
            os.system("mv compare_test15.py " + perslicedir)
        elif funtypesig == "charint" or funtypesig=="wchar_tint":
            filename = "compare_test0.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder0", fun=genfunname + "_0",
                                                     arg0="['0','0','0','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test0.py " + perslicedir)

            filename = "compare_test1.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder1", fun=genfunname + "_1",
                                                     arg0="['0','0','0','1']", arg1="['0','0','0','0']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test1.py " + perslicedir)

            filename = "compare_test2.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder2", fun=genfunname + "_2",
                                                     arg0="['0','0','1','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','0','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test2.py " + perslicedir)

            filename = "compare_test3.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder3", fun=genfunname + "_3",
                                                     arg0="['0','0','1','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','0','0']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test3.py " + perslicedir)

            filename = "compare_test4.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder4", fun=genfunname + "_4",
                                                     arg0="['0','1','0','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','0','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test4.py " + perslicedir)

            filename = "compare_test5.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder5", fun=genfunname + "_5",
                                                     arg0="['0','1','0','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','0','0','0']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test5.py " + perslicedir)

            filename = "compare_test6.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder6", fun=genfunname + "_6",
                                                     arg0="['0','1','1','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','0','0','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test6.py " + perslicedir)

            filename = "compare_test7.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder7", fun=genfunname + "_7",
                                                     arg0="['0','1','1','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','0','0','0']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test7.py " + perslicedir)

            filename = "compare_test8.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder8", fun=genfunname + "_8",
                                                     arg0="['1','0','0','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['0','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test8.py " + perslicedir)

            filename = "compare_test9.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder9", fun=genfunname + "_9",
                                                     arg0="['1','0','0','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['0','0','0','0']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test9.py " + perslicedir)

            filename = "compare_test10.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder10", fun=genfunname + "_10",
                                                     arg0="['1','0','1','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['0','0','0','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test10.py " + perslicedir)

            filename = "compare_test11.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder11", fun=genfunname + "_11",
                                                     arg0="['1','0','1','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['0','0','0','0']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test11.py " + perslicedir)

            filename = "compare_test12.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder12", fun=genfunname + "_12",
                                                     arg0="['1','1','0','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['0','0','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test12.py " + perslicedir)

            filename = "compare_test13.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder13", fun=genfunname + "_13",
                                                     arg0="['1','1','0','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['0','0','0','0']",
                                                     arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test13.py " + perslicedir)

            filename = "compare_test14.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder14", fun=genfunname + "_14",
                                                     arg0="['1','1','1','0']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['0','0','0','0']", arg15="['1','1','1','1']"))

            fileopen.close()
            os.system("mv compare_test14.py " + perslicedir)

            filename = "compare_test15.py"
            fileopen = open(filename, "w")
            fileopen.write(rand4_char_int.substitute(adder="adder15", fun=genfunname + "_15",
                                                     arg0="['1','1','1','1']", arg1="['0','0','0','1']",
                                                     arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                     arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                     arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                     arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                     arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                     arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                     arg14="['1','1','1','0']", arg15="['0','0','0','0']"))

            fileopen.close()
            os.system("mv compare_test15.py " + perslicedir)


def compare_sink_one(dirname):
    """
    1.共享库
    2.根据in_out信息生成compare_test.py文件
    3.运行
    """
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)
            print(file)
            print(os.path.abspath(src_file))

            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"
            #
            # '''编译切片为共享库,（放弃）'''
            # if not os.path.exists(code_gened_dir + "/" + cfilename):
            #     print("不存在")
            #     for root1, dirs1, cfiles in os.walk(code_gened_dir):
            #         for cfile in cfiles:
            #             if file[:ind - 1] in cfile:
            #                 rind = cfile.rindex("_")
            #                 inc = cfile[rind + 1:-2]
            #                 com_to_so = "gcc -shared -Wl,-soname,adder -o adder" + str(
            #                     inc) + ".so -fPIC " + code_gened_dir + "/" + cfile + " " + source_code_dir + "/*.c"
            #                 (status, output) = subprocess.getstatusoutput(com_to_so)
            #                 print(com_to_so)
            #                 os.system("mv adder" + str(inc) + ".so " + perslicedir)
            # else:
            #     com_to_so = "gcc -shared -Wl,-soname,adder -o adder.so -fPIC -I" + source_code_dir + " " + code_gened_dir + "/" + cfilename + " " + source_code_dir + "/*.c"
            #     (status, output) = subprocess.getstatusoutput(com_to_so)
            #     os.system("mv adder.so " + perslicedir)
            #     print(com_to_so)

            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            print(len(paramsnode))
            for arg in paramsnode:
                print(arg.getAttribute("name"))
                print(arg.getAttribute("type"))
                print(arg.getAttribute("kind"))
            if len(randfiles) > 0:
                randlinelist = randlines[0].getElementsByTagName("randline")
                if len(randlinelist) == 2:
                    sourcename = paramsnode[0].getAttribute("name")
                    filename = "compare_test0.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand2.substitute(adder="adder0", fun=genfunname + "_0", source=sourcename,
                                                         four="['0','0']",
                                                         one="['0','1']", two="['1','0']", three="['1','1']", ))
                    fileopen.close()
                    os.system("mv compare_test0.py " + perslicedir)

                    filename = "compare_test1.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand2.substitute(adder="adder1", fun=genfunname + "_1", source=sourcename,
                                                         four="['0','1']",
                                                         one="['0','0']", two="['1','0']", three="['1','1']", ))
                    fileopen.close()
                    os.system("mv compare_test1.py " + perslicedir)

                    filename = "compare_test2.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand2.substitute(adder="adder2", fun=genfunname + "_2", source=sourcename,
                                                         four="['1','0']",
                                                         one="['0','1']", two="['0','0']", three="['1','1']", ))
                    fileopen.close()
                    os.system("mv compare_test2.py " + perslicedir)

                    filename = "compare_test3.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand2.substitute(adder="adder3", fun=genfunname + "_3", source=sourcename,
                                                         four="['1','1']",
                                                         one="['0','1']", two="['1','0']", three="['0','0']", ))
                    fileopen.close()
                    os.system("mv compare_test3.py " + perslicedir)
                elif len(randlinelist) == 4:
                    sourcename = paramsnode[0].getAttribute("name")
                    filename = "compare_test0.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder0", fun=genfunname + "_0", source=sourcename,
                                                         arg0="['0','0','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test0.py " + perslicedir)

                    filename = "compare_test1.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder1", fun=genfunname + "_1", source=sourcename,
                                                         arg0="['0','0','0','1']", arg1="['0','0','0','0']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test1.py " + perslicedir)

                    filename = "compare_test2.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder2", fun=genfunname + "_2", source=sourcename,
                                                         arg0="['0','0','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','0','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test2.py " + perslicedir)

                    filename = "compare_test3.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder3", fun=genfunname + "_3", source=sourcename,
                                                         arg0="['0','0','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','0','0']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test3.py " + perslicedir)

                    filename = "compare_test4.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder4", fun=genfunname + "_4", source=sourcename,
                                                         arg0="['0','1','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','0','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test4.py " + perslicedir)

                    filename = "compare_test5.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder5", fun=genfunname + "_5", source=sourcename,
                                                         arg0="['0','1','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','0','0','0']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test5.py " + perslicedir)

                    filename = "compare_test6.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder6", fun=genfunname + "_6", source=sourcename,
                                                         arg0="['0','1','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','0','0','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test6.py " + perslicedir)

                    filename = "compare_test7.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder7", fun=genfunname + "_7", source=sourcename,
                                                         arg0="['0','1','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','0','0','0']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test7.py " + perslicedir)

                    filename = "compare_test8.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder8", fun=genfunname + "_8", source=sourcename,
                                                         arg0="['1','0','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['0','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test8.py " + perslicedir)

                    filename = "compare_test9.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder9", fun=genfunname + "_9", source=sourcename,
                                                         arg0="['1','0','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['0','0','0','0']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test9.py " + perslicedir)

                    filename = "compare_test10.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder10", fun=genfunname + "_10", source=sourcename,
                                                         arg0="['1','0','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['0','0','0','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test10.py " + perslicedir)

                    filename = "compare_test11.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder11", fun=genfunname + "_11", source=sourcename,
                                                         arg0="['1','0','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['0','0','0','0']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test11.py " + perslicedir)

                    filename = "compare_test12.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder12", fun=genfunname + "_12", source=sourcename,
                                                         arg0="['1','1','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['0','0','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test12.py " + perslicedir)

                    filename = "compare_test13.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder13", fun=genfunname + "_13", source=sourcename,
                                                         arg0="['1','1','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['0','0','0','0']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test13.py " + perslicedir)

                    filename = "compare_test14.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder14", fun=genfunname + "_14", source=sourcename,
                                                         arg0="['1','1','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['0','0','0','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test14.py " + perslicedir)

                    filename = "compare_test15.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder15", fun=genfunname + "_15", source=sourcename,
                                                         arg0="['1','1','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['0','0','0','0']"))

                    fileopen.close()
                    os.system("mv compare_test15.py " + perslicedir)

            # elif paramsnode[0].getAttribute("type") == "size_t":
            #     print("aaaaaaaaaaaaaaaaaaaaaaaaaa")
            #     sourcename = in_varnodes[0].getAttribute("newname")
            #     filename = "compare_test.py"
            #     fileopen = open(filename, "w")
            #     if "_environment_" in file:
            #         fileopen.write(test_env.substitute(fun=genfunname, source=sourcename))
            #     else:
            #         fileopen.write(test_source.substitute(fun=genfunname, source=sourcename))
            #     fileopen.close()
            #     os.system("mv compare_test.py " + perslicedir)
            elif len(in_varnodes) == 1:
                sourcename = in_varnodes[0].getAttribute("newname")
                filename = "compare_test.py"
                fileopen = open(filename, "w")
                # if "_environment_" in file:
                #     if len(paramsnode) > 1:
                #         fileopen.write(test_source_env.substitute(fun=genfunname, source=sourcename))
                #     else:
                #         fileopen.write(test_env.substitute(fun=genfunname, source=sourcename))
                # else:
                fileopen.write(one_ptr_one_ptr.substitute(fun=genfunname))
                fileopen.close()
                os.system("mv compare_test.py " + perslicedir)
                os.system("cp fuzzlib/mylib.so " + perslicedir)
            elif len(in_varnodes) == 2:
                sourcename1 = in_varnodes[0].getAttribute("newname")
                sourcename2 = in_varnodes[1].getAttribute("newname")
                filename = "compare_test.py"
                fileopen = open(filename, "w")
                if "_environment_" in file:
                    fileopen.write(test_env2.substitute(fun=genfunname, source1=sourcename1, source2=sourcename2))
                else:
                    fileopen.write(test_param4.substitute(fun=genfunname, source1=sourcename1, source2=sourcename2))
                fileopen.close()
                os.system("mv compare_test.py " + perslicedir)

            statuslist = []
            if len(randfiles) > 0:
                if len(randlinelist) == 2:
                    for i in range(4):
                        com = "cd " + perslicedir + "; python3 compare_test" + str(i) + ".py"
                        (status, output) = subprocess.getstatusoutput(com)
                        if status == 0:
                            pass
                        else:
                            statuslist.append("nnnn")
                    if len(statuslist) > 0:
                        print("nnnnnnnnn")
                    else:
                        print("yyyyyyyy")
                elif len(randlinelist) == 4:
                    for i in range(16):
                        com = "cd " + perslicedir + "; python3 compare_test" + str(i) + ".py"
                        (status, output) = subprocess.getstatusoutput(com)
                        if status == 0:
                            pass
                        else:
                            statuslist.append("fffffffffffffffffff")
                            print(com)
                    if len(statuslist) > 0:
                        print("nnnnnnnnn")
                    else:
                        print("yyyyyyyy")
            else:

                com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test.py"
                (status, output) = subprocess.getstatusoutput(com)
                # os.system(com)
                print(com)
                # if status == 0:
                #     print("yyyyyy")
                # else:
                #     print("nnnnnnnnn")
                #     print(output)
                if status == 0:
                    consistlist.append(genfunname + "_yyyyyy")
                    cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                    os.system(cosiscom)

                else:
                    unconsistlist.append(genfunname + "_nnnnnnnnn")
                    cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                    os.system(cosiscom)


consistlist = []
unconsistlist = []
function_signature_list = {}
function_typesig_list = {}


def compute_typesig(dirname):
    """
    1.共享库
    2.根据in_out信息生成compare_test.py文件
    3.运行
    """
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"
    # add_include_lit_to_sliceheader(dirname)

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)

            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"

            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            funtypesig = ""
            declypesig = ""
            for arg in paramsnode:
                funtypesig = funtypesig + arg.getAttribute("kind")
                decltype = arg.getAttribute("type")
                if "struct" in decltype:
                    decltype = "struct"
                elif "union" in decltype:
                    decltype = "union"
                declypesig = declypesig + decltype
            if declypesig not in function_typesig_list.keys():
                function_typesig_list[declypesig] = [dirname]
            else:
                if dirname not in function_typesig_list[declypesig]:
                    function_typesig_list[declypesig].append(dirname)


def compute_funsig(dirname):
    """
    1.共享库
    2.根据in_out信息生成compare_test.py文件
    3.运行
    """
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"
    # add_include_lit_to_sliceheader(dirname)

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)

            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"

            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            funtypesig = ""
            for arg in paramsnode:
                funtypesig = funtypesig + arg.getAttribute("kind")
            if funtypesig not in function_signature_list.keys():
                function_signature_list[funtypesig] = [dirname]
            else:
                if dirname not in function_signature_list[funtypesig]:
                    function_signature_list[funtypesig].append(dirname)
            # print(funtypesig)


def compare_sink_one_with_c_v1(dirname):
    """
    1.共享库
    2.根据in_out信息生成compare_test.py文件
    3.运行
    """
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)
            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"
            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            funtypesig = ""
            for arg in paramsnode:
                funtypesig = funtypesig + arg.getAttribute("type")
            filename="compare_sink.c"
            fileopen = open(filename, "w")
            if "CWE134" in file:
                if len(randfiles) > 0:
                    deal_randcase(randlines, genfunname, perslicedir, funtypesig)
                else:
                    fileopen.write(cwe134_cfuntemplate.substitute(fun=genfunname))
            elif "CWE606" in file:
                if len(randfiles) > 0:
                    deal_randcase(randlines, genfunname, perslicedir, funtypesig)
                elif "wchar_t" in file:
                    fileopen.write(cwe606_wchar_t_cfuntemplate.substitute(fun=genfunname))
                else:
                    fileopen.write(cwe606_cfuntemplate.substitute(fun=genfunname))
            elif "CWE121" in file:
                if len(randfiles) > 0:
                    deal_randcase(randlines, genfunname, perslicedir, funtypesig)
                elif "_fscanf_" in file:
                    fileopen.write(cwe121_fscanf_cfuntemplate.substitute(fun=genfunname))
                else:
                    fileopen.write(cwe121_cfuntemplate.substitute(fun=genfunname))
            fileopen.close()
            if len(randfiles) == 0:
                os.system("mv compare_sink.c " + perslicedir)
            os.system("cp utils/fuzzlib/mylib.so " + perslicedir)

            statuslist = []

            if len(randfiles) > 0:
                randlinelist = randlines[0].getElementsByTagName("randline")
                if len(randlinelist) == 2:
                    for i in range(4):
                        com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test" + str(i) + ".py"
                        sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so python3 compare_test' + str(
                            i) + ".py"
                        # (status, output) = subprocess.getstatusoutput(com)
                        if "_socket_" in genfunname:
                            ret = os.system(sockt_com)
                        else:
                            ret = os.system(com)
                        if ret != 0:
                            statuslist.append("nnnn")
                    if len(statuslist) == 0:
                        cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                        os.system(cosiscom)
                    else:
                        cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                        os.system(cosiscom)

                elif len(randlinelist) == 4:
                    for i in range(16):
                        com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so python3 compare_test" + str(i) + ".py"
                        sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so python3 compare_test' + str(
                            i) + ".py"
                        # (status, output) = subprocess.getstatusoutput(com)
                        if "_socket_" in genfunname:
                            ret = os.system(sockt_com)
                        else:
                            ret = os.system(com)
                        if ret != 0:
                            statuslist.append("nnnn")
                    if len(statuslist) == 0:
                        cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                        os.system(cosiscom)
                    else:
                        cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                        os.system(cosiscom)
            else:
                compile_com="cd " + perslicedir + ";clang compare_sink.c ../../code_gened/"+genfunname+".ll ../../source_code/*.c -o comparesink"
                os.system(compile_com)
                com = "cd " + perslicedir + ";LD_PRELOAD=./mylib.so ./comparesink"
                sockt_com = "cd " + perslicedir + ';LD_PRELOAD=./mylib.so:libdesock.so ./comparesink'
                if "_socket_" in genfunname:
                    # (status, output) = subprocess.getstatusoutput(sockt_com)
                    ret = os.system(sockt_com)
                else:
                    # (status, output) = subprocess.getstatusoutput(com)
                    ret = os.system(com)
                print("status...")
                print(ret)
                if ret == 0:
                    cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                    os.system(cosiscom)
                else:
                    cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                    os.system(cosiscom)



            print(len(paramsnode))
            # filename = "compare_test.py"
            # fileopen = open(filename, "w")
            # if len(randfiles) > 0:
            #     deal_randcase(randlines, genfunname, perslicedir, funtypesig)
            # elif len(paramsnode) == 2:


def compare_sink_one_with_c(dirname):
    """
    1.共享库
    2.根据in_out信息生成compare_test.py文件
    3.运行
    """
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"
    # add_include_lit_to_sliceheader(dirname)

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            src_file = os.path.join(root, file)
            print(file)
            print(os.path.abspath(src_file))

            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            ind = file.index("in_out.xml")
            cfilename = file[:ind - 1] + ".c"

            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            source_code_dir = workdir + "/" + dirname + "/" + "source_code"

            genfunnamenodes = in_out_root.getElementsByTagName("gen_fun")
            genfunname = genfunnamenodes[0].getAttribute("value")
            funparamsnode = in_out_root.getElementsByTagName("gen_fun_params")
            paramsnode = funparamsnode[0].getElementsByTagName("param")
            invarsnode = in_out_root.getElementsByTagName("in_vars")
            in_varnodes = invarsnode[0].getElementsByTagName("in_var")
            randfiles = in_out_root.getElementsByTagName("rand_file")
            randlines = in_out_root.getElementsByTagName("randlines")

            funtypesig = ""
            print(len(paramsnode))
            for arg in paramsnode:
                print(arg.getAttribute("name"))
                print(arg.getAttribute("type"))
                print(arg.getAttribute("kind"))
                funtypesig = funtypesig + arg.getAttribute("kind")
            print(funtypesig)
            if len(randfiles) > 0:
                randlinelist = randlines[0].getElementsByTagName("randline")
                if len(randlinelist) == 2:
                    sourcename = paramsnode[0].getAttribute("name")
                    filename = "compare_test0.c"
                    fileopen = open(filename, "w")
                    if funtypesig == "basicfun_ptr":
                        fileopen.write(basicfun_ptr_rand.substitute(fun=genfunname + "_0", onesource=sourcename,
                                                                    four='"00"',
                                                                    one='"01"', two='"10"', three='"11"'))
                    else:
                        fileopen.write(one_source_int_ret_rand.substitute(fun=genfunname + "_0", onesource=sourcename,
                                                                          four='"00"',
                                                                          one='"01"', two='"10"', three='"11"'))
                    fileopen.close()
                    os.system("mv compare_test0.c " + perslicedir)

                    filename = "compare_test1.c"
                    fileopen = open(filename, "w")
                    if funtypesig == "basicfun_ptr":
                        fileopen.write(basicfun_ptr_rand.substitute(fun=genfunname + "_1", onesource=sourcename,
                                                                    four='"01"',
                                                                    one='"00"', two='"10"', three='"11"'))
                    else:
                        fileopen.write(one_source_int_ret_rand.substitute(fun=genfunname + "_1", onesource=sourcename,
                                                                          four='"01"',
                                                                          one='"00"', two='"10"', three='"11"'))
                    fileopen.close()
                    os.system("mv compare_test1.c " + perslicedir)

                    filename = "compare_test2.c"
                    fileopen = open(filename, "w")
                    if funtypesig == "basicfun_ptr":
                        fileopen.write(basicfun_ptr_rand.substitute(fun=genfunname + "_2", onesource=sourcename,
                                                                    four='"10"',
                                                                    one='"01"', two='"00"', three='"11"'))
                    else:
                        fileopen.write(one_source_int_ret_rand.substitute(fun=genfunname + "_2", onesource=sourcename,
                                                                          four='"10"',
                                                                          one='"01"', two='"00"', three='"11"'))
                    fileopen.close()
                    os.system("mv compare_test2.c " + perslicedir)

                    filename = "compare_test3.c"
                    fileopen = open(filename, "w")
                    if funtypesig == "basicfun_ptr":
                        fileopen.write(basicfun_ptr_rand.substitute(fun=genfunname + "_3", onesource=sourcename,
                                                                    four='"11"',
                                                                    one='"01"', two='"10"', three='"00"'))
                    else:
                        fileopen.write(one_source_int_ret_rand.substitute(fun=genfunname + "_3", onesource=sourcename,
                                                                          four='"11"',
                                                                          one='"01"', two='"10"', three='"00"'))
                    fileopen.close()
                    os.system("mv compare_test3.c " + perslicedir)
                elif len(randlinelist) == 4:
                    sourcename = paramsnode[0].getAttribute("name")
                    filename = "compare_test0.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder0", fun=genfunname + "_0", source=sourcename,
                                                         arg0="['0','0','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test0.py " + perslicedir)

                    filename = "compare_test1.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder1", fun=genfunname + "_1", source=sourcename,
                                                         arg0="['0','0','0','1']", arg1="['0','0','0','0']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test1.py " + perslicedir)

                    filename = "compare_test2.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder2", fun=genfunname + "_2", source=sourcename,
                                                         arg0="['0','0','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','0','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test2.py " + perslicedir)

                    filename = "compare_test3.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder3", fun=genfunname + "_3", source=sourcename,
                                                         arg0="['0','0','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','0','0']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test3.py " + perslicedir)

                    filename = "compare_test4.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder4", fun=genfunname + "_4", source=sourcename,
                                                         arg0="['0','1','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','0','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test4.py " + perslicedir)

                    filename = "compare_test5.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder5", fun=genfunname + "_5", source=sourcename,
                                                         arg0="['0','1','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','0','0','0']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test5.py " + perslicedir)

                    filename = "compare_test6.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder6", fun=genfunname + "_6", source=sourcename,
                                                         arg0="['0','1','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','0','0','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test6.py " + perslicedir)

                    filename = "compare_test7.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder7", fun=genfunname + "_7", source=sourcename,
                                                         arg0="['0','1','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','0','0','0']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test7.py " + perslicedir)

                    filename = "compare_test8.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder8", fun=genfunname + "_8", source=sourcename,
                                                         arg0="['1','0','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['0','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test8.py " + perslicedir)

                    filename = "compare_test9.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder9", fun=genfunname + "_9", source=sourcename,
                                                         arg0="['1','0','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['0','0','0','0']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test9.py " + perslicedir)

                    filename = "compare_test10.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder10", fun=genfunname + "_10", source=sourcename,
                                                         arg0="['1','0','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['0','0','0','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test10.py " + perslicedir)

                    filename = "compare_test11.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder11", fun=genfunname + "_11", source=sourcename,
                                                         arg0="['1','0','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['0','0','0','0']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test11.py " + perslicedir)

                    filename = "compare_test12.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder12", fun=genfunname + "_12", source=sourcename,
                                                         arg0="['1','1','0','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['0','0','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test12.py " + perslicedir)

                    filename = "compare_test13.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder13", fun=genfunname + "_13", source=sourcename,
                                                         arg0="['1','1','0','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['0','0','0','0']",
                                                         arg14="['1','1','1','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test13.py " + perslicedir)

                    filename = "compare_test14.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder14", fun=genfunname + "_14", source=sourcename,
                                                         arg0="['1','1','1','0']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['0','0','0','0']", arg15="['1','1','1','1']"))

                    fileopen.close()
                    os.system("mv compare_test14.py " + perslicedir)

                    filename = "compare_test15.py"
                    fileopen = open(filename, "w")
                    fileopen.write(tast_rand4.substitute(adder="adder15", fun=genfunname + "_15", source=sourcename,
                                                         arg0="['1','1','1','1']", arg1="['0','0','0','1']",
                                                         arg2="['0','0','1','0']", arg3="['0','0','1','1']",
                                                         arg4="['0','1','0','0']", arg5="['0','1','0','1']",
                                                         arg6="['0','1','1','0']", arg7="['0','1','1','1']",
                                                         arg8="['1','0','0','0']", arg9="['1','0','0','1']",
                                                         arg10="['1','0','1','0']", arg11="['1','0','1','1']",
                                                         arg12="['1','1','0','0']", arg13="['1','1','0','1']",
                                                         arg14="['1','1','1','0']", arg15="['0','0','0','0']"))

                    fileopen.close()
                    os.system("mv compare_test15.py " + perslicedir)

            # elif paramsnode[0].getAttribute("type") == "size_t":
            #     print("aaaaaaaaaaaaaaaaaaaaaaaaaa")
            #     sourcename = in_varnodes[0].getAttribute("newname")
            #     filename = "compare_test.py"
            #     fileopen = open(filename, "w")
            #     if "_environment_" in file:
            #         fileopen.write(test_env.substitute(fun=genfunname, source=sourcename))
            #     else:
            #         fileopen.write(test_source.substitute(fun=genfunname, source=sourcename))
            #     fileopen.close()
            #     os.system("mv compare_test.py " + perslicedir)
            elif len(in_varnodes) == 1:
                print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
                sourcename = in_varnodes[0].getAttribute("newname")
                filename = "compare_test.c"
                fileopen = open(filename, "w")
                if "_environment_" in file:
                    if len(paramsnode) > 1:
                        fileopen.write(test_source_env.substitute(fun=genfunname, source=sourcename))
                    else:
                        fileopen.write(test_env.substitute(fun=genfunname, source=sourcename))
                elif funtypesig == "one_arrone_ptrone_ptrfun_ptr":
                    fileopen.write(one_arrone_ptr_one_ptrfun_ptr.substitute(fun=genfunname, onesource=sourcename))
                elif funtypesig == "one_arrbasicone_arrfun_ptr":
                    fileopen.write(one_arrbasicone_arrfun_ptr.substitute(fun=genfunname, onesource=sourcename))
                elif funtypesig == "basicfun_ptr":
                    fileopen.write(basicfun_ptr.substitute(fun=genfunname, onesource=sourcename))
                elif funtypesig == "one_arrfun_ptr":
                    fileopen.write(one_arrfun_ptr.substitute(fun=genfunname, onesource=sourcename))
                elif len(paramsnode) == 5:
                    fileopen.write(one_source_ret_3_int_param.substitute(fun=genfunname, onesource=sourcename))
                else:
                    fileopen.write(one_source_int_ret.substitute(fun=genfunname, onesource=sourcename))
                fileopen.close()
                os.system("mv compare_test.c " + perslicedir)
            elif len(in_varnodes) == 2:
                sourcename1 = in_varnodes[0].getAttribute("newname")
                sourcename2 = in_varnodes[1].getAttribute("newname")
                filename = "compare_test.c"
                fileopen = open(filename, "w")
                if "_environment_" in file:
                    fileopen.write(test_env2.substitute(fun=genfunname, source1=sourcename1, source2=sourcename2))
                elif funtypesig == "basicbasicfun_ptr":
                    fileopen.write(
                        basicbasicfun_ptr.substitute(fun=genfunname, onesource=sourcename1, twosource=sourcename2))
                else:
                    fileopen.write(
                        two_source_int_ret.substitute(fun=genfunname, onesource=sourcename1, twosource=sourcename2))
                fileopen.close()
                os.system("mv compare_test.c " + perslicedir)

            statuslist = []
            if len(randfiles) > 0:
                if len(randlinelist) == 2:
                    for i in range(4):
                        # com = "cd " + perslicedir + "; python3 compare_test" + str(i) + ".py"
                        cmpilecom = "cd " + perslicedir + "; gcc -fno-stack-protector compare_test" + str(
                            i) + ".c -I../../code_gened -I../../source_code ../../code_gened/" + genfunname + "_" + str(
                            i) + ".c ../../source_code/*.c -o aout" + str(i)
                        print(cmpilecom)
                        os.system(cmpilecom)
                        com = "cd " + perslicedir + '; LD_PRELOAD=libdesock.so ./aout' + str(
                            i)
                        (status, output) = subprocess.getstatusoutput(com)
                        if status == 0:
                            print(genfunname + "_" + str(i) + "_yyyyyyy")
                            pass
                        else:
                            print(genfunname + "_" + str(i) + "_nnnnnnn")
                            statuslist.append("nnnn")
                    if len(statuslist) > 0:
                        unconsistlist.append(genfunname + "nnnnnnnnn")
                    else:
                        consistlist.append(genfunname + "_yyyyyyyy")
                elif len(randlinelist) == 4:
                    for i in range(16):
                        com = "cd " + perslicedir + "; python3 compare_test" + str(i) + ".py"
                        (status, output) = subprocess.getstatusoutput(com)
                        if status == 0:
                            pass
                        else:
                            statuslist.append("fffffffffffffffffff")
                            print(com)
                    if len(statuslist) > 0:
                        print("nnnnnnnnn")
                    else:
                        print("yyyyyyyy")
            else:
                """编译生成的C文件为a.out,并且LD_PRELOAD进行运行"""

                cmpilecom = "cd " + perslicedir + "; clang -fno-stack-protector compare_test.c -I../../code_gened -I../../source_code ../../code_gened/" + genfunname + ".ll ../../source_code/*.c"
                print(cmpilecom)
                os.system(cmpilecom)
                if "socket" in genfunname:
                    com = "cd " + perslicedir + '; LD_PRELOAD=libdesock.so ./a.out'
                else:
                    com = "cd " + perslicedir + '; ./a.out'
                (status, output) = subprocess.getstatusoutput(com)
                if status == 0:
                    consistlist.append(genfunname + "_yyyyyy")
                    cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
                    os.system(cosiscom)

                else:
                    unconsistlist.append(genfunname + "_nnnnnnnnn")
                    cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
                    os.system(cosiscom)

            # break


def auto_instrument_slice(dirname):
    workdir = "workspace_fuzz"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"
    codegened_dir = workdir + "/" + dirname + "/code_gened"
    copi_to_ll = "cd workspace_fuzz/" + dirname + "/code_gened;clang -fPIC -fno-discard-value-names -O0 -g -emit-llvm -S -I../source_code *.c "
    (status, output) = subprocess.getstatusoutput(copi_to_ll)
    print(copi_to_ll)
    source_code_dir = workdir + "/" + dirname + "/source_code"
    for root, dirs, files in os.walk(codegened_dir):
        for file in files:
            """自动化插装"""
            if file.endswith(".ll"):
                basename = file[:-3]
                if basename.endswith("_1_0") or basename.endswith("_1_1") or basename.endswith(
                        "_1_2") or basename.endswith("_1_3") or basename.endswith("_1_4") or basename.endswith(
                    "_1_5") or basename.endswith("_1_6") or basename.endswith("_1_7") or basename.endswith(
                    "_1_8") or basename.endswith("_1_9"):
                    xmlfile = basename[:-2] + "_in_out.xml"
                    perslice = file[:-5] + "_in_out"
                elif basename.endswith(
                        "_1_10") or basename.endswith("_1_11") or basename.endswith("_1_12") or basename.endswith(
                    "_1_13") or basename.endswith("_1_14") or basename.endswith(
                    "_1_15"):
                    xmlfile = basename[:-3] + "_in_out.xml"
                    perslice = file[:-6] + "_in_out"
                else:
                    xmlfile = file[:-3] + "_in_out.xml"
                    perslice = file[:-3] + "_in_out"
                inst_slice = "cd " + codegened_dir + ";opt -load libSliverUtilpass.so -slice-inst -in-xml-slice=../slice_in_out_info/" + xmlfile + " -S " + file + " -o " + file
                (status, output) = subprocess.getstatusoutput(inst_slice)
                print(inst_slice)

                perslicedir = workfuzz + "/" + perslice
                """编译为共享库"""
                if basename.endswith("_1_0") or basename.endswith("_1_1") or basename.endswith(
                        "_1_2") or basename.endswith("_1_3") or basename.endswith("_1_4") or basename.endswith(
                    "_1_5") or basename.endswith("_1_6") or basename.endswith("_1_7") or basename.endswith(
                    "_1_8") or basename.endswith("_1_9"):
                    com_to_so = "cd " + codegened_dir + ";clang -fno-stack-protector -shared -Wl,-soname,adder -o adder" + \
                                basename[-1] + ".so -fPIC " + file + " ../source_code/*.c"
                    (status, output) = subprocess.getstatusoutput(com_to_so)
                    os.system("cd " + codegened_dir + ";mv adder" + basename[-1] + ".so ../work_fuzz/" + perslice)
                elif basename.endswith(
                        "_1_10") or basename.endswith("_1_11") or basename.endswith("_1_12") or basename.endswith(
                    "_1_13") or basename.endswith("_1_14") or basename.endswith(
                    "_1_15"):
                    com_to_so = "cd " + codegened_dir + ";clang -fno-stack-protector -shared -Wl,-soname,adder -o adder" + \
                                basename[-2:] + ".so -fPIC " + file + " ../source_code/*.c"
                    (status, output) = subprocess.getstatusoutput(com_to_so)
                    os.system("cd " + codegened_dir + ";mv adder" + basename[-2:] + ".so ../work_fuzz/" + perslice)
                else:
                    com_to_so = "cd " + codegened_dir + ";clang -fno-stack-protector -shared -Wl,-soname,adder -o libadder.so -fPIC " + file + " ../source_code/*.c"
                    print(com_to_so)
                    (status, output) = subprocess.getstatusoutput(com_to_so)
                    """将共享库移动到相应的workfuzz目录中"""
                    os.system("cd " + codegened_dir + ";mv libadder.so ../work_fuzz/" + perslice)


def auto_instrument(dirname):
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz"
    copi_to_ll = "cd workspace_fuzz/" + dirname + "/source_code;clang -fno-discard-value-names -O0 -g -emit-llvm -S  *.c -DINCLUDEMAIN"
    (status, output) = subprocess.getstatusoutput(copi_to_ll)

    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            print(file)
            src_file = os.path.join(root, file)
            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            in_out_root = in_out_xmldoc.documentElement
            infileele = in_out_root.getElementsByTagName("in_file")
            outfileele = in_out_root.getElementsByTagName("out_file")
            randfile = in_out_root.getElementsByTagName("rand_file")
            funsig = in_out_root.getElementsByTagName("funsig")
            funsig_filelist = []
            funsigele = funsig[0]
            funit = funsigele.getElementsByTagName("fun")
            for fun in funit:
                llfile = fun.getAttribute("file")
                llfileind = llfile.rindex("/")
                llfilename = llfile[llfileind + 1:-1] + "ll"
                if llfilename not in funsig_filelist:
                    funsig_filelist.append(llfilename)

            infile = infileele[0].getAttribute("value")
            outfile = outfileele[0].getAttribute("value")
            ind_infile = infile.index("CWE")
            ind_outfile = outfile.index("CWE")
            ll_infile = infile[ind_infile:][:-2] + ".ll"
            ll_outfile = outfile[ind_outfile:][:-2] + ".ll"

            if not os.path.exists(workfuzz):
                os.makedirs(workfuzz)
            perslice = file[:-4]
            perslicedir = workfuzz + "/" + perslice
            print(perslicedir)
            print(funsig_filelist)
            if not os.path.exists(workfuzz + "/" + perslice):
                os.makedirs(workfuzz + "/" + perslice)
                com = "cp  -r " + workdir + "/" + dirname + "/source_code/*.ll " + perslicedir
                os.system(com)
                """自动化插装"""
                print("sss")

                "插装基本块和指令"
                for bllfile in funsig_filelist:
                    print(bllfile)
                    inst_block = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-block -in-xml-bb-inst=../../slice_in_out_info/" + file + " -S " + bllfile + " -o " + bllfile
                    (status, output) = subprocess.getstatusoutput(inst_block)
                    print(inst_block)
                # if "_console_" in file or "_fscanf_" in file:
                #     instru_source_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-inst -in-xml=../../slice_in_out_info/" + file + " -S " + ll_infile + " -o " + ll_infile
                # elif "_environment_" in file or "_socket_" in file:
                #     instru_source_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-inst-env -in-xml-env=../../slice_in_out_info/" + file + " -S " + ll_infile + " -o " + ll_infile
                #     # print(instru_source_com)
                # else:
                #     instru_source_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-inst-file -in-xml-file=../../slice_in_out_info/" + file + " -S " + ll_infile + " -o " + ll_infile
                # print(instru_source_com)
                instru_source_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -src-inst -in-xml-raw=../../slice_in_out_info/" + file + " -S " + ll_infile + " -o " + ll_infile
                instru_sink_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -out-inst -out-xml=../../slice_in_out_info/" + file + " -S " + ll_outfile + " -o " + ll_outfile
                print(instru_source_com)
                (status, output) = subprocess.getstatusoutput(instru_source_com)
                print(instru_sink_com)
                (status, output) = subprocess.getstatusoutput(instru_sink_com)
                # print(instru_sink_com)
                if len(randfile) > 0:
                    rand_file = randfile[0].getAttribute("value")
                    ll_randfile = rand_file[:-2] + ".ll"
                    instru_rand_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-inst-rand -in-xml-rand=../../slice_in_out_info/" + file + " -S " + ll_randfile + " -o " + ll_randfile
                    print(instru_rand_com)
                    (status, output) = subprocess.getstatusoutput(instru_rand_com)
                # # # 自动化插装main_ret部分
                tempfilename = ll_infile[:-3]
                lastchart = tempfilename[-1]
                if lastchart.isdigit():
                    mainret_ll = ll_infile
                elif lastchart == 'a':
                    mainret_ll = ll_infile
                else:
                    mainret_ll = tempfilename[:-1] + "a.ll"
                # print("222")
                instru_main_ret_com = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -main-ret-inst -S " + mainret_ll + " -o " + mainret_ll
                print(instru_main_ret_com)
                (status, output) = subprocess.getstatusoutput(instru_main_ret_com)
                # print(output)
                #
                # '''自动化fuzz,自动化编译为a.out
                # 创建in,在in中创建文件aa,并写文件
                # 创建out'''
                compil_fuzz = "cd " + perslicedir + "; afl-clang *.ll"
                (status, output) = subprocess.getstatusoutput(compil_fuzz)
                print(output)
                in_dir = perslicedir + "/in"
                out_dir = perslicedir + "/out"
                dic_dir = perslicedir + "/dic"
                os.makedirs(in_dir)
                os.makedirs(out_dir)
                os.makedirs(dic_dir)
                aafile = in_dir + "/aaa"
                aafileopen = open(aafile, "w")
                aafileopen.write("111")
                aafileopen.close()
                cpcom = "cp -r utils/my_dic.txt " + dic_dir
                print(cpcom)
                os.system(cpcom)

                if "_console_" in file or "CWE129_fgets" in file or "CWE129_fscanf" in file:
                    fuzz_com = "cd " + perslicedir + ";afl-fuzz -i in -o out ./a.out"
                    execute_command(fuzz_com, timeout=10)
                    ind = getPid()
                    for ele in ind:
                        pid = ele.decode(encoding='utf-8')
                        os.system("kill " + pid)
                        print(pid)
                elif "_environment_" in file:
                    print("environement....")
                    if "wchar_t" in file:
                        modadd_t = threading.Thread(target=thread_mod_wchartADD)
                    else:
                        modadd_t = threading.Thread(target=thread_mod_ADD)
                    # rnout_t=threading.Thread(target=thread_run_out,args=(perslicedir,))
                    fuzz_com = "cd " + perslicedir + "; ./a.out"
                    modadd_t.start()
                    starttime = datetime.datetime.now()
                    while (1):
                        print("os run")
                        os.system(fuzz_com)
                        endtime = datetime.datetime.now()
                        if (endtime - starttime).seconds > 60:
                            break
                    modadd_t.join()
                elif "_socket_" in file:

                    # fuzz_com = "cd " + perslicedir + """;AFL_PRELOAD="/home/raoxue/Downloads/libdesock/build/libdesock.so" afl-fuzz -i in -o out -x dic ./a.out"""
                    fuzz_com = "cd " + perslicedir + ";AFL_PRELOAD=libdesock.so afl-fuzz -i in -o out -x dic ./a.out"
                    print(fuzz_com)
                    execute_command(fuzz_com, timeout=30)
                    ind = getPid()
                    for ele in ind:
                        pid = ele.decode(encoding='utf-8')
                        os.system("kill " + pid)
                        print(pid)
                else:
                    modadd_t = threading.Thread(target=mod_file)
                    fuzz_com = "cd " + perslicedir + "; ./a.out"
                    modadd_t.start()
                    starttime = datetime.datetime.now()
                    while (1):
                        print("os run")
                        os.system(fuzz_com)
                        endtime = datetime.datetime.now()
                        if (endtime - starttime).seconds > 30:
                            break
                    modadd_t.join()
                


def mod_file():
    filename = "/tmp/file.txt"
    starttime = datetime.datetime.now()
    while (1):
        fileopen = open(filename, "w")
        ran_str = ''.join(random.sample(string.ascii_letters + string.digits, random.randint(0, 50)))
        fileopen.write(ran_str)
        fileopen.close()
        endline = datetime.datetime.now()
        if (endline - starttime).seconds > 30:
            break


def thread_mod_ADD():
    print("mod add")
    starttime = datetime.datetime.now()
    while (1):
        ran_str = ''.join(random.sample(string.ascii_letters + string.digits, random.randint(0, 50)))
        os.environ["ADD"] = ran_str
        endtime = datetime.datetime.now()
        if (endtime - starttime).seconds > 30:
            break

def thread_mod_wchartADD():
    print("mod add")
    starttime = datetime.datetime.now()
    while (1):
        ran_str = ''.join(random.sample( string.digits, random.randint(0, 3)))
        print(ran_str)
        s.environ["A"] = ran_str.encode('latin1')
        endtime = datetime.datetime.now()
        if (endtime - starttime).seconds > 30:
            break

def thread_run_out(perslicedir):
    print("mod run")
    fuzz_com = "cd " + perslicedir + "; ./a.out"
    while (1):
        os.system(fuzz_com)


def _async_raise(tid, exctype):
    """raises the exception, performs cleanup if needed"""
    tid = ctypes.c_long(tid)
    if not inspect.isclass(exctype):
        exctype = type(exctype)
    res = ctypes.pythonapi.PyThreadState_SetAsyncExc(tid, ctypes.py_object(exctype))
    if res == 0:
        raise ValueError("invalid thread id")
    elif res != 1:
        # """if it returns a number greater than one, you're in trouble,
        # and you should call it again with exc=NULL to revert the effect"""
        ctypes.pythonapi.PyThreadState_SetAsyncExc(tid, None)
        raise SystemError("PyThreadState_SetAsyncExc failed")


def stop_thread(thread):
    _async_raise(thread.ident, SystemExit)


def add_include_lit_to_sliceheader(dirname):
    # bad_source_sink_file = "/home/raoxue/Downloads/SARD-testsuite-108/source_sink.txt"
    # openbad_source_sink_file = open(bad_source_sink_file, "r")
    # badsource_sink_linelist = openbad_source_sink_file.readlines()
    outdir = "workspace_fuzz/"
    # openbad_source_sink_file.close()
    # for line in badsource_sink_linelist:
    outputdir_path = outdir + dirname + "/code_gened"
    # self_com_dir = outdir + line.strip() + "/self_com"
    for root, dirs, files in os.walk(outputdir_path):
        for file in files:

            src_file = os.path.join(root, file)
            if file.endswith(".h"):
                ropenfile = open(src_file, "r")
                readlines = ropenfile.readlines()
                ropenfile.close()
                wopenfile = open(src_file, "w")
                wopenfile.write("#include <arpa/inet.h>\n")
                wopenfile.write("#include <netinet/in.h>\n")
                wopenfile.write("#include <stdio.h>\n")
                wopenfile.write("#include <stdlib.h>\n")
                wopenfile.write("#include <string.h>\n")
                wopenfile.write("#include <sys/socket.h>\n")
                wopenfile.write("#include <unistd.h>\n")
                wopenfile.write("#include <wchar.h>\n")
                for line in readlines:
                    wopenfile.write(line)
                wopenfile.close()
            else:
                pass


def auto_groundtruth():
    bad_source_sink_file = "/home/raoxue/Downloads/SARD-testsuite-108/source_sink.txt"
    openbad_source_sink_file = open(bad_source_sink_file, "r")
    badsource_sink_linelist = openbad_source_sink_file.readlines()
    outdir = "/home/raoxue/Documents/cbmc_verifed_juliet_test_case_ground_truth/"
    openbad_source_sink_file.close()
    for line in badsource_sink_linelist:
        outputdir_path = outdir + line.strip()
        # find source and sink list
        source_line_list = []
        sink_line_list = []
        find_source_sink_in_groundtruth(outputdir_path, source_line_list, sink_line_list)
        print(sink_line_list)
        workprodir = "workspace_fuzz/" + line
        sourcefile = workprodir + "/sourceloc.txt"
        opensourcefile = open(sourcefile, "w")
        for srcinfo in source_line_list:
            opensourcefile.write(srcinfo + "\n")
        opensourcefile.close()
        for srcinfo in source_line_list:
            srcsplitind = srcinfo.index(":")
            srcfile = srcinfo[:srcsplitind]
            srcline = srcinfo[srcsplitind + 1:]
            print(srcfile)
            print(srcline)
            for sinkinfo in sink_line_list:
                sinksplitind = sinkinfo.index(":")
                sinkfile = sinkinfo[:sinksplitind]
                sinkline = sinkinfo[sinksplitind + 1:]
                print(sinkfile)
                print(sinkline)

                # auto generate slice
                command = "./gen_slice_for_fuzz_run " + line.strip() + " " + outputdir_path + " " + srcfile + " " + srcline + " " + sinkfile + " " + sinkline + " >err.txt"
                print(command)
                (status, output) = subprocess.getstatusoutput(command)
                print(output)


def auto_parse_slice_sourceline(dirname):
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz/"
    # copi_to_ll = "cd workspace_fuzz/" + dirname + "/source_code;clang -fno-discard-value-names -O0 -g -emit-llvm -S  *.c -DINCLUDEMAIN"
    # (status, output) = subprocess.getstatusoutput(copi_to_ll)
    issocket = False
    for root, dirs, files in os.walk(in_outdir):
        for file in files:
            if "_socket_" in file:
                issocket = True
            print(file)
            rawinputfile = workfuzz + file[:-4] + "/raw_input.txt"
            print(rawinputfile)
            src_file = os.path.join(root, file)
            blockxmlfile = workfuzz + file[:-4] + "/BasicBlock_sum_inst.xml"
            workfuzzdir = workfuzz + file[:-4]
            corate = copute_coverage_rate(rawinputfile, blockxmlfile)
            printcom = "cd " + workfuzzdir + "; echo " + str(corate) + " >coverega_rate.txt"
            os.system(printcom)
            '''解析xml文件获取sourcefile和sinkfile'''
            in_out_xmldoc = parse(src_file)
            slice_sourcelinenode = in_out_xmldoc.createElement("slice_sourceline")
            slice_sinklinenode = in_out_xmldoc.createElement("slice_sinkline")
            in_out_root = in_out_xmldoc.documentElement
            in_out_root.appendChild(slice_sourcelinenode)
            in_out_root.appendChild(slice_sinklinenode)
            src_staele = in_out_root.getElementsByTagName("src_sta")

            src_sta_value = src_staele[0].getAttribute("value")
            print(src_sta_value)
            sink_staele = in_out_root.getElementsByTagName("sink_sta")
            sink_sta_value = sink_staele[0].getAttribute("value")
            badefilename = file[:-11]
            print(badefilename)
            code_gened_dir = workdir + "/" + dirname + "/" + "code_gened"
            """rand情况一对多生成多个slice, 不同的slice中source_sta的行号可能不同"""
            for root_cg, dirs_cg, files_cg in os.walk(code_gened_dir):
                for file_cg in files_cg:
                    # print(file)
                    if badefilename not in file_cg:
                        continue
                    cg_srcfile = os.path.join(root_cg, file_cg)
                    opcgfile = open(cg_srcfile, 'r')
                    cgreadlines = opcgfile.readlines()
                    opcgfile.close()
                    count = 0
                    for cgline in cgreadlines:
                        count = count + 1

                        # if len(cgline.strip())>5 and cgline.strip()!="{" and cgline.strip()[4:-1] in src_sta_value:
                        if src_sta_value in cgline.strip():
                            slice_linenode = in_out_xmldoc.createElement("slice_line")
                            slice_linenode.setAttribute("slinefilename", file_cg)
                            slice_linenode.setAttribute("line", str(count))
                            slice_sourcelinenode.appendChild(slice_linenode)
                            break

                    count = 0
                    for cgline in cgreadlines:
                        count = count + 1
                        # if len(cgline.strip())>5 and  cgline.strip()!='' and cgline.strip()!="{" and cgline.strip()!="}" and cgline.strip()[:-1] in sink_sta_value:
                        if sink_sta_value in cgline.strip():
                            slice_linenode = in_out_xmldoc.createElement("slice_line")
                            slice_linenode.setAttribute("slinefilename", file_cg)
                            slice_linenode.setAttribute("line", str(count))
                            slice_sinklinenode.appendChild(slice_linenode)
                            break

            with open(src_file, 'w') as f:
                f.write(in_out_xmldoc.toprettyxml(indent=' '))
                f.close()
    if issocket:
        add_include_lit_to_sliceheader()


def add_include_lit_to_sliceheader():
    outputdir_path = "workspace_fuzz/" + dirname + "/code_gened"
    for root, dirs, files in os.walk(outputdir_path):
        for file in files:
            src_file = os.path.join(root, file)
            if file.endswith(".h"):
                ropenfile = open(src_file, "r")
                readlines = ropenfile.readlines()
                ropenfile.close()
                wopenfile = open(src_file, "w")
                wopenfile.write("#include <arpa/inet.h>\n")
                wopenfile.write("#include <netinet/in.h>\n")
                wopenfile.write("#include <stdio.h>\n")
                wopenfile.write("#include <stdlib.h>\n")
                wopenfile.write("#include <string.h>\n")
                wopenfile.write("#include <sys/socket.h>\n")
                wopenfile.write("#include <unistd.h>\n")
                wopenfile.write("#include <wchar.h>\n")
                for line in readlines:
                    wopenfile.write(line)
                wopenfile.close()
            else:
                pass


def copute_coverage_rate(rawinputfile, blockxmlfile):
    coveragerate = 0
    openfile = open(rawinputfile, "r", encoding='utf-8', errors='ignore')
    readlinelist = openfile.readlines()
    openfile.close()
    fuzzblocklist = []
    for line in readlinelist:
        if line.strip().startswith("blockname:"):
            if line.strip().endswith("......"):
                continue
            blockname = line.strip()
            if blockname not in fuzzblocklist:
                fuzzblocklist.append(blockname)

    in_out_xmldoc = parse(blockxmlfile)
    in_out_root = in_out_xmldoc.documentElement
    rawblocklist = {}
    bbsumlist = in_out_root.getElementsByTagName("bb_sumlist")
    bbinstlist = bbsumlist[0].getElementsByTagName("bbinst")
    suminst = 0
    for bb in bbinstlist:
        bbname = bb.getAttribute("bbname")
        numinst = bb.getAttribute("instsum")
        rawblocklist[bbname] = numinst
        suminst = suminst + int(numinst)
    if len(fuzzblocklist) == len(rawblocklist):
        coveragerate = 1
    else:
        fuzzinst = 0
        for ele in fuzzblocklist:
            if ele not in rawblocklist.keys():
                continue
            numinst = rawblocklist[ele]
            fuzzinst = fuzzinst + int(numinst)
        coveragerate = fuzzinst / suminst
    print(coveragerate)
    return coveragerate

    pass


def get_dirnamelist(testcasefile):
    
    openbad_source_sink_file = open(testcasefile, "r")
    badsource_sink_linelist = openbad_source_sink_file.readlines()
    openbad_source_sink_file.close()
    dirmanelist = []
    for line in badsource_sink_linelist:
        linestrip = line.strip()
        dirmanelist.append(linestrip)
    return dirmanelist



import sys
if __name__ == '__main__':
    if len(sys.argv) == 1:
        testcasefile = "examples/testcaselist.txt"
        dirnamelist = get_dirnamelist(testcasefile)
        for dirname in dirnamelist:
            #对每一个examples/dirname,自动调用pre_process.py进行预处理，生成workspace/dirname/source_code
            command = "python3 pre_process_fuzz.py examples/" + dirname
            (status, output) = subprocess.getstatusoutput(command)

            auto_fuzz_one(dirname)
            auto_instrument(dirname)
            auto_parse_slice_sourceline(dirname)
            auto_instrument_slice(dirname)
            compare_sink_one_with_c_v1(dirname)
    else:
        dirname=sys.argv[1]
        auto_fuzz_one(dirname)
        auto_instrument(dirname)
        auto_parse_slice_sourceline(dirname)
        auto_instrument_slice(dirname)
        compare_sink_one_with_c_v1(dirname)
        pass

