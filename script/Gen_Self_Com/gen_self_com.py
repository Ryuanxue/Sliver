import copy
import sys
import os
from string import Template
from xml.dom.minidom import Document
from xml.dom.minidom import parse
from pycparser import c_generator, c_ast, c_parser, parse_file
import subprocess

defalut_char_byte=16

create_ptr_var = Template('${type} *${var};\n')
create_twoptr_var=Template('${type} **${var};\n')
create_non_ptr_var = Template('${type} ${var};\n')
arr_to_ptr_assign= Template('${left} = ${right};\n')
nonptr_to_ptr_assign= Template('${left} = &${right};\n')
create_arr_var= Template('${type} ${var}[${num}];\n')
forloop_sta=Template('for(int i=0;i<${num};i++){${dest}[i]=${src}[i];}\n')

forloop_every_assigh=Template('${dest}[${num}]=${src}[${num}];\n')
memcpy_sta=Template('memcpy(${dest},${src},${num});\n')
basic_assign=Template('${left} = ${right};\n')
# strcpy_assign=Template('strcpy(${left},${right});')
strcpy_assigh=Template('strcpy(${dest},${src});\n')
funptr_array=Template('${type}={${candifuns}};\n')
rand_assign=Template('rand_i=rand()%${num};\n')
rand_choose_fun=Template('${name}[rand_i]')
assert_char=Template('assert(strcmp(${var1},${var2})==0);\n')
assert_non_char=Template('assert(${var1}==${var2});\n')
for_assign_sta=Template('for(int i=0;i<${num};i++){${left}[i]=${right}[i];}\n')


start_assign_sta=[] #存储slice形参的交叉赋值语句，以及全局变量的交出赋值语句
firstcall_globalsta=[]#存储第一次调用的时候全局变量赋值语句
second_globalsta=[] #存储第二次调用的时候全局变量赋值语句
stru_mem_candi_fun={}
funptr_array_size={}
funptr_array_csta=[]
fun_args1=[]
fun_args2=[]
sink_output=[]
sink_arg_type=[]
assert_output_sta=[]
op_sink1_function=[]
op_sink2_function=[]
sink_output_copy=[]
sinkvar_assign=[]
function_call_sta=[]
process_type=[]
r_ast_sta_list=[]
m_ast_sta_list=[]
self_parmlist=[]
firstglobal=[]
secondglobal=[]
total_struct_size={}


def recur_assign_global(name1,name2,isptr,refname):
    global process_type
    """
    without consider array whose element is poiter
    :param name1:
    :param name2:
    :param isptr:
    :param refname:
    :param i:
    :return:
    """
    if refname in process_type:
        return
    process_type.append(refname)
    for tdecl in gtypedecl:
        typename = tdecl.getAttribute("name")
        if typename == refname:
            members = tdecl.getElementsByTagName("filed")
            for mem in members:
                name = mem.getAttribute("name")
                type = mem.getAttribute("type")
                ptr = mem.getAttribute("ptr")
                if isptr:
                    newname1 = name1 + "->"
                    newname2 = name2 + "->"
                else:
                    newname1 = name1 + "."
                    newname2 = name2 + "."
                rename1 = newname1 + name
                rename2 = newname2 + name
                if refname in total_struct_size.keys():
                    i = total_struct_size[refname]
                else:
                    i = 0
                bname = refname + name + str(i)
                if ptr == "*":
                    if mem.hasAttribute("ref"):
                        iszerosize = judge_struct_size_iszero(mem.getAttribute("ref"))
                        if iszerosize:
                            continue
                    if mem.hasAttribute("funptr"):
                        stru_mem = refname + "_" + name
                        if stru_mem in funptr_array_size.keys():
                            arraysize = funptr_array_size[stru_mem]
                            tempstr = rand_assign.substitute(num=arraysize)
                            start_assign_sta.append(tempstr)
                            rightvalue = rand_choose_fun.substitute(name=stru_mem)
                            tempstr = basic_assign.substitute(left=rename1, right=rightvalue)
                            start_assign_sta.append(tempstr)
                            tempstr = basic_assign.substitute(left=rename2, right=rightvalue)
                            start_assign_sta.append(tempstr)
                        else:
                            tempstr = basic_assign.substitute(left=rename1, right="NULL")
                            start_assign_sta.append(tempstr)
                        continue

                    if type == "void" or "char" in type or type == "__uint8_t":
                        if type == "void":
                            type = "char"
                        tempstr = create_arr_var.substitute(type=type, var=bname + "arr1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = arr_to_ptr_assign.substitute(left=rename1, right=bname + "arr1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_arr_var.substitute(type=type, var=bname + "arr2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("level") and mem.getAttribute("level") == "L":
                            # tempstr = memcpy_sta.substitute(dest=bname + "arr2", src=bname+ "arr1",
                            #                                 num=defalut_char_byte)
                            tempstr = memcpy_sta.substitute(dest=bname + "arr2", src=bname + "arr1",
                                                            num=defalut_char_byte)
                            start_assign_sta.append(tempstr)
                            # for elenum in range(0, 16):
                            #     tempstr = forloop_every_assigh.substitute(
                            #         dest=bname + "arr2", src=bname + "arr1", num=elenum)
                            #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "arr2", src=bname + "arr1",
                                #                             num=defalut_char_byte)
                                # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=bname+'arr1',right=bname+'arr1')

                        continue
                    tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                    start_assign_sta.append(tempstr)
                    tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "store1")
                    start_assign_sta.append(tempstr)
                    tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                    start_assign_sta.append(tempstr)
                    tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "store2")
                    start_assign_sta.append(tempstr)
                    if mem.hasAttribute("ref"):
                        refname = mem.getAttribute("ref")
                        if refname in total_struct_size.keys():
                            total_struct_size[refname] = total_struct_size[refname] + 1
                        else:
                            total_struct_size[refname] = 0
                        recur_assign(rename1, rename2, True, refname)
                    else:
                        if mem.getAttribute("level") == "L":
                            tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                            start_assign_sta.append(tempstr)
                elif ptr == "**":
                    if "char" in type or "__uint8_t" == type or type == "void":
                        if type == "void":
                            type = "char"
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "1")
                        start_assign_sta.append(tempstr)
                        # tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                        tempstr = create_arr_var.substitute(type=type, var=bname + "store1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        # tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        tempstr = arr_to_ptr_assign.substitute(left=bname + "1", right=bname + "store1")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "2")
                        start_assign_sta.append(tempstr)
                        # tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                        tempstr = create_arr_var.substitute(type=type, var=bname + "store2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = arr_to_ptr_assign.substitute(left=bname + "2", right=bname + "store2")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("ref"):
                            refname = mem.getAttribute("ref")
                            if refname in total_struct_size.keys():
                                total_struct_size[refname] = total_struct_size[refname] + 1
                            else:
                                total_struct_size[refname] = 0
                            recur_assign(bname + "1", bname + "2", True, refname)
                        else:
                            if mem.getAttribute("level") == "L":
                                # tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                                tempstr = memcpy_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                                                num=defalut_char_byte)
                                start_assign_sta.append(tempstr)
                                # for elenum in range(0, 16):
                                #     tempstr = forloop_every_assigh.substitute(
                                #         dest=bname + "store2", src=bname + "store1", num=elenum)
                                #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                #                                  num=defalut_char_byte)
                                # start_assign_sta.append(tempstr)
                    else:
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                        # tempstr = create_arr_var.substitute(type=type, var=bname + "store1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        # tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        tempstr = nonptr_to_ptr_assign.substitute(left=bname + "1", right=bname + "store1")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "2")
                        start_assign_sta.append(tempstr)
                        tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                        # tempstr = create_arr_var.substitute(type=type, var=bname + "store2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=bname + "2", right=bname + "store2")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("ref"):
                            refname = mem.getAttribute("ref")
                            if refname in total_struct_size.keys():
                                total_struct_size[refname] = total_struct_size[refname] + 1
                            else:
                                total_struct_size[refname] = 0
                            recur_assign(bname + "1", bname + "2", True, refname)
                        else:
                            if mem.getAttribute("level") == "L":
                                # tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                                tempstr = memcpy_sta.substitute(dest=bname + "store2", src=nbame + "store1",
                                                                num=defalut_char_byte)
                                start_assign_sta.append(tempstr)
                                # for elenum in range(0, 16):
                                #     tempstr = forloop_every_assigh.substitute(
                                #         dest=bname + "store2", src=bname + "store1", num=elenum)
                                #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                #                                  num=defalut_char_byte)
                                # start_assign_sta.append(tempstr)
                else:
                    if mem.hasAttribute("ref"):
                        refname = mem.getAttribute("ref")
                        if refname in total_struct_size.keys():
                            total_struct_size[refname] = total_struct_size[refname] + 1
                        else:
                            total_struct_size[refname] = 0
                        if mem.hasAttribute("arr"):
                            arr = mem.getAttribute("arr")
                            for i in range(0, arr):
                                rename1 = rename1 + "[" + i + "]"
                                rename2 = rename2 + "[" + i + "]"
                                recur_assign(rename1, rename2, False, refname)
                        else:
                            recur_assign(rename1, rename2, False, refname)
                    else:
                        if mem.getAttribute("level") == "L":
                            """without set the leve of array"""
                            if mem.hasAttribute("arr"):
                                arr = mem.getAttribute("arr")
                                tempstr = memcpy_sta.substitute(dest=rename2, src=rename1, num=arr)
                                # tempstr=for_assign_sta.substitute(num=arr,left=rename2,right=rename1)
                                start_assign_sta.append(tempstr)
                            else:
                                tempstr = basic_assign.substitute(left=rename2, right=rename1)
                                start_assign_sta.append(tempstr)
            break


def recur_assign(name1,name2,isptr,refname):
    global  process_type
    """
    without consider array whose element is poiter
    :param name1:
    :param name2:
    :param isptr:
    :param refname:
    :param i:
    :return:
    """
    if refname in process_type:
        return
    process_type.append(refname)
    for tdecl in typedecl:
        typename=tdecl.getAttribute("name")
        if typename==refname:
            members=tdecl.getElementsByTagName("filed")
            for mem in members:
                name=mem.getAttribute("name")
                type=mem.getAttribute("type")
                ptr=mem.getAttribute("ptr")
                if isptr:
                    newname1=name1+"->"
                    newname2=name2+"->"
                else:
                    newname1 = name1 + "."
                    newname2 = name2 + "."
                rename1 = newname1 + name
                rename2 = newname2 + name
                if refname in total_struct_size.keys():
                    i = total_struct_size[refname]
                else:
                    i = 0
                bname = refname + name + str(i)
                if ptr=="*":
                    if mem.hasAttribute("ref"):
                        iszerosize = judge_struct_size_iszero(mem.getAttribute("ref"))
                        if iszerosize:
                            continue
                    if mem.hasAttribute("funptr"):
                        stru_mem=refname+"_"+name
                        if stru_mem in funptr_array_size.keys():
                            arraysize=funptr_array_size[stru_mem]
                            tempstr=rand_assign.substitute(num=arraysize)
                            start_assign_sta.append(tempstr)
                            rightvalue=rand_choose_fun.substitute(name=stru_mem)
                            tempstr=basic_assign.substitute(left=rename1,right=rightvalue)
                            start_assign_sta.append(tempstr)
                            tempstr=basic_assign.substitute(left=rename2, right=rightvalue)
                            start_assign_sta.append(tempstr)
                        else:
                            tempstr = basic_assign.substitute(left=rename1, right="NULL")
                            start_assign_sta.append(tempstr)
                        continue

                    if type == "void" or "char" in type or type=="__uint8_t":
                        if type=="void":
                            type="char"
                        tempstr = create_arr_var.substitute(type=type, var=bname+ "arr1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr =arr_to_ptr_assign.substitute(left=rename1, right=bname + "arr1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_arr_var.substitute(type=type, var=bname + "arr2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("level") and mem.getAttribute("level") == "L":
                            # tempstr = memcpy_sta.substitute(dest=bname + "arr2", src=bname+ "arr1",
                            #                                 num=defalut_char_byte)
                            tempstr = memcpy_sta.substitute(dest=bname + "arr2", src=bname + "arr1",
                                                            num=defalut_char_byte)
                            start_assign_sta.append(tempstr)
                            # for elenum in range(0,16):
                            #     tempstr = forloop_every_assigh.substitute(
                            #         dest=bname + "arr2", src = bname + "arr1", num = elenum)
                            #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "arr2", src=bname + "arr1",
                                #                             num=defalut_char_byte)
                                # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=bname+'arr1',right=bname+'arr1')

                        continue
                    tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                    start_assign_sta.append(tempstr)
                    tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "store1")
                    start_assign_sta.append(tempstr)
                    tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                    start_assign_sta.append(tempstr)
                    tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "store2")
                    start_assign_sta.append(tempstr)
                    if mem.hasAttribute("ref"):
                        refname=mem.getAttribute("ref")
                        if refname in total_struct_size.keys():
                            total_struct_size[refname] = total_struct_size[refname] + 1
                        else:
                            total_struct_size[refname] = 0
                        recur_assign(rename1,rename2,True,refname)
                    else:
                        if mem.getAttribute("level") == "L":
                            tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                            start_assign_sta.append(tempstr)
                elif ptr=="**":
                    if "char" in type or "__uint8_t"==type or type=="void":
                        if type=="void":
                            type="char"
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "1")
                        start_assign_sta.append(tempstr)
                        # tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                        tempstr = create_arr_var.substitute(type=type, var=bname + "store1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        # tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        tempstr = arr_to_ptr_assign.substitute(left=bname + "1", right=bname + "store1")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "2")
                        start_assign_sta.append(tempstr)
                        # tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                        tempstr = create_arr_var.substitute(type=type, var=bname + "store2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = arr_to_ptr_assign.substitute(left=bname + "2", right=bname + "store2")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("ref"):
                            refname=mem.getAttribute("ref")
                            if refname in total_struct_size.keys():
                                total_struct_size[refname] = total_struct_size[refname] + 1
                            else:
                                total_struct_size[refname] = 0
                            recur_assign(bname+"1",bname+"2",True,refname)
                        else:
                            if mem.getAttribute("level") == "L":
                                # tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                                tempstr = memcpy_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                                                num=defalut_char_byte)
                                start_assign_sta.append(tempstr)
                                # for elenum in range(0,16):
                                #     tempstr = forloop_every_assigh.substitute(
                                #         dest=bname + "store2", src = bname + "store1", num = elenum)
                                #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                #                                  num=defalut_char_byte)
                                # start_assign_sta.append(tempstr)
                    else:
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store1")
                        # tempstr = create_arr_var.substitute(type=type, var=bname + "store1", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        # tempstr = arr_to_ptr_assign.substitute(left=rename2, right=bname + "arr2")
                        tempstr = nonptr_to_ptr_assign.substitute(left=bname + "1", right=bname + "store1")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename1, right=bname + "1")
                        start_assign_sta.append(tempstr)
                        tempstr = create_ptr_var.substitute(type=type, var=bname + "2")
                        start_assign_sta.append(tempstr)
                        tempstr = create_non_ptr_var.substitute(type=type, var=bname + "store2")
                        # tempstr = create_arr_var.substitute(type=type, var=bname + "store2", num=defalut_char_byte)
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=bname + "2", right=bname + "store2")
                        start_assign_sta.append(tempstr)
                        tempstr = nonptr_to_ptr_assign.substitute(left=rename2, right=bname + "2")
                        start_assign_sta.append(tempstr)
                        if mem.hasAttribute("ref"):
                            refname = mem.getAttribute("ref")
                            if refname in total_struct_size.keys():
                                total_struct_size[refname] = total_struct_size[refname] + 1
                            else:
                                total_struct_size[refname] = 0
                            recur_assign(bname + "1", bname + "2", True, refname)
                        else:
                            if mem.getAttribute("level") == "L":
                                # tempstr = basic_assign.substitute(left=bname + "store2", right=bname + "store1")
                                tempstr = memcpy_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                                                num=defalut_char_byte)
                                start_assign_sta.append(tempstr)
                                # for elenum in range(0,16):
                                #     tempstr = forloop_every_assigh.substitute(
                                #         dest=bname + "store2", src = bname + "store1", num = elenum)
                                #     start_assign_sta.append(tempstr)
                                # tempstr = forloop_sta.substitute(dest=bname + "store2", src=bname + "store1",
                                #                                  num=defalut_char_byte)
                                # start_assign_sta.append(tempstr)
                else:
                    if mem.hasAttribute("ref"):
                        refname=mem.getAttribute("ref")
                        if refname in total_struct_size.keys():
                            total_struct_size[refname] = total_struct_size[refname] + 1
                        else:
                            total_struct_size[refname] = 0
                        if mem.hasAttribute("arr"):
                            arr=mem.getAttribute("arr")
                            for i in range(0,arr):
                                rename1=rename1+"["+i+"]"
                                rename2 = rename2 + "[" + i + "]"
                                recur_assign(rename1,rename2,False,refname)
                        else:
                            recur_assign(rename1,rename2,False,refname)
                    else:
                        if mem.getAttribute("level")=="L":
                            """without set the leve of array"""
                            if mem.hasAttribute("arr"):
                                arr=mem.getAttribute("arr")
                                tempstr=memcpy_sta.substitute(dest=rename2,src=rename1,num=arr)
                                # tempstr=for_assign_sta.substitute(num=arr,left=rename2,right=rename1)
                                start_assign_sta.append(tempstr)
                            else:
                                tempstr=basic_assign.substitute(left=rename2,right=rename1)
                                start_assign_sta.append(tempstr)
            break

def judge_struct_size_iszero(refname):
    for tdecl in typedecl:
        typename = tdecl.getAttribute("name")
        if typename == refname:
            size=tdecl.getAttribute("size")
            if size=="0":
                return True
            break
    return False

def gen_call_fun_arg():
    """
    构造对自合成函数的两次调用语句
    具体是要设置好每一个调用的实参变量名
    :return:
    """
    funcall=Template('${fun}(${args});\n')
    args1=""
    args2=""
    for arg in fun_args1:
        if arg==fun_args1[0]:
            args1=args1+arg
        else:
            args1=args1+","+arg

    for arg in fun_args2:
        if arg==fun_args2[0]:
            args2=args2+arg
        else:
            args2=args2+","+arg
    args1=args1+",opsink1"
    args2=args2+",opsink2"
    tempstr=funcall.substitute(fun=funname,args=args1)
    function_call_sta.append(tempstr)
    tempstr=funcall.substitute(fun=funname,args=args2)
    function_call_sta.append(tempstr)


def gen_global_assign_sta():
    for ele in globalarlist:
        global process_type
        process_type.clear()
        name=ele.getAttribute("name")

        for gdecl in globals:
            gname=gdecl.getAttribute("name")
            if gname == name:
                newarg=gdecl
                break
        print(name)
        type=newarg.getAttribute("type")
        ptr=newarg.getAttribute("ptr")
        size=newarg.getAttribute("size")
        print(name)
        print(ptr)
        print(size)
        arg=newarg

        if ptr=="*":
            if arg.hasAttribute("ref"):
                iszerosize=judge_struct_size_iszero(arg.getAttribute("ref"))
                if iszerosize:
                    continue
            if type=="void" or "char" in type or "__uint8_t"==type:
                if type=="void":
                    type="char"
                # tempstr = create_ptr_var.substitute(type=type, var=name + "1")
                # start_assign_sta.append(tempstr)
                #创建指针变量所指向的内存
                tempstr = create_arr_var.substitute(type=type, var=name + "arr1",num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name, right=name + "arr1")
                firstcall_globalsta.append(tempstr) #存储在global第一次call的列表中
                # tempstr = create_ptr_var.substitute(type=type, var=name + "2")
                # start_assign_sta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr2", num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name, right=name + "arr2")
                second_globalsta.append(tempstr)
                if arg.hasAttribute("level") and arg.getAttribute("level")=="L":
                    # tempstr=memcpy_sta.substitute(dest=name+"arr2",src=name+"arr1",num=defalut_char_byte)
                    # for elenum in range(0, 16):
                    #     tempstr = forloop_every_assigh.substitute(
                    #         dest=name + "arr2", src=name + "arr1", num=elenum)
                    #     start_assign_sta.append(tempstr)
                    tempstr = memcpy_sta.substitute(dest=name+"arr2", src=name + "arr1", num=defalut_char_byte)
                    start_assign_sta.append(tempstr)
                    # tempstr = forloop_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    # # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=name+'arr2',right=name+'arr1')

                continue
            # tempstr=create_ptr_var.substitute(type=type,var=name+"1")
            # name1=name+"1"
            # start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type,var=name+"store1")
            start_assign_sta.append(tempstr)
            name1=name+"store1"
            tempstr=nonptr_to_ptr_assign.substitute(left=name,right=name+"store1")
            firstcall_globalsta.append(tempstr)
            # tempstr=create_ptr_var.substitute(type=type, var=name + "2")
            name2=name+"store2"
            # start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "store2")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name , right=name + "store2")
            second_globalsta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname]=total_struct_size[refname]+1
                else:
                    total_struct_size[refname]=0
                recur_assign_global(name1,name2,False,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"store2",right=name+"store1")
                    start_assign_sta.append(tempstr)

        elif ptr=='**':
            if arg.hasAttribute("ref"):
                iszerosize=judge_struct_size_iszero(arg.getAttribute("ref"))
                if iszerosize:
                    continue
            if type=="void" or "char" in type or type=="__uint8_t":
                if type=="void":
                    type="char"
                # tempstr = create_twoptr_var.substitute(type=type, var=name + "1")
                # start_assign_sta.append(tempstr)
                tempstr = create_ptr_var.substitute(type=type, var=name + "ptr1")
                start_assign_sta.append(tempstr)
                tempstr = nonptr_to_ptr_assign.substitute(left=name , right=name + "ptr1")
                firstcall_globalsta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr1",num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "ptr1", right=name + "arr1")
                start_assign_sta.append(tempstr)
                # tempstr = create_twoptr_var.substitute(type=type, var=name + "2")
                # start_assign_sta.append(tempstr)
                tempstr = create_ptr_var.substitute(type=type, var=name + "ptr2")
                start_assign_sta.append(tempstr)
                tempstr = nonptr_to_ptr_assign.substitute(left=name , right=name + "ptr2")
                second_globalsta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr2", num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "ptr2", right=name + "arr2")
                start_assign_sta.append(tempstr)
                if arg.hasAttribute("level") and arg.getAttribute("level")=="L":
                    # tempstr=memcpy_sta.substitute(dest=name+"arr2",src=name+"arr1",num=defalut_char_byte)
                    # for elenum in range(0, 16):
                    #     tempstr = forloop_every_assigh.substitute(
                    #         dest=name + "arr2", src=name + "arr1", num=elenum)
                    #     start_assign_sta.append(tempstr)
                    tempstr = memcpy_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    start_assign_sta.append(tempstr)
                    # tempstr = forloop_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    # # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=name+'arr2',right=name+'arr1')
                    # start_assign_sta.append(tempstr)
                continue
            # tempstr = create_ptr_var.substitute(type=type, var=name + "1")
            # start_assign_sta.append(tempstr)
            tempstr=create_ptr_var.substitute(type=type,var=name+"ptr1")
            start_assign_sta.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=name , right=name + "ptr1")

            name1=name+"ptr1"
            firstcall_globalsta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type,var=name+"store1")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name+"ptr1",right=name+"store1")
            start_assign_sta.append(tempstr)
            # tempstr = create_ptr_var.substitute(type=type, var=name + "2")
            # start_assign_sta.append(tempstr)
            tempstr=create_ptr_var.substitute(type=type, var=name + "ptr2")
            name2=name+"ptr2"
            start_assign_sta.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=name, right=name + "ptr2")
            second_globalsta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "store2")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name + "ptr2", right=name + "store2")
            start_assign_sta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname]=total_struct_size[refname]+1
                else:
                    total_struct_size[refname]=0
                recur_assign_global(name1,name2,True,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"store2",right=name+"store1")
                    start_assign_sta.append(tempstr)

        elif arg.hasAttribute("arr"):
            num=arg.getAttribute("arr")

            tempstr = create_arr_var.substitute(type=type, var=name + "arr1", num=num)
            # name1 = name + "1"
            start_assign_sta.append(tempstr)
            # tempstr = basic_assign.substitute(left=name, right=name + "1")
            tempstr = memcpy_sta.substitute(dest=name, src=name+"arr1", num=num)
            firstcall_globalsta.append(tempstr)
            tempstr = create_arr_var.substitute(type=type, var=name + "arr2", num=num)
            name2 = name + "2"
            start_assign_sta.append(tempstr)
            tempstr = memcpy_sta.substitute(dest=name, src=name + "arr2", num=num)
            second_globalsta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname = arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname] = total_struct_size[refname] + 1
                else:
                    total_struct_size[refname] = 0
                recur_assign_global(name1, name2, False, refname)
            else:
                if arg.getAttribute("level") == "L":
                    tempstr = memcpy_sta.substitute(dest=name+"arr2", src=name + "arr1", num=num)
                    start_assign_sta.append(tempstr)
        else:
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "1")
            name1=name+"1"
            start_assign_sta.append(tempstr)
            tempstr = basic_assign.substitute(left=name , right=name + "1")
            firstcall_globalsta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "2")
            name2=name+"2"
            start_assign_sta.append(tempstr)
            tempstr = basic_assign.substitute(left=name, right=name + "2")
            second_globalsta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname] = total_struct_size[refname] + 1
                else:
                    total_struct_size[refname] = 0
                recur_assign_global(name1,name2,False,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"2",right=name+"1")
                    start_assign_sta.append(tempstr)




def gen_start_assign_sta(args):
    """
    withont consider array,function pointer
    void type defalut assigh 16 byte char type's element
    char type's pointer defalut assigh 16 bype char type's element
    自合成的初始化赋值步骤，对于不同的变量类型需要不同的赋值方式，递归分配内存并自合成
    :param args:xml中姐姐的arg节点
    :return:
    """

    for arg in args:
        global process_type
        process_type.clear()
        print(arg)

        name=arg.getAttribute("name")
        type=arg.getAttribute("type")
        ptr=arg.getAttribute("ptr")
        fun_args1.append(name+"1")
        fun_args2.append(name+"2")

        if ptr=="*":
            if arg.hasAttribute("ref"):
                iszerosize=judge_struct_size_iszero(arg.getAttribute("ref"))
                if iszerosize:
                    continue
            if type=="void" or "char" in type or "__uint8_t"==type:
                if type=="void":
                    type="char"
                tempstr = create_ptr_var.substitute(type=type, var=name + "1")
                start_assign_sta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr1",num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "1", right=name + "arr1")
                start_assign_sta.append(tempstr)
                tempstr = create_ptr_var.substitute(type=type, var=name + "2")
                start_assign_sta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr2", num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "2", right=name + "arr2")
                start_assign_sta.append(tempstr)
                if arg.hasAttribute("level") and arg.getAttribute("level")=="L":
                    # tempstr=memcpy_sta.substitute(dest=name+"arr2",src=name+"arr1",num=defalut_char_byte)
                    tempstr = memcpy_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    start_assign_sta.append(tempstr)
                    # for elenum in range(0, 16):
                    #     tempstr = forloop_every_assigh.substitute(
                    #         dest=name + "arr2", src=name + "arr1", num=elenum)
                    #     start_assign_sta.append(tempstr)
                    # tempstr = forloop_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    # # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=name+'arr2',right=name+'arr1')
                    # start_assign_sta.append(tempstr)
                continue
            tempstr=create_ptr_var.substitute(type=type,var=name+"1")
            name1=name+"1"
            start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type,var=name+"store1")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name+"1",right=name+"store1")
            start_assign_sta.append(tempstr)
            tempstr=create_ptr_var.substitute(type=type, var=name + "2")
            name2=name+"2"
            start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "store2")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name + "1", right=name + "store2")
            start_assign_sta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname]=total_struct_size[refname]+1
                else:
                    total_struct_size[refname]=0
                recur_assign(name1,name2,True,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"store2",right=name+"store1")
                    start_assign_sta.append(tempstr)

        elif ptr=='**':
            if arg.hasAttribute("ref"):
                iszerosize=judge_struct_size_iszero(arg.getAttribute("ref"))
                if iszerosize:
                    continue
            if type=="void" or "char" in type or type=="__uint8_t":
                if type=="void":
                    type="char"
                tempstr = create_twoptr_var.substitute(type=type, var=name + "1")
                start_assign_sta.append(tempstr)
                tempstr = create_ptr_var.substitute(type=type, var=name + "ptr1")
                start_assign_sta.append(tempstr)
                tempstr = nonptr_to_ptr_assign.substitute(left=name + "1", right=name + "ptr1")
                start_assign_sta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr1",num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "ptr1", right=name + "arr1")
                start_assign_sta.append(tempstr)
                tempstr = create_twoptr_var.substitute(type=type, var=name + "2")
                start_assign_sta.append(tempstr)
                tempstr = create_ptr_var.substitute(type=type, var=name + "ptr2")
                start_assign_sta.append(tempstr)
                tempstr = nonptr_to_ptr_assign.substitute(left=name + "2", right=name + "ptr2")
                start_assign_sta.append(tempstr)
                tempstr = create_arr_var.substitute(type=type, var=name + "arr2", num=defalut_char_byte)
                start_assign_sta.append(tempstr)
                tempstr = arr_to_ptr_assign.substitute(left=name + "ptr2", right=name + "arr2")
                start_assign_sta.append(tempstr)
                if arg.hasAttribute("level") and arg.getAttribute("level")=="L":
                    # tempstr=memcpy_sta.substitute(dest=name+"arr2",src=name+"arr1",num=defalut_char_byte)
                    tempstr = memcpy_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    start_assign_sta.append(tempstr)
                    # for elenum in range(0, 16):
                    #     tempstr = forloop_every_assigh.substitute(
                    #         dest=name + "arr2", src=name + "arr1", num=elenum)
                    #     start_assign_sta.append(tempstr)
                    # tempstr = forloop_sta.substitute(dest=name + "arr2", src=name + "arr1", num=defalut_char_byte)
                    # # tempstr=for_assign_sta.substitute(num=defalut_char_byte,left=name+'arr2',right=name+'arr1')
                    # start_assign_sta.append(tempstr)
                continue
            tempstr = create_ptr_var.substitute(type=type, var=name + "1")
            start_assign_sta.append(tempstr)
            tempstr=create_ptr_var.substitute(type=type,var=name+"ptr1")
            start_assign_sta.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=name + "1", right=name + "ptr1")

            name1=name+"ptr1"
            start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type,var=name+"store1")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name+"ptr1",right=name+"store1")
            start_assign_sta.append(tempstr)
            tempstr = create_ptr_var.substitute(type=type, var=name + "2")
            start_assign_sta.append(tempstr)
            tempstr=create_ptr_var.substitute(type=type, var=name + "ptr2")
            name2=name+"ptr2"
            start_assign_sta.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=name + "2", right=name + "ptr2")
            start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "store2")
            start_assign_sta.append(tempstr)
            tempstr=nonptr_to_ptr_assign.substitute(left=name + "ptr2", right=name + "store2")
            start_assign_sta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname]=total_struct_size[refname]+1
                else:
                    total_struct_size[refname]=0
                recur_assign(name1,name2,True,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"store2",right=name+"store1")
                    start_assign_sta.append(tempstr)
        else:
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "1")
            name1=name+"1"
            start_assign_sta.append(tempstr)
            tempstr=create_non_ptr_var.substitute(type=type, var=name + "2")
            name2=name+"2"
            start_assign_sta.append(tempstr)
            if arg.hasAttribute("ref"):
                refname=arg.getAttribute("ref")
                if refname in total_struct_size.keys():
                    total_struct_size[refname] = total_struct_size[refname] + 1
                else:
                    total_struct_size[refname] = 0
                recur_assign(name1,name2,False,refname)
            else:
                if arg.getAttribute("level")=="L":
                    tempstr=basic_assign.substitute(left=name+"2",right=name+"1")
                    start_assign_sta.append(tempstr)

def find_ID(st, r_pa, n_pa):
    for i in st:
        if (i == None):
            break
        elif type(i) == c_ast.ID:
            if i.name in r_pa:
                index = r_pa.index(i.name)
                newname = n_pa[index]
                i.name = newname

            find_ID(i, r_pa, n_pa)
        else:
            find_ID(i, r_pa, n_pa)

def modify_local_variable(rast, mast):
    l = []
    l1 = []
    for i in rast.body.block_items:
        if type(i)==c_ast.Compound and len(rast.body.block_items)==1:
            for ii in i.block_items:
                if type(ii) == c_ast.Decl or type(i) == c_ast.Label:
                    name = ii.name
                    name1 = name + "1"
                    l.append(ii.name)
                    l1.append(name1)
        if type(i) == c_ast.Decl or type(i) == c_ast.Label:
            name = i.name
            name1 = name + "1"
            l.append(i.name)
            l1.append(name1)
    for ii in mast.body.block_items:
        if type(i)==c_ast.Compound and len(rast.body.block_items)==1:
            for iii in i.block_items:
                if type(iii) == c_ast.Decl:
                    index = l.index(iii.name)
                    name = l1[index]
                    if type(iii.type) == c_ast.PtrDecl or type(iii.type) == c_ast.ArrayDecl:
                        iii.type.type.declname = name
                    else:
                        iii.type.declname = name
                    iii.name = name
        if type(ii) == c_ast.Decl:
            index = l.index(ii.name)
            name = l1[index]
            if type(ii.type) == c_ast.PtrDecl or type(ii.type) == c_ast.ArrayDecl:
                if type(ii.type.type)==c_ast.PtrDecl or type(ii.type.type)==c_ast.FuncDecl:
                    ii.type.type.type.declname=name

                else:
                    print(ii)
                    ii.type.type.declname = name
            else:
                ii.type.declname = name
            ii.name = name

    st = mast.body.block_items
    find_ID(st, l, l1)

"""ast.body"""
def modify_opsink(ast, calledfunname):
    if type(ast)==c_ast.Case or type(ast)==c_ast.Default:
        blockstmts=ast.stmts
    else:
        blockstmts=ast.block_items
    for i in blockstmts:
        if type(i)==c_ast.FuncCall and i.name.name=="opsink":
            print("fsalfjlafjl")
            i.name.name=calledfunname
            break
        if type(i)==c_ast.If:
            # print(i)
            if i.iftrue is not None and i.iftrue.block_items is not None:
                modify_opsink(i.iftrue,calledfunname)
                # for ele in i.iftrue.block_items:
                #     if type(ele) == c_ast.FuncCall and ele.name.name == "opsink":
                #         ele.name.name = calledfunname
            if i.iffalse is not None and i.iffalse.block_items is not None:
                modify_opsink(i.iffalse,calledfunname)
                # for ele in i.iffalse.block_items:
                #     if type(ele) == c_ast.FuncCall and ele.name.name == "opsink":
                #         ele.name.name = calledfunname
        elif type(i)==c_ast.Switch:
            for caseele in i.stmt.block_items:
                if type(caseele) == c_ast.Case or type(caseele) == c_ast.Default:
                    modify_opsink(caseele,calledfunname)
                    # for ele in caseele.stmts:
                    #     if type(ele) == c_ast.FuncCall and ele.name.name == "opsink":
                    #         ele.name.name = calledfunname
        elif type(i)==c_ast.While or type(i)==c_ast.For or type(i)==c_ast.Label:
            # print(i)
            if type(i.stmt)==c_ast.EmptyStatement:
                pass
            elif i.stmt.block_items is not None:
                modify_opsink(i.stmt,calledfunname)
                # for ele in i.stmt.block_items:
                #     if type(ele) == c_ast.FuncCall and ele.name.name == "opsink":
                #         ele.name.name = calledfunname
        elif type(i)==c_ast.Compound:
            modify_opsink(i,calledfunname)
            # for ele in i.block_items:
            #     if type(ele) == c_ast.FuncCall and ele.name.name == "opsink":
            #         ele.name.name = calledfunname


def modify_label(ast):
    for i in ast.body.block_items:
        if type(i)==c_ast.Label or type(i)==c_ast.Goto:
            oldname=i.name
            newname=oldname+"1"
            i.name=newname
        

def fun_unfold_self_com():
    """
    函数的一种自合成方式，将待合成的函数展开到self_com函数中
    主要思路是使用pycparser解析要自合成的函数，然后对two copy中的变量和label（全局变量不进行重命名，
    但是也要设置全局变量的值两次执行的初始是相等的）进行重命名
    :return:
    """
    #文件名
    filepath = projectdir + "/code_gened/"
    fake_include = "utils/fake_libc_include"
    abs_fake_include = os.path.abspath(fake_include)
    print(abs_fake_include)
    if "axtls-code" in filepath:
        command1 = "cd " + filepath + ";gcc -E " + funname+".c" + " -I../../include -I" + abs_fake_include + " >fun1"
    else:
        command1 = "cd " + filepath + ";gcc -E " + funname + ".c" + " -I../source_code -I" + abs_fake_include + " >fun1"
    (status, output) = subprocess.getstatusoutput(command1)
    if status:
        print(command1)
        print(output)
        print("can't generate AST\n")
        exit(1)
    ast = parse_file(filepath+"fun1",use_cpp=True)
    ast1 = parse_file(filepath+"fun1",use_cpp=True)
    raw_params = []  # parameter and global variable
    new_params1 = []
    new_params2 = []
    for arg in args:
        name=arg.getAttribute("name")
        raw_params.append(name)
        new_params1.append(name+"1")
        new_params2.append(name+"2")
    generator = c_generator.CGenerator()
    i=0
    print(funname)
    for fun in ast.ext:
        if type(fun)==c_ast.Decl:
            if type(fun.type)==c_ast.ArrayDecl:
                tempast=copy.deepcopy(fun)
                tempast.storage=[]
                tempast.name='temp_'+fun.name
                mod_source_source_srcname(tempast,fun.name,'temp_'+fun.name)
                tempstr=strcpy_assigh.substitute(dest='temp_'+fun.name,src=fun.name)
                firstglobal.append(c_generator.CGenerator().visit(tempast)+';\n')
                firstglobal.append(tempstr)
                tempstr=strcpy_assigh.substitute(src='temp_'+fun.name,dest=fun.name)
                secondglobal.append(tempstr)
        if type(fun) == c_ast.FuncDef and fun.decl.name== funname:
            r_ast = fun
            m_ast = ast1.ext[i]
            r_ast_list=[]
            m_ast_list=[]
            for arg in r_ast.decl.type.args:
                print(arg)
                if type(arg.type)==c_ast.PtrDecl and type(arg.type.type)==c_ast.FuncDecl:
                    continue
                arg1=copy.deepcopy(arg)
                arg2=copy.deepcopy(arg)
                arg1.name=arg.name+"1"
                arg2.name = arg.name + "2"
                mod_source_source_srcname(arg1,arg.name,arg.name+"1")
                mod_source_source_srcname(arg2, arg.name, arg.name + "2")
                self_parmlist.append(arg1)
                self_parmlist.append(arg2)
            for i in r_ast.body.block_items:
                if type(i)==c_ast.Compound:
                    for ele in i.block_items:
                        r_ast_list.append(ele)
                else:
                    r_ast_list.append(i)
            for i in m_ast.body.block_items:
                if type(i)==c_ast.Compound:
                    for ele in i.block_items:
                        m_ast_list.append(ele)
                else:
                    m_ast_list.append(i)
            r_ast.body.block_items=r_ast_list
            m_ast.body.block_items=m_ast_list

            st = m_ast.body.block_items
            st1 = r_ast.body.block_items
            if st is None:
                break
            modify_opsink(r_ast.body,"opsink1")
            modify_opsink(m_ast.body,"opsink2")
            modify_label(m_ast)
            modify_local_variable(r_ast, m_ast)

            find_ID(st1, raw_params, new_params1)
            find_ID(st, raw_params, new_params2)
            for i in r_ast.body.block_items:
                if "{" in generator.visit(i):
                    r_ast_sta_list.append(generator.visit(i))
                else:
                    r_ast_sta_list.append(generator.visit(i)+";\n")
            for i in m_ast.body.block_items:
                if "{" in generator.visit(i):
                    m_ast_sta_list.append(generator.visit(i))
                else:
                    m_ast_sta_list.append(generator.visit(i) + ";\n")

            print(generator.visit(r_ast))
            print(generator.visit(m_ast))

            break
        i=i+1


def parse_ind_xml_define_funptr_arr(m):
    docm = parse(m)
    rootm = docm.documentElement
    stru_mem_info = rootm.getElementsByTagName('stru_mem')

    for sminfo in stru_mem_info:
        smname=sminfo.getAttribute("info")
        cand_funset = sminfo.getElementsByTagName('ind_callee')
        candifuns=''
        i=0
        for candfun in cand_funset:
            funname=candfun.getAttribute("funname")
            if i==0:
                candifuns=candifuns+funname
                funsig=candfun.getAttribute("funsig")
            else:
                candifuns=candifuns+","+funname
            i=i+1
        if i==0:
            continue
        funptrname="(*"+smname+"["+str(i)+'])'
        funsig=funsig.replace("(*)",funptrname)
        arraydef=funptr_array.substitute(type=funsig, candifuns=candifuns)
        funptr_array_size[smname]=i
        funptr_array_csta.append(arraydef)

def mod_source_source_srcname(srcast,oldname,newname):
    if type(srcast)==c_ast.TypeDecl and srcast.declname==oldname:
        srcast.declname=newname
    else:
        for s in srcast:
            mod_source_source_srcname(s,oldname,newname)

def getfundef():
    s = r'''
    void f(int a){

    }
    '''
    ss=r'''
    char * f(int a){}
    '''
    parser = c_parser.CParser()
    s_ast = parser.parse(s)
    return s_ast


def print_to_file_new_non_unfold():
    onetab = "\t"
    file.write("#include<stdio.h>\n")
    file.write("#include<stdlib.h>\n")
    file.write("#include<time.h>\n")
    file.write('#include "_slice_header_.h"\n')
    file.write('#include<assert.h>\n')
    # file.write("int rand_i;\n")

    # 接收sink值的全局变量
    for s in sink_output:
        file.write(s)
    for s in sink_output_copy:
        file.write(s)
    file.write("\n")
    # for f in funptr_array_csta:
    #     file.write(f)
    # file.write("\n")
    # opsink1函数和opsink2函数
    for f in op_sink1_function:
        file.write(f)
    file.write("\n")
    for f in op_sink2_function:
        file.write(f)
    file.write("\n")

    # file.write("void " + funname + "_self_com()\n")
    # file.write("{\n")
    # 自合成函数的声明
    fundeclast = c_ast.Decl(name=funname + "_self_com",
                            quals=[],
                            storage=[],
                            funcspec=[],
                            type=c_ast.FuncDecl(args=None,
                                                type=c_ast.TypeDecl(declname=funname + "_self_com",
                                                                    quals=[],
                                                                    type=c_ast.IdentifierType(names=['void']))),
                            init=None,
                            bitsize=None)
    fundeclast.type.args = c_ast.ParamList(params=[])

    # 如果自合成方式为展开slice，则对自合成函数添加形参
    file.write(c_generator.CGenerator().visit(fundeclast))
    file.write("{\n")
    # 初始化交叉赋值

    # 对两份sink全局变量进行交叉赋值
    for s in sinkvar_assign:
        print('fff')
        print(s)
        file.write(onetab + s)
    # slice的形参进行交叉赋值
    for s in start_assign_sta:
        file.write(onetab + s)
    for s in firstcall_globalsta:
        file.write(onetab + s)


    #对slice的两次调用
    file.write(onetab + function_call_sta[0])

    for s in second_globalsta:
        file.write(onetab + s)

    file.write(onetab + function_call_sta[1])
    # for fc in function_call_sta:


    # 断言语句
    for ass in assert_output_sta:
        file.write(onetab + ass)
    file.write("}\n")

def print_to_file_new():
    onetab = "\t"
    file.write("#include<stdio.h>\n")
    file.write("#include<stdlib.h>\n")
    file.write("#include<time.h>\n")
    file.write('#include "_slice_header_.h"\n')
    file.write('#include<assert.h>\n')
    # file.write("int rand_i;\n")

    #接收sink值的全局变量
    for s in sink_output:
        file.write(s)
    for s in sink_output_copy:
        file.write(s)
    file.write("\n")
    # for f in funptr_array_csta:
    #     file.write(f)
    # file.write("\n")
    #opsink1函数和opsink2函数
    for f in op_sink1_function:
        file.write(f)
    file.write("\n")
    for f in op_sink2_function:
        file.write(f)
    file.write("\n")

    # file.write("void " + funname + "_self_com()\n")
    # file.write("{\n")
    #自合成函数的声明
    fundeclast=c_ast.Decl(name=funname+"_self_com",
                          quals=[],
                          storage=[],
                          funcspec=[],
                          type=c_ast.FuncDecl(args=None,
                                              type=c_ast.TypeDecl(declname=funname+"_self_com",
                                                                  quals=[],
                                                                  type=c_ast.IdentifierType(names=['void']))),
                          init=None,
                          bitsize=None)
    fundeclast.type.args=c_ast.ParamList(params=[])

    #如果自合成方式为展开slice，则对自合成函数添加形参
    for arg in self_parmlist:
        fundeclast.type.args.params.append(arg)
    file.write(c_generator.CGenerator().visit(fundeclast))
    file.write("{\n")
    #初始化交叉赋值

    #对两份sink全局变量进行交叉赋值
    for s in sinkvar_assign:
        print('fff')
        print(s)
        file.write(onetab + s)
    #slice的形参进行交叉赋值
    for s in start_assign_sta:
        file.write(onetab + s)
    for s in firstglobal:
        file.write(onetab + s)

    #slice的第一次展开
    for sta in r_ast_sta_list:
        file.write(onetab + sta)

    for s in secondglobal:
        file.write(onetab + s)
    #slice的第二次展开
    for sta in m_ast_sta_list:
        file.write(onetab + sta)
        print(sta)
    # if "_environment_" in funname:
    #     for sta in r_ast_sta_list:
    #         file.write(onetab + sta)
    #     for sta in m_ast_sta_list:
    #         file.write(onetab + sta)
    # else:
    #     for fc in function_call_sta:
    #         file.write(onetab + fc)
    #断言语句
    for ass in assert_output_sta:
        file.write(onetab + ass)
    file.write("}\n")

def print_to_file():
    onetab="\t"
    """
    #include<stdio.h>
    #include<stdlib.h>
    #include<time.h>
    #include<assert.h>
    #include "gen_slice_include.h"
    int rand_i;
    srand((unsigned)time(NULL));
    """
    file.write("#include<stdio.h>\n")
    file.write("#include<stdlib.h>\n")
    file.write("#include<time.h>\n")
    file.write('#include "_slice_header_.h"\n')
    file.write('#include<assert.h>\n')
    # file.write("int rand_i;\n")



    for s in sink_output:
        file.write(s)
    for s in sink_output_copy:
        file.write(s)
    file.write("\n")
    for f in funptr_array_csta:
        file.write(f)
    file.write("\n")
    for f in op_sink1_function:
        file.write(f)
    file.write("\n")
    for f in op_sink2_function:
        file.write(f)
    file.write("\n")

    file.write("void "+funname+"_self_com()\n")
    file.write("{\n")
    file.write(onetab+"srand((unsigned)time(NULL));\n")
    for s in sinkvar_assign:
        file.write(onetab+s)
    for s in start_assign_sta:
        file.write(onetab+s)
    # for sta in r_ast_sta_list:
    #     file.write(onetab + sta)
    # for sta in m_ast_sta_list:
    #     file.write(onetab + sta)
    if "_environment_" in funname:
        for sta in r_ast_sta_list:
            file.write(onetab+sta)
        for sta in m_ast_sta_list:
            file.write(onetab+sta)
    else:
        for fc in function_call_sta:
            file.write(onetab+fc)
    for ass in assert_output_sta:
        file.write(onetab+ass)
    file.write("}\n")

def gen_global_sink_output_var():
    """
    构造用于接收sink值的两份全局变量
    :return:
    """

    i=0
    print("cnashu")
    print(len(sinkarg))
    for arg in sinkarg:
        type = arg.getAttribute("type")
        kind= arg.getAttribute("kind")
        if kind=="one_ptr":
            type=type+"*"
        sink_arg_type.append(type)
        varname="sink_outputarg_"+str(i)
        varnamecopy="sink_outputarg_copy_"+str(i)
        if "[" in type:
            ind=type.index("[")
            varname = varname
            varnamecopy=varnamecopy
            type=type[:ind]
            tempstr = strcpy_assigh.substitute(dest=varnamecopy,src=varname)
            sinkvar_assign.append(tempstr)
        if "char*" in type:
            tempstr = create_arr_var.substitute(type="char", var= varname+ "arr1", num=defalut_char_byte)
            sinkvar_assign.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=varname, right=varname + "arr1")
            sinkvar_assign.append(tempstr)
            tempstr = create_arr_var.substitute(type="char", var=varnamecopy + "arr2", num=defalut_char_byte)
            sinkvar_assign.append(tempstr)
            tempstr = nonptr_to_ptr_assign.substitute(left=varnamecopy , right=varnamecopy + "arr2")
            sinkvar_assign.append(tempstr)
            tempstr = memcpy_sta.substitute(dest=varnamecopy + "arr2", src=varname + "arr1", num=defalut_char_byte)
            sinkvar_assign.append(tempstr)
        i=i+1
        tempstr=create_non_ptr_var.substitute(type=type,var=varname)
        sink_output.append(tempstr)
        tempstr=create_non_ptr_var.substitute(type=type,var=varnamecopy)
        sink_output_copy.append(tempstr)


def assert_opsink():
    i=0
    for arg in sink_output:
        var1name="sink_outputarg_"+str(i)
        var2name="sink_outputarg_copy_"+str(i)
        if 'char' in arg:
            tempstr= assert_char.substitute(var1=var1name,var2=var2name)
            assert_output_sta.append(tempstr)

        else:
            tempstr=assert_non_char.substitute(var1=var1name,var2=var2name)
            assert_output_sta.append(tempstr)
        i=i+1

def create_opsink1():
    func_decl=Template("void opsink1(${var})\n")
    tempstr=""
    i=0
    for t in sink_arg_type:
        print(t)
        if i==0:
            if "[" in t:
                ind=t.index("[")
                tempstr = tempstr + t[:ind] + " arg" + str(i)+t[ind:]
                print(tempstr)
            else:
                tempstr=tempstr+t+" arg"+str(i)
        else:
            if "[" in t:
                ind=t.index("[")
                tempstr = tempstr + t[:ind] + " arg" + str(i)+t[ind:]
            else:
                tempstr=tempstr+","+t+" arg"+str(i)
        i=i+1
    tempstr=func_decl.substitute(var=tempstr)
    op_sink1_function.append(tempstr)
    op_sink1_function.append("{\n")
    j=0
    for t in sink_arg_type:
        leftname="sink_outputarg_"+str(j)
        rightname="arg"+str(j)
        if "char" in t:
        # tempstr=strcpy_assigh.substitute(left=leftname,right=rightname)
            tempstr = strcpy_assigh.substitute(dest=leftname, src=rightname)
        elif "*" in t:
            tempstr=memcpy_sta.substitute(dest=leftname,src=rightname,num=defalut_char_byte)
        else:
            tempstr=basic_assign.substitute(left=leftname,right=rightname)
        op_sink1_function.append('\t'+tempstr)
        j=j+1
    op_sink1_function.append("}\n")

def create_opsink2():
    func_decl = Template("void opsink2(${var})\n")
    tempstr = ""
    i = 0
    for t in sink_arg_type:
        if i == 0:
            if "[" in t:
                ind=t.index("[")
                tempstr = tempstr + t[:ind] + " arg" + str(i)+t[ind:]
            else:
                tempstr = tempstr + t + " arg" + str(i)
        else:
            if "[" in t:
                ind=t.index("[")
                tempstr = tempstr + t[:ind] + " arg" + str(i)+t[ind:]
            else:
                tempstr = tempstr + "," + t + " arg" + str(i)
        i = i + 1
    tempstr = func_decl.substitute(var=tempstr)
    op_sink2_function.append(tempstr)
    op_sink2_function.append("{\n")
    j=0
    for t in sink_arg_type:
        leftname = "sink_outputarg_copy_" + str(j)
        rightname = "arg" + str(j)
        if "char" in t:
        # tempstr = strcpy_assigh.substitute(left=leftname, right=rightname)
            tempstr = strcpy_assigh.substitute(dest=leftname, src=rightname)
        elif "*" in t:
            tempstr = memcpy_sta.substitute(dest=leftname, src=rightname, num=defalut_char_byte)
        else:
            tempstr = basic_assign.substitute(left=leftname, right=rightname)
        op_sink2_function.append('\t' + tempstr)
        j=j+1
    op_sink2_function.append("}\n")

if __name__ == '__main__':

    choose_self_way="non-unfold" # unfold or non-unfold

    projectdir=sys.argv[1] #项目目录，比如/home/raoxue/Desktop/MemVerif/workspace/axtls-code
    funname = sys.argv[2]  # 函数名，要自合成的函数名
    secxmlfile = projectdir+"/sec_file/" +funname+"_level.xml" #安全级文件
    # secxmlfile="s23_pkt105s23_clnt621_1_level.xml"
    # stru_mem_xml = projectdir+ "/stru_mem_ind_call.xml" #function poiter's candicate funname
    # funname="s23_pkt105s23_clnt621_1"
    ind=funname.rindex(("_"))
    tempfunname=funname[:ind]
    print(tempfunname)
    count=0

    #判断source sink pair是否生成了多个slice，相应的修改函数名
    # code_gened_dir=projectdir+"/code_gened"
    # for root, dirs, files in os.walk(code_gened_dir):
    #     for file in files:
    #         if tempfunname in file:
    #             count=count+1
    # print(count)
    # if count>2:
    #     newfunname=tempfunname
    # else:
    #     newfunname=funname
    # print(newfunname)

    newfunname=funname
    """在groundtruth中处理globalreturntrueorfalse随机的情况"""
    sinkmod_xml=projectdir+ "/mod_sink/"+newfunname+"mod_sink.xml"
    # sinkmod_xml = projectdir + "/mod_sink/" + funname + "mod_sink.xml"
    gencode_output = funname+"_self_com.c"  # genarated filename
    if os.path.exists(gencode_output):
        os.remove(gencode_output)
    file = open(gencode_output, "a")

    global_xml=projectdir+ "/global_info.xml" #记录全局变量类型信息的xml文件
    print(global_xml)
    docg = parse(global_xml)
    rootg = docg.documentElement
    globals=rootg.getElementsByTagName("global")
    gtypedecl=rootg.getElementsByTagName("typedecl")


    #解析xml安全级文件获得参数和类型声明
    doc = parse(secxmlfile)
    root = doc.documentElement
    args = root.getElementsByTagName('arg')
    typedecl = root.getElementsByTagName('typedecl')

    docm = parse(sinkmod_xml)
    rootm = docm.documentElement
    sinkarg = rootm.getElementsByTagName('sinkarg')
    globalarlist=rootm.getElementsByTagName('global') #获得mod_sink.xml文件中的全局变量


    # parse_ind_xml_define_funptr_arr(stru_mem_xml)
    gen_global_assign_sta()
    gen_start_assign_sta(args) #自合成的时候对低安全级变量进行初始化交叉赋值，结果保存到列表中
    gen_call_fun_arg() #构造对slice函数的两次调用语句，保存到列表中
    gen_global_sink_output_var() #构造用于接收sink值的全局变量
    create_opsink1() #构造opsink1函数
    create_opsink2() #构造opsink2函数
    assert_opsink() #构造断言sink是否相等的语句

    if choose_self_way=="unfold":
        fun_unfold_self_com()  # 自合成的时候将合成的函数进行两次展开。展开的内容保存到数据结构中
        print_to_file_new() #按顺序组合以上内容输出到文件。
    else:
        print_to_file_new_non_unfold()


