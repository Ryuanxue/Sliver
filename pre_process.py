
import os
import sys
import shutil
import re

#这个函数是用来将testcase中的文件进行预处理，将所有的函数声明、结构体声明、全局变量声明提取出来，放在一个新的头文件中
def auto_decoup_one(dirname,outputdir, inputdir): #dirname is the name of the test case
    oldtestcase_dir=inputdir+"/"
    newtestcase_dir=outputdir

   
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

#复制文件夹
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

#自动解耦一个项目
def auto_genslice_one(abspath_project):
	#将abspath_project分解为dirname和filename
	inputdir = os.path.dirname(abspath_project)
	dirname = os.path.basename(abspath_project)
	# inputdir_path = inputdir +'/'+ dirname
    #解耦原代码到workprodir
	workprodir = "workspace/" + dirname+"/"
	if not os.path.exists(workprodir):
		os.makedirs(workprodir)
	auto_decoup_one(dirname ,workprodir, inputdir)

	output_dir="workspace/"+dirname+"/source_code"
   	#复制workprodir中的文件到
	if not os.path.exists(output_dir):
		os.makedirs(output_dir)
	copydir(workprodir+dirname,output_dir)
	shutil.rmtree(workprodir+dirname) #删除解耦后的临时文件

#main入口，调用auto_genslice_one
if __name__ == '__main__':
	abspath_project=sys.argv[1] #获取项目绝对路径
	auto_genslice_one(abspath_project)