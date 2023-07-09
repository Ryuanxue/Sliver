import os
import subprocess
import sys
def auto_gen_self_com_one():
   
    workspacedir="workspace/"+subdirname
    absworkdir=os.path.abspath(workspacedir)
    print(absworkdir)
    com = "cd "+absworkdir + "/code_gened;ls -c"
    (status, output) = subprocess.getstatusoutput(com)
    cfile_list = []  #cfilename
    tempstr = ""
    for i in output:
        if i == "\n":
            cfile_list.append(tempstr)
            tempstr = ""
        else:
            tempstr = tempstr + i
    cfile_list.append(tempstr)
    selfcomdir=absworkdir+"/self_com"
    if not os.path.exists(selfcomdir):
        os.makedirs(selfcomdir)

    for cfile in cfile_list:
        if cfile.endswith(".c"):
            funname=cfile[:-2]
            genselfcom_commmand="python3 script/Gen_Self_Com/gen_self_com.py "+absworkdir+ " "+funname
            (status, output) = subprocess.getstatusoutput(genselfcom_commmand)
            print(genselfcom_commmand)
            mvcommand="mv -f "+funname+"_self_com.c "+selfcomdir
            (status, output) = subprocess.getstatusoutput(mvcommand)
            print(mvcommand)





if __name__ == '__main__':
    subdirname=sys.argv[1]
    auto_gen_self_com_one()