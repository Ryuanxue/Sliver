import xml.etree.ElementTree as ET
import sys

#从xml文件中获得source变量名
def get_source_var(xml_file):
	#打开xml文件
	tree = ET.parse(xml_file)
	root = tree.getroot()

	# 查找指定元素并获取 newname 属性值
	element = root.find("in_vars/in_var")
	if element is not None:
		newname = element.get("newname")
		return newname

    # 如果未找到指定元素，则返回 None
    
	return None


#写一个函数，修该xml文件中的属性值
def mod_secl_level(sec_xml_file,in_outt_xml_file):
	#打开xml文件
	tree = ET.parse(sec_xml_file)
	root = tree.getroot()

	srnname=get_source_var(in_outt_xml_file)
	print("srnname")
	print(srnname)

	for element in root.iter("arg"):
		print(element.get("name"))
		if element.get("name")==srnname:
			element.set("level","H")
	tree.write(sec_xml_file, encoding="utf-8", xml_declaration=True)

import os
if __name__ == '__main__':
	pro_name=sys.argv[1]
	#workspace/pro_name/sec_file之下的所有安全级文件
	dir_sec_file="workspace/"+pro_name+"/sec_file"
	#workspace/pro_name/slice_in_out_info下的所有xml文件
	dir_in_outt_xml="workspace/"+pro_name+"/slice_in_out_info"
	
	#获得dir_sec_file中的所有文件
	sec_file_list=os.listdir(dir_sec_file)
	for sec_file in sec_file_list:
		#获得sec_file的绝对路径
		sec_file_abs=os.path.join(dir_sec_file,sec_file)
		#获得sec_file对应的xml文件
		in_outt_xml_file=sec_file[:-9]+"in_out.xml"
		#获得in_outt_xml_file的绝对路径
		in_outt_xml_file_abs=os.path.join(dir_in_outt_xml,in_outt_xml_file)
		#修改安全级
		mod_secl_level(sec_file_abs,in_outt_xml_file_abs)
		#




