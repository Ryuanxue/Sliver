import os
import sys
dic="/home/raoxue/Documents/copy_openssl/ssl"
dic=sys.argv[1]
abspath = os.path.abspath(dic)
dicpath = os.listdir(dic)
for file in dicpath:
    filename = os.path.basename(file)
    if filename.endswith(".ll") and filename!="aaawhopro.ll":
        command="cd "+dic+";opt -load libindcall.so --stru-mem "+filename
        os.system(command)

