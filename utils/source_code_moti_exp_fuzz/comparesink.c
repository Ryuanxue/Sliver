#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char sensitive_data[20];

int main()
{
    FILE *fp;

    fp = fopen("raw.txt", "rb");
    if (fp == NULL) {
        printf("Failed to open file\n");
        return 1;
    }

	char **argv;
	char *source;
	int auth_ret;
	char *sink;

int startread;
    fread(&startread, sizeof(int), 1, fp);
    // printf("%d\n",startread);
    char varname[50];
    memset(varname,0,50);
    fread(varname,sizeof(char),startread,fp);
	printf("%s\n",varname);

 while (!feof(fp)) {
    	if(strcmp(varname,"start")==0)
    	{
			//则继续读取len,根据len读取字符串argv[1]，继续读取len,根据len读取字符串sensitive_data
			int len;
			fread(&len,sizeof(int),1,fp);
			argv = (char**)malloc(sizeof(char*) * 2);
			argv[1]=(char *)malloc(len+1);
			fread(argv[1],sizeof(char),len,fp);
			printf("%s\n",argv[1]); //argv[1]
			fread(&len,sizeof(int),1,fp);
			fread(sensitive_data,sizeof(char),len,fp);
			printf("%s\n",sensitive_data); //sensitive_data
    		goto next_data;
    	}else if (strcmp(varname,"source")==0)
    	{
			//则继续读取len,根据len读取字符串secret
			int len;
			fread(&len,sizeof(int),1,fp);
			source=(char *)malloc(len+1);
			memset(source,0,len+1);
			fread(source,sizeof(char),len,fp);
			printf("%s\n",source);
			// free(source);
    		goto next_data;
    	}else if (strcmp(varname,"sink")==0)
        {
           //继续读取len,根据len读取字符串sensitive_data
		   int len=0;
			fread(&len,sizeof(int),1,fp);
			sink=(char *)malloc(len+1);
			memset(sink,0,len+1);
			printf("len:%d\n",len);
			fread(sink,sizeof(char),len,fp);
			printf("%s\n",sink);

			//如果argv[1]不等于secret，判断sink的值为空
			if (strcmp(argv[1],"passwd")!=0)
			{
				if (strcmp(sink,"")!=0)
				{
					printf("sink!=NULL\n");
					printf("sink:%s\n",sink);
					printf("source:%s\n",source);
					printf("argv:%s\n",argv[1]);
					printf("sensitive_data:%s\n",sensitive_data);
					exit(1);
				}
			}
			
			char *newsink;
			if (auth_ret)
			{
			newsink=motivating_ex127motivating_ex118_1(source,argv,0);
			//比较sink和newsink
			if (strcmp(sink,newsink)!=0)
			{
			
				printf("sink!=newsink\n");
				printf("sink:%s\n",sink);
				printf("newsink:%s\n",newsink);
				printf("source:%s\n",source);
				printf("argv:%s\n",argv[1]);
				printf("sensitive_data:%s\n",sensitive_data);
				exit(1);
			}
			
			free(source);

			}
			
			else
			{
				newsink=motivating_ex127motivating_ex118_2(source,argv,0);
				//比较sink和newsink
				if (strcmp(sink,newsink)!=0)
				{
				
					printf("sink!=newsink\n");
					printf("sink:%s\n",sink);
					printf("newsink:%s\n",newsink);
					printf("source:%s\n",source);
					printf("argv:%s\n",argv[1]);
					printf("sensitive_data:%s\n",sensitive_data);
					
					exit(1);
				}
			}
			
			free(newsink);
			free(argv[1]);
			free(argv);
			free(sink);
			memset(sensitive_data,0,20);

            goto next_data;
            
        }else if ( strcmp(varname,"auth_ret")==0)
		{
			//则继续读取整数值赋值给auth_ret
			fread(&auth_ret,sizeof(int),1,fp);
			printf("%d\n",auth_ret); //auth_ret
			goto next_data;
			
		}
		

next_data:
    	{
	    	fread(&startread, sizeof(int), 1, fp);
	    	printf("%d\n",startread);
            if (startread==0)
            {
                fread(varname,sizeof(char),12,fp);
                printf("%s\n",varname);
                break;
            }
	    	memset(varname,0,50);
	    	fread(varname,sizeof(char),startread,fp);
	    	printf("%s\n",varname);

    	} 

 }

}
