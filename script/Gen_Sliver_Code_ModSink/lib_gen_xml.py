"""
在生成代码的过程中需要用到的函数
"""
import os
import subprocess
from xml.dom.minidom import Document, parse

from pycparser import c_ast


def deal_sub_ast(subast,dfa_srcline, memcpy_ast_list):
    """
    在复合语句中查找目标memcpy
    :param subast: ast,复合语句ast
    :param dfa_srcline: int，目标行号
    :param memcpy_ast_list: list(存放找到的目标memcpyast)
    :return:None
    """
    if type(subast)==c_ast.If:
        iftrure=subast.iftrue
        if iftrure is not None:
            if type(iftrure) == c_ast.Compound:
                deal_sub_ast(iftrure,dfa_srcline,memcpy_ast_list)
            else:
                templine=str(iftrure.coord)
                if str(dfa_srcline) in templine and type(iftrure) ==c_ast.FuncCall and iftrure.name.name=="memcpy":
                    memcpy_ast_list.append(iftrure)
                    return

        iffalse=subast.iffalse
        if iffalse is not None:
            if type(iffalse) == c_ast.Compound:
                deal_sub_ast(iffalse,dfa_srcline,memcpy_ast_list)
            else:
                templine=str(iffalse.coord)
                if str(dfa_srcline) in templine and type(iffalse) ==c_ast.FuncCall and iffalse.name.name=="memcpy":
                    memcpy_ast_list.append(iffalse)
                    return

    elif type(subast)==c_ast.For or type(subast) ==c_ast.While or type(subast) ==c_ast.DoWhile or \
            type(subast) == c_ast.Switch:
        loopstmt=subast.stmt
        if type(loopstmt) == c_ast.Compound:
            deal_sub_ast(loopstmt,dfa_srcline,memcpy_ast_list)
        elif loopstmt is not None:
            templine=str(loopstmt.coord)
            if str(dfa_srcline) in templine and type(loopstmt) ==c_ast.FuncCall and loopstmt.name.name=="memcpy":
                    memcpy_ast_list.append(loopstmt)
                    return

    elif type(subast) == c_ast.Compound:
        for subele in subast.block_items:
            eletype=type(subele)
            if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile \
                or eletype == c_ast.Switch or eletype == c_ast.Compound:
                deal_sub_ast(subele,dfa_srcline, memcpy_ast_list)
            else:
                curlinenum = str(subele.coord)
                #判断行号是否相等
                if str(dfa_srcline) in curlinenum and type(subele)==c_ast.FuncCall:
                    if subele.name.name=="memcpy":
                        memcpy_ast_list.append(subele)
                        return
    elif type(subast) == c_ast.Case or type(subast) == c_ast.Default:
        stmtsta=subast.stmts
        for subele in stmtsta:
            eletype=type(subele)
            if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile \
                or eletype == c_ast.Switch or eletype == c_ast.Compound:
                deal_sub_ast(subele,dfa_srcline, memcpy_ast_list)
            else:
                curlinenum = str(subele.coord)
                #判断行号是否相等
                if str(dfa_srcline) in curlinenum and type(subele)==c_ast.FuncCall:
                    if subele.name.name=="memcpy":
                        memcpy_ast_list.append(subele)
                        return

def get_src_ast(dfa_srcline, funast_body,memcpy_ast_list):
    """
    根据行号，在funast_body中找到memcpy所在ast
    :param dfa_srcline: int（src所在的行）
    :param funast_body: ast, 函数体部分的ast
    memcpy_ast_list:list(用于存放找到的memcpyast）
    :return: None
    """

    for ele in funast_body.block_items:
        eletype = type(ele)
        if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile \
                or eletype == c_ast.Switch or eletype == c_ast.Compound:
            deal_sub_ast(ele,dfa_srcline, memcpy_ast_list)
            pass
        else:
            curlinenum = str(ele.coord)
            #判断行号是否相等
            if str(dfa_srcline) in curlinenum and type(ele)==c_ast.FuncCall:
                if ele.name.name=="memcpy":
                    memcpy_ast_list.append(ele)
                    return


def get_srcvarname(memcpy_ast, dfa_srcvarname):
    """
    在memcpy_ast中获得memcpy的第三个变量名
    :param memcpy_ast:
    :param dfa_srcvarname: list（所得的变亮存放在此list中）
    :return:None
    """
    exprs=memcpy_ast.args.exprs #list

    len_three=exprs[2]
    print("memcpy third argment...")
    print(len_three)
    if type(len_three) == c_ast.Constant:
        print("const....")
        dfa_srcvarname.append("_const_")
    elif type(len_three) == c_ast.ID:
        print("ordinary srcname....")
        varname=len_three.name
        print(varname)
        dfa_srcvarname.append(varname)
    elif type(len_three) == c_ast.StructRef:
        print("strunt srcname....")
        mem_name=len_three.field.name
        dfa_srcvarname.append("struct")
        dfa_srcvarname.append(mem_name)
    elif type(len_three) == c_ast.ArrayRef:
        print("array srcname....")
        if type(len_three.name)==c_ast.ID:
            dfa_srcvarname.append(len_three.name)
        elif type(len_three.name) == c_ast.StructRef:
            dfa_srcvarname.append("struct")
            dfa_srcvarname.append(len_three.name.field.name)
        else:
            print("get_srcvarname continue.....1")
    else:
        print("get_srcvarname continue....2")

def saveinfo_input_xml(dfa_functionlist, dfa_srcfunname,dfa_srcline,dfa_srcvarname):
    """
    将srcinfo保存到dfa_input.xml文件中
    :param dfa_functionlist:loop entry到src的函数列表
    :param dfa_srcfunname:src的函数名
    :param dfa_srcline:src行号
    :param dfa_srcvarname: src的变量名
    :return:
    """

    if dfa_srcvarname[0]=="_const_":
        pass
    else:
        if len(dfa_srcvarname)>1:
            varname=dfa_srcvarname[1]
        else:
            rawvarname=dfa_srcvarname[0]
            rawvarname1=rawvarname[:-1]
            raw_index=rawvarname1.rindex("_")
            varname=rawvarname1[raw_index+1:]
            print("dfa_srcname.....")
            print(varname)
        dfa_xml = './' + "dfa_input.xml"  # 生成的xml存放的临时文件
        dfa_xml_abs = os.path.abspath(dfa_xml)
        # print(str(os.path.getsize(dfa_xml_abs)) + "ffffffff")
        if os.path.exists(dfa_xml_abs):
            os.remove(dfa_xml_abs)


        # temp_xml为空，第一次解析ast
        curflag = "one"
        curdoc = Document()
        curroot = curdoc.createElement("root")
        curdoc.appendChild(curroot)

        srcnode = curdoc.createElement("srcinfo")
        srcnode.setAttribute("funname",dfa_srcfunname)
        srcnode.setAttribute("linenum",dfa_srcline)
        srcnode.setAttribute("varname",varname)
        curroot.appendChild(srcnode)

        funnode= curdoc.createElement("function")
        for ele in dfa_functionlist:
            funele=curdoc.createElement("fun")
            funele.setAttribute("funname",ele)
            funnode.appendChild(funele)
        curroot.appendChild(funnode)

        with open(dfa_xml_abs, 'w') as f:
            f.write(curdoc.toprettyxml(indent=' '))
            f.close()

def parse_c_to_ll(pro_path,dfa_filelist_c,dfa_filelist_ll):
    for cfile in dfa_filelist_c:
        llfile = pro_path+"/"+ cfile[:-1] + "ll"
        # command = "cd " + pro_path + ";clang -S -c -g -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm " + cfile + " -I../crypto -I.. -I../include" + " " \
        #                                                                                                                                                              "-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN " \
        #                                                                                                                                                              "-DTERMIO -DOPENSSL_IA32_SSE2 -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5 -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM" \
        #                                                                                                                                                              "-DSHA256_ASM -DSHA512_ASM -DMD5_ASM -DAES_ASM -DVPAES_ASM -DBSAES_ASM -DWHIRLPOOL_ASM -DGHASH_ASM -o " + llfile
        # (status, output) = subprocess.getstatusoutput(command)
        # if status == 0:
        #     dfa_filelist_ll.append(llfile)
        dfa_filelist_ll.append(llfile)



def create_xml_function(doc,sec_root,param_list,funname,localnamelist):
    Type_List = ['size_t', '__int8_t', "unsigned', 'int" ,"unsigned', 'char",'__uint8_t', '__int16_t', '__uint16_t', '__int32_t', '__uint32_t',
             '__int64_t', '__uint64_t', 'int', 'float', 'double', 'bool', 'int16_t', 'uint16_t', 'uint32_t',
             'uint8_t', 'int8_t', 'Enum', 'uint64_t', 'char', 'int64_t', 'int32_t']
    node = doc.createElement("function")
    node.setAttribute("name", funname)
    node.setAttribute("Returntype", "void")

    """define function's global variable"""

    temp_param = []
    temp_name = []
    for p in param_list:
        if p.name in temp_name:
            continue
        else:
            temp_param.append(p)
            temp_name.append(p.name)
    for j in temp_param:
        node1 = doc.createElement("params")
        node1.setAttribute("name", j.name)
        if j.quals == ['const']:
            node1.setAttribute("quals", "const")
        if type(j.type) == c_ast.TypeDecl:
            if type(j.type.type) == c_ast.Struct or type(j.type.type) == c_ast.Enum:
                # node1.setAttribute("quals",j.type.quals)
                node1.setAttribute("type", str(j.type.type.name))
                if type(j.type.type) == c_ast.Enum:
                    node1.setAttribute("Enum", "y")
                    node1.setAttribute("level", "L")
                    node.appendChild(node1)
                    continue
            else:
                node1.setAttribute("type", str(j.type.type.names)[2:-2])
        elif type(j.type) == c_ast.PtrDecl:
            node1.setAttribute("ptr", "*")
            if type(j.type.type.type) == c_ast.Struct:
                node1.setAttribute("type", str(j.type.type.type.name))
            else:
                if type(j.type.type) == c_ast.PtrDecl:
                    print("two level poiter+=========")
                    continue
                node1.setAttribute("type", str(j.type.type.type.names)[2:-2])
        else:
            print("continue+9999999999")

        temp = node1.getAttribute("type")
        tempname =  node1.getAttribute("name")
        if temp in Type_List and tempname in localnamelist:
            node1.setAttribute("level", "H")
        elif temp in Type_List and tempname not in localnamelist:
            node1.setAttribute("level", "L")
        else:
            node1.setAttribute("ref", temp)
        node.appendChild(node1)

    sec_root.appendChild(node)


