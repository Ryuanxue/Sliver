# -*-coding:utf-8-*-
import os

include_line=[]
def find_include():
    path_list = os.listdir(inputdir)
    for file in path_list:
        newinput = inputdir + "/" + file
        if os.path.splitext(file)[1] == ".c":
            file1 = open(newinput, "r", encoding='utf-8', errors='ignore')
            try:
                for line in file1.readlines():
                    if "#include " in line:
                        if line in include_line:
                            continue
                        include_line.append(line)
            finally:
                file1.close()


def output_to_file():
    file.write("#indef CODEGENED_INCLUDE_H_ \n")
    file.write("#define CODEGENED_INCLUDE_H_\n")
    for i in include_line:
        file.write(i)
    file.write("#endif\n")
if __name__ == '__main__':
    inputdir="/home/raoxue/Documents/copy_openssl/ssl"
    outputfile="codegened_include.h"
    file = open(outputfile, "a")
    find_include()
    output_to_file()
    file.close()