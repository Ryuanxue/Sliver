import os
import xml.etree.ElementTree as ET
import datetime
import subprocess
import time
from xml.dom.minidom import parse


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



def auto_parse_slice_sourceline(dirname):
    workdir = "workspace_fuzz"
    in_outdir = workdir + "/" + dirname + "/slice_in_out_info"
    workfuzz = workdir + "/" + dirname + "/work_fuzz/"
    file="motivating_ex127motivating_ex118_in_out.xml"
    rawinputfile = workfuzz + file[:-4] + "/raw_input.txt"
    src_file = os.path.join(in_outdir, file)
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
                
                xmlfile = "motivating_ex127motivating_ex118_in_out.xml"
                perslice = "motivating_ex127motivating_ex118_in_out"
                inst_slice = "cd " + codegened_dir + ";opt -load libSliverUtilpass.so -slice-inst -in-xml-slice=../slice_in_out_info/" + xmlfile + " -S " + file + " -o " + file
                (status, output) = subprocess.getstatusoutput(inst_slice)
                print(inst_slice)

                perslicedir = workfuzz + "/" + perslice
                """编译为共享库"""
                basename=file[:-3]
                index=basename[-1]
                com_to_so = "cd " + codegened_dir + ";clang -fno-stack-protector -shared -Wl,-soname,adder -o libadder"+index+".so -fPIC " + file + " ../source_code/*.c"
                print(com_to_so)
                (status, output) = subprocess.getstatusoutput(com_to_so)
                """将共享库移动到相应的workfuzz目录中"""
                os.system("cd " + codegened_dir + ";mv libadder"+index+".so ../work_fuzz/" + perslice)
	
   


if __name__ == '__main__':
	# 对moti_exp生成slice
	commaand_slice="./gen_slice_for_fuzz_run moti_exp motivating_ex1.c 27 motivating_ex1.c 18 50 op 2"
	os.system(commaand_slice)

	#合并两个xml文件
	xml1="workspace_fuzz/moti_exp/slice_in_out_info/motivating_ex127motivating_ex118_1_in_out.xml"
	xml2="workspace_fuzz/moti_exp/slice_in_out_info/motivating_ex127motivating_ex118_2_in_out.xml"

	tree1 = ET.parse(xml1)
	root1 = tree1.getroot()
	tree2 = ET.parse(xml2)
	root2 = tree2.getroot()

	funsig1=root1.find('funsig')
	funsig2=root2.find('funsig')

	#如果funsig2中的元素不在funsig1中，则添加
	for child in funsig2.findall('fun'):
		funname2=child.get('funname')
		existing_fun1=funsig1.find(f'fun[@funname="{funname2}"]')
		if existing_fun1 is None:
			funsig1.append(child)


	merged_tree=ET.ElementTree(root1)
	savexmlname='workspace_fuzz/moti_exp/slice_in_out_info/motivating_ex127motivating_ex118_in_out.xml'
	merged_tree.write(savexmlname,encoding="utf-8",xml_declaration=True)


	#创建work_fuzz
	workfuzz = "workspace_fuzz/moti_exp/work_fuzz"
	if not os.path.exists(workfuzz):
		os.makedirs(workfuzz)
	perslice = "motivating_ex127motivating_ex118_in_out"
	xmlfile="motivating_ex127motivating_ex118_in_out.xml"
	perslicedir = workfuzz + "/" + perslice
	if not os.path.exists(workfuzz + "/" + perslice):
		os.makedirs(workfuzz + "/" + perslice)
		#复制utils/source_code_moti_exp_fuzz中的所有子文件到perslicedir中
		command_copy = "cp -r utils/source_code_moti_exp_fuzz/* " + perslicedir
		os.system(command_copy)

		#自动插装基本块
		bllfile="motivating_ex1.ll"
		inst_block = "cd " + perslicedir + "; opt -load libSliverUtilpass.so -in-block -in-xml-bb-inst=../../slice_in_out_info/" + xmlfile + " -S " + bllfile + " -o " + bllfile
		os.system(inst_block)
		print("finish basic block instrument")

		#afl插装
		compil_fuzz = "cd " + perslicedir + "; afl-clang *.ll"
		os.system(compil_fuzz)

		#运行afl-fuzz获得插装的数据
		
		fuzz_com = "cd " + perslicedir + ";afl-fuzz -i in1 -o out ./a.out"
		execute_command(fuzz_com, timeout=30)
		ind = getPid()
		for ele in ind:
			pid = ele.decode(encoding='utf-8')
			os.system("kill " + pid)
			print(pid)

		#解析slice的行号
	auto_parse_slice_sourceline("moti_exp")

	# #插装slice并编译为共享库
	auto_instrument_slice("moti_exp")

	#编译fuzz_slice，link生成可执行文件
	compi_command="cd " + perslicedir + "; clang comparesink.c motivating_ex1.c ../../code_gened/*.ll  -o comparesink"
	ret = os.system(compi_command)
	print("status...")
	print(ret)
	if ret == 0:
		cosiscom = "cd " + perslicedir + ";echo true >cosistence.txt"
		os.system(cosiscom)
	else:
		cosiscom = "cd " + perslicedir + ";echo false >cosistence.txt"
		os.system(cosiscom)








