import os
import subprocess
import sys

def auto_gensecfile_all():
    #生成安全级文件和global_info.xml
    #可以先手动生成global_info.mxl，之后再进行整体设计

  
    line=projectname
    subdir = line.strip()
    copi_to_ll = "cd workspace/" + subdir + "/code_gened;clang -fno-discard-value-names -O0 -g -emit-llvm -S -I../source_code "+ICLUDE+" *.c"
    (status, output) = subprocess.getstatusoutput(copi_to_ll)

    link_source_code_ll="cd workspace/" + subdir + "/source_code;llvm-link -S -o all.ll *.ll"
    os.system(link_source_code_ll)
    #使用opt -load libSliverUtilpass.so -global-type all.ll生成global_info.xml
    comand_opt="opt -load libSliverUtilpass.so -global-type workspace/" + subdir + "/source_code/all.ll"
    os.system(comand_opt)
    #删除all.ll
    rm_all_ll="cd workspace/" + subdir + "/source_code;rm -f all.ll"
    os.system(rm_all_ll)
    #移动global_info.xml到subdir目录下
    mvcommand="mv -f global_info.xml workspace/" + subdir
    os.system(mvcommand)

    com = "cd workspace/" + subdir + "/code_gened;ls -c"
    (status, output) = subprocess.getstatusoutput(com)
    cfile_list = []
    tempstr = ""
    for i in output:
        if i == "\n":
            cfile_list.append(tempstr)
            tempstr = ""
        else:
            tempstr = tempstr + i
    cfile_list.append(tempstr)

    for file in cfile_list:
        functionname = file[:-2]
        if file.endswith(".c"):
            secfiledir = "workspace/" + subdir + "/sec_file"
            if not os.path.exists(secfiledir):
                os.makedirs(secfiledir)
            gensecfilecom = "opt -load libSliverUtilpass.so -type-level -funname " + functionname + " workspace/" + subdir + "/code_gened/" + functionname + ".ll"
            mvcommand = "mv -f " + functionname + "_level.xml " + secfiledir
            print(gensecfilecom)
            print(mvcommand)
            os.system(gensecfilecom)
            os.system(mvcommand)

if __name__ == '__main__':
    # ICLUDE="-I../source_code/"
    ICLUDE=sys.argv[1]
    SUB_DIR=sys.argv[2]
    projectname=sys.argv[3]
    auto_gensecfile_all()