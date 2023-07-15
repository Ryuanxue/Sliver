import os
import subprocess

def get_dirnamelist(testcasefile):
   
    opentestcasefile = open(testcasefile, "r")
    testcase_linelist = opentestcasefile.readlines()
    opentestcasefile.close()
    dirmanelist = []
    for line in testcase_linelist:
        linestrip = line.strip()
        dirmanelist.append(linestrip)
    return dirmanelist

def find_source_sink_in_groundtruth(dirpath, source_line_list, sink_line_list):
    for root, dirs, files in os.walk(dirpath):
        for file in files:
            if file.endswith(".h"):
                continue
            if file.endswith(".c"):
                if file=="io.c":
                    continue
                src_file = os.path.join(root, file)
                open_src_file=open(src_file,"r",encoding='utf-8',errors='ignore')
                src_file_lines=open_src_file.readlines()
                open_src_file.close()
                i=1
                for line in src_file_lines:
                    if "SLIVER_SOURCE" in line and not line.startswith("//"):
                        srcele=file+":"+str(i)
                        source_line_list.append(srcele)
                    elif "SLIVER_SINK" in line and not line.startswith("//"):
                        sinkele=file+":"+str(i)
                        sink_line_list.append(sinkele)
                    i=i+1


def auto_gen_verify_command_one(dirname):
    badsource_sink_linelist=[dirname]
    for line in badsource_sink_linelist:
        subdirname = line.strip()
        workspacedir = "workspace/" + subdirname
        absworkdir = os.path.abspath(workspacedir)
        com = "cd " + absworkdir + "/code_gened;ls -c"  # ls -c按照文件修改时间排序
        (status, output) = subprocess.getstatusoutput(com)
        cfile_list = []  # cfilename
        tempstr = ""
        for i in output:  # 将ls -c的结果按行存入cfile_list
            if i == "\n":  # 按行存入cfile_list
                cfile_list.append(tempstr)
                tempstr = ""  # 清空tempstr
            else:
                tempstr = tempstr + i  # 将每一个的字符存入tempstr
        cfile_list.append(tempstr)

        # 创建cbmc_result文件夹
        cbmc_result_dir = absworkdir+"/cbmc_result"
        if not os.path.exists(cbmc_result_dir):
            os.makedirs(cbmc_result_dir)

        for cfile in cfile_list:  # 对每一个c文件生成cbmc命令
            if cfile.endswith(".c"):
                funname = cfile[:-2]

                # 生成能记录时间和内存的cbmc命令
                cbmc_verify_command = "time -v cbmc -I"+workspacedir+"/source_code -I"+workspacedir+"/code_gened " + workspacedir + "/code_gened/" + cfile + " " + workspacedir+"/self_com/"+funname + "_self_com.c " + workspacedir+"/source_code/*.c --function " + \
                    funname + "_self_com --unwind 11 --no-built-in-assertions -slice-formula --drop-unused-functions --trace --json-ui > "+workspacedir+"/cbmc_result/" + \
                    funname+"_cbmc_result.json 2> " + workspacedir+"/cbmc_result/" + \
                    funname+"_cbmc_time_memery.txt"
                os.system(cbmc_verify_command)

                # # (status, output) = subprocess.getstatusoutput(genselfcom_commmand)
                # print('echo "'+cbmc_verify_command+'"')
                # print(cbmc_verify_command)


def auto_genslice_one(dirname):
   
   #对每一个examples/dirname,自动调用pre_process.py进行预处理，生成workspace/dirname/source_code
    command = "python3 pre_process.py examples/" + dirname
    (status, output) = subprocess.getstatusoutput(command)
    print(status)

    output_dir="workspace/"+dirname+"/source_code"
    

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
            command = "./gen_slice_run " + dirname +  " " + srcfile + " " + srcline + " " + sinkfile + " " + sinkline + " 50 " + srcfunname + " " + argnum + " >err.txt"
            print(command)
            (status, output) = subprocess.getstatusoutput(command)
            print(output)
    
    #修改安全级
    command="python3 set_sec_level.py "+dirname
    (status, output) = subprocess.getstatusoutput(command)
    #自合成
    command="python3 gen_self_com.py "+dirname
    (status, output) = subprocess.getstatusoutput(command)

    #验证
    auto_gen_verify_command_one(dirname)



            

def auto_groundtruth_all():
    testcasefile = "examples/testcaselist.txt"
    dirnamelist = get_dirnamelist(testcasefile)
    for dirname in dirnamelist:
        auto_genslice_one(dirname)
	

if __name__ == '__main__':
    auto_groundtruth_all() #groundtruth的主要入口