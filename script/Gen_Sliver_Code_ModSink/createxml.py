from __future__ import print_function

import os
import subprocess
import sys

# project = "pycparser"
# sys.path.append(os.getcwd().split(project)[0] + project)
sys.path.extend(['.', '..'])
from pycparser import parse_file, c_generator, c_ast
from xml.dom.minidom import Document
from xml.dom.minidom import parse

global_decl = []  # avoid avariable rename
globalv_list = []  # list of global avariable
global_dic = {}  # function and global avariable mapping

# each varible have be processed, incleding typedef,decl and function name

"""Add all global variable in global"""


def find_ID(st, l):
    """
    st:
    l:
    """
    for i in st:
        if (i == None):
            break
        elif type(i) == c_ast.ID:
            idname = i.name
            if type(st) == c_ast.StructRef:
                if st.field.name == idname:
                    continue
                else:
                    if i.name in globalv_list and i.name not in l:
                        l.append(i.name)
            if i.name in globalv_list and i.name not in l:
                l.append(i.name)
            # globalfv_list.append(i.name)
            find_ID(i, l)
        else:
            find_ID(i, l)


Type_List = ['size_t', '__int8_t', "unsigned', 'int", "unsigned', 'char", '__uint8_t', '__int16_t', '__uint16_t',
             '__int32_t', '__uint32_t',
             '__int64_t', '__uint64_t', 'int', 'float', 'double', 'bool', 'int16_t', 'uint16_t', 'uint32_t',
             'uint8_t', 'int8_t', 'Enum', 'uint64_t', 'char', 'int64_t', 'int32_t']


def deal_global_variable(ast):
    """ Simply use the c_generator module to emit a parsed AST.
    """
    """record all global variable in ast"""
    for func in ast.ext:
        if type(func) == c_ast.Decl and type(func.type) != c_ast.FuncDecl and func.name not in globalv_list:
            globalv_list.append(func.name)
    """record each function's global variable"""
    for fun in ast.ext:
        if type(fun) == c_ast.FuncDef:
            l = []
            fun111 = fun.body.block_items
            if fun111 is None:
                continue
            find_ID(fun111, l)
            global_dic[fun.decl.name] = l


def deal_decls(doc, decls, nodes, generator):
    for j in decls:
        if type(j.type) == c_ast.TypeDecl:
            node1 = doc.createElement("variable")
            node1.setAttribute("name", str(j.name))
            if j.quals == ['const']:
                node1.setAttribute("quals", "const")
            if type(j.type.type) == c_ast.Struct or type(j.type.type) == c_ast.Union:
                # print(generator.visit(i))
                # print("continue+1111111111")
                # print(i)
                continue
            else:
                if type(j.type.type) == c_ast.Enum:
                    node1.setAttribute("type", j.type.type.name)
                    node1.setAttribute("Enum", "y")
                    e = j.type.type.name

                    node1.setAttribute("level", "L")
                    nodes[1].appendChild(node1)
                    # print(generator.visit(i))
                    # print("continue+2222222222")
                    # print(i)
                    continue
                te = str(j.type.type.names)
                e = te[2:-2]
                node1.setAttribute("type", e)
                if e in Type_List:
                    node1.setAttribute("level", "L")
                else:
                    node1.setAttribute("ref", e)
                nodes[1].appendChild(node1)
        elif type(j.type) == c_ast.PtrDecl and type(j.type.type) == c_ast.FuncDecl:
            continue
        elif type(j.type) == c_ast.PtrDecl and type(j.type.type) == c_ast.TypeDecl:
            node1 = doc.createElement("variable")
            node1.setAttribute("name", str(j.name))
            if j.quals == ['const']:
                node1.setAttribute("quals", "const")
            if type(j.type.type.type) == c_ast.Struct:
                e = j.type.type.type.name

                node1.setAttribute("type", e)
                node1.setAttribute("ptr", '*')
                if e in Type_List:
                    node1.setAttribute("level", "L")
                else:
                    node1.setAttribute("ref", e)
                nodes[1].appendChild(node1)
                # print(generator.visit(i))
                # print("continue+3333333333")
                # print(i)
                continue
            else:
                te = str(j.type.type.type.names)
                e = te[2:-2]
                node1.setAttribute("type", e)
                node1.setAttribute("ptr", '*')
                if e in Type_List:
                    node1.setAttribute("level", "L")
                else:
                    node1.setAttribute("ref", e)
                nodes[1].appendChild(node1)

        elif type(j.type) == c_ast.ArrayDecl:
            if type(j.type.type.type) == c_ast.Struct:
                # print(generator.visit(i))
                # print("continue+4444444444")
                # print(i)
                continue
            if type(j.type.type) == c_ast.ArrayDecl:
                # print(generator.visit(i))
                # print("continue+1313131313")
                # print(i)
                continue
            if type(j.type.type.type) == c_ast.Enum:
                continue
            if type(j.type.type) == c_ast.PtrDecl:
                node1 = doc.createElement("variable")
                node1.setAttribute("name", str(j.name))
                if j.quals == ['const']:
                    node1.setAttribute("quals", "const")
                if type(j.type.type.type.type) == c_ast.Struct:
                    e = str(j.type.type.type.type.name)
                else:
                    te = str(j.type.type.type.type.names)
                    e = te[2:-2]
                node1.setAttribute("ptr", "*")
                node1.setAttribute("type", e)
                node1.setAttribute("arr", j.type.dim.value)
                if e in Type_List:
                    node1.setAttribute("level", "L")
                else:
                    node1.setAttribute("ref", e)
                nodes[1].appendChild(node1)
                continue

            node1 = doc.createElement("variable")
            node1.setAttribute("name", str(j.name))
            if j.quals == ['const']:
                node1.setAttribute("quals", "const")
            te = str(j.type.type.type.names)
            e = te[2:-2]
            node1.setAttribute("type", e)
            if type(j.type.dim) == c_ast.ID:
                node1.setAttribute("arr", j.type.dim.name)
            elif type(j.type.dim) == c_ast.BinaryOp:
                value = generator.visit(j.type.dim)
                node1.setAttribute("arr", value)
            else:
                node1.setAttribute("arr", j.type.dim.value)
            if e in Type_List:
                node1.setAttribute("level", "L")
            else:
                node1.setAttribute("ref", e)
            nodes[1].appendChild(node1)


def createxml(ast, doc, root, flag, filename):
    structs = root.getElementsByTagName('decl')
    function = root.getElementsByTagName('function')
    processed_name = []
    # if flag=="one":
    #     structs = root.getElementsByTagName('decl')
    #     function = root.getElementsByTagName('function')
    # else:
    #     structs=root[0].getElementsByTagName('decl')
    #     function=root[0].getElementsByTagName('function')

    # 记录下之前xml文件中存在的自定义结构体，函数名
    for s in structs:
        name = s.getAttribute("name")
        processed_name.append(name)
    for f in function:
        name = f.getAttribute("name")
        processed_name.append(name)
    nodes = {0: root}
    # if flag=="one":
    #     nodes = {0:root}
    # else:
    #     nodes = {0: root[0]}

    for i in ast.ext:
        generator = c_generator.CGenerator()
        if type(i) == c_ast.Typedef or type(i) == c_ast.Decl:
            if type(i) == c_ast.Typedef and type(i.type) == c_ast.TypeDecl and type(i.type.type) == c_ast.Struct and \
                    hasattr(i.type.type, "decls") and i.type.type.decls is None:
                # print("don't copy+99889988")
                # print(generator.visit(i))
                continue
            print(generator.visit(i))
            print("every time")
            print(i)
            if type(i) == c_ast.Typedef and type(i.type) == c_ast.TypeDecl and type(
                    i.type.type) == c_ast.IdentifierType:
                continue
            if type(i.type) == c_ast.Union:
                continue

            node = doc.createElement("decl")

            # need deal with
            if type(i.type) == c_ast.Enum:
                if i.type.name in processed_name:
                    continue
                if i.type.name in global_decl:
                    continue
                else:
                    global_decl.append(i.type.name)
                node.setAttribute("name", i.type.name)
                node.setAttribute("type", 'Enum')
                nodes[0].appendChild(node)
                nodes[1] = node
                continue
            elif type(i.type) == c_ast.Struct:
                if i.type.name in processed_name:
                    continue
                if i.type.name in global_decl:
                    continue
                else:
                    global_decl.append(i.type.name)
                node.setAttribute("name", i.type.name)
                node.setAttribute("type", 'Struct')
                nodes[0].appendChild(node)
                nodes[1] = node
                if hasattr(i.type, "decls"):
                    decls = i.type.decls
                    if decls is not None:
                        deal_decls(doc, decls, nodes, generator)
            elif type(i.type.type) == c_ast.Enum:
                if i.name in processed_name:
                    continue
                if i.name in global_decl:
                    continue
                else:
                    global_decl.append(i.name)
                node.setAttribute("name", i.name)
                node.setAttribute("type", 'Enum')
                nodes[0].appendChild(node)
                nodes[1] = node
                continue

            else:
                if i.name in processed_name:
                    continue
                if i.name in global_decl:
                    continue
                else:
                    global_decl.append(i.name)

                node.setAttribute("name", i.name)

            if type(i.type) == c_ast.TypeDecl:
                if type(i.type.type) == c_ast.IdentifierType:
                    te = str(i.type.type.names)
                    e = te[2:-2]
                    node.setAttribute("type", e)
                elif type(i.type.type) == c_ast.Union:
                    node = doc.createElement("decl")
                    node.setAttribute("name", i.name)
                    node.setAttribute("type", "Union")
                    continue
                else:

                    te = str(type(i.type.type))
                    e = te[24:-2]
                    if e == 'Enum':
                        node.setAttribute("type", i.type.type.name)
                    else:
                        node.setAttribute("type", e)
                nodes[0].appendChild(node)
                nodes[1] = node
                if hasattr(i.type.type, "decls"):
                    decls = i.type.type.decls
                    if decls is not None:
                        deal_decls(doc, decls, nodes, generator)

                    else:
                        print(generator.visit(i))
                        print("continue+555555555555")
                        print(i)
                        continue
                else:
                    temp = node.getAttribute("type")
                    if temp in ["Struct", "Enum"]:
                        no = doc.createElement("variable")
                        if i.type.type.values is None:
                            no.setAttribute("name", i.name)
                            no.setAttribute("type", temp)
                            no.setAttribute("Enum", 'yes')
                            no.setAttribute("level", "L")
                            continue

                            if temp in Type_List:
                                no.setAttribute("level", "L")
                            else:
                                no.setAttribute("ref", temp)
                            nodes[1].appendChild(no)
                            continue

                        no.setAttribute("name", i.type.type.values.enumerators[0].name)
                        Type = i.type.type.values.enumerators[0].value.type
                        no.setAttribute("type", Type)
                        no.setAttribute("Enum", 'yes')
                        if Type in Type_List:
                            node.setAttribute("level", "L")
                        else:
                            node.setAttribute("ref", Type)
                        nodes[1].appendChild(no)
                        continue
                    nodd = doc.createElement("variable")
                    nodd.setAttribute("name", i.name)

                    nodd.setAttribute("type", temp)
                    if temp in Type_List:
                        nodd.setAttribute("level", "L")
                    else:
                        nodd.setAttribute("ref", temp)
                    nodes[1].appendChild(nodd)
                continue
            elif type(i.type) == c_ast.Enum:
                no = doc.createElement("variable")
                no.setAttribute("name", i.type.values.enumerators[0].name)

                no.setAttribute("Enum", 'yes')

                no.setAttribute("level", "L")

                nodes[1].appendChild(no)
                continue
            elif type(i.type) == c_ast.PtrDecl or type(i.type) == c_ast.ArrayDecl:
                print(type(i.type))
                print(type(i.type.type))
                if type(i.type) == c_ast.PtrDecl:
                    if type(i.type.type) == c_ast.FuncDecl:
                        continue
                    if type(i.type.type.type) == c_ast.IdentifierType:
                        if str(i.type.type.type.names)[2:-2] == 'void':
                            continue
                        else:
                            nodd = doc.createElement("decl")
                            nodd.setAttribute("name", i.name)
                            nodd.setAttribute("type", str(i.type.type.type.names)[2:-2])
                            nodes[0].appendChild(nodd)
                            nodes[1] = nodd
                            no = doc.createElement("variable")
                            no.setAttribute("name", i.name)
                            no.setAttribute("type", str(i.type.type.type.names)[2:-2])
                            no.setAttribute("ptr", "*")
                            temp = str(i.type.type.type.names)[2:-2]
                            if temp in Type_List:
                                no.setAttribute("level", "L")
                            else:
                                no.setAttribute("ref", temp)
                            nodes[1].appendChild(no)
                            continue
                if type(i.type.type) == c_ast.PtrDecl:
                    node.setAttribute("type", str(i.type.type.type.type.names)[2:-2])

                elif type(i.type.type.type) == c_ast.Struct:
                    if type(i.type) == c_ast.PtrDecl:
                        node2 = doc.createElement("decl")
                        node2.setAttribute("name", i.name)
                        node2.setAttribute("type", i.type.type.type.name)

                        nodes[0].appendChild(node2)
                        nodes[1] = node2
                        no = doc.createElement("variable")
                        no.setAttribute("name", i.name)
                        no.setAttribute("type", i.type.type.type.name)
                        no.setAttribute("ptr", '*')
                        # no.setAttribute("arr",i.type.dim.value)
                        temp = i.type.type.type.name
                        if temp in Type_List:

                            no.setAttribute("level", "L")
                        else:
                            no.setAttribute("ref", temp)
                        nodes[1].appendChild(no)
                        continue
                    t = i.type.type.type
                    node2 = doc.createElement("decl")
                    node2.setAttribute("name", t.name)
                    node2.setAttribute("type", "Struct")
                    nodes[0].appendChild(node2)
                    nodes[1] = node2
                    for j in t.decls:
                        no = doc.createElement("variable")
                        no.setAttribute("name", j.name)
                        no.setAttribute("type", str(j.type.type.names)[2:-2])
                        temp = str(j.type.type.names)[2:-2]
                        if temp in Type_List:
                            no.setAttribute("level", "L")
                        else:
                            no.setAttribute("ref", temp)
                        nodes[1].appendChild(no)

                    node.setAttribute("type", t.name)
                    nodes[0].appendChild(node)
                    nodes[1] = node
                    node1 = doc.createElement("variable")
                    node1.setAttribute("name", i.name)

                    node1.setAttribute("type", t.name)
                    node1.setAttribute("ref", t.name)
                    node1.setAttribute("arr", i.type.dim.value)
                    nodes[1].appendChild(node1)
                    continue
                else:
                    print(i)
                    te = str(i.type.type.type.names)
                    e = te[2:-2]
                    node.setAttribute("type", e)
                    nodes[0].appendChild(node)
                    nodes[1] = node
                    nod = doc.createElement("variable")
                    nod.setAttribute("name", i.name)
                    nod.setAttribute("type", e)
                    if e in Type_List:
                        nod.setAttribute("level", "L")
                    else:
                        nod.setAttribute("ref", e)
                    if type(i.type) == c_ast.ArrayDecl:
                        if type(i.type.dim) == c_ast.BinaryOp:
                            value = generator.visit(i.type.dim)
                            nod.setAttribute("arr", value)
                        elif type(i.type.dim) == c_ast.ID:
                            nod.setAttribute("arr", i.type.dim.name)
                        elif i.type.dim is None:
                            pass
                        else:
                            print(type(i.type.dim))
                            nod.setAttribute("arr", i.type.dim.value)
                    nodes[1].appendChild(nod)
                    continue

                nodes[0].appendChild(node)
                nodes[1] = node
                temp = node.getAttribute("type")
                node1 = doc.createElement("variable")
                node1.setAttribute("name", i.name)
                if type(i.type.type) == c_ast.PtrDecl:
                    node1.setAttribute("ptr", '*')
                    node1.setAttribute("arr", i.type.dim.value)
                node1.setAttribute("ptr", '*')

                node1.setAttribute("type", temp)
                if e in Type_List:
                    node1.setAttribute("level", "L")
                else:
                    node1.setAttribute("ref", temp)
                nodes[1].appendChild(node1)
                continue
            else:
                print(generator.visit(i))
                print("continue+666666666")
                print(i)
                continue

        # elif type(i) == c_ast.FuncDef:
        #     if i.decl.name in processed_name:
        #         continue
        #     if i.decl.name in global_decl:
        #         continue
        #     else:
        #         global_decl.append(i.decl.name)
        #     if i.body.block_items is None:
        #         continue
        #     node = doc.createElement("function")
        #     node.setAttribute("name", i.decl.name)
        #     if type(i.decl.type.type) == c_ast.PtrDecl:
        #         print(generator.visit(i))
        #         print("continue+77777777777777")
        #         print(i)
        #         if type(i.decl.type.type.type.type) == c_ast.Struct:
        #             e = str(i.decl.type.type.type.type.name)
        #         else:
        #             te = str(i.decl.type.type.type.type.names)
        #             e = te[2:-2]
        #         node.setAttribute("Returntype", e)
        #         node.setAttribute("ptr", "*")
        #     elif type(i.decl.type.type.type) == c_ast.Enum:
        #         te = i.decl.type.type.type.name
        #         node.setAttribute("Returntype", te)
        #         node.setAttribute("Enum", "y")
        #         print(generator.visit(i))
        #         print("continue+888888888888")
        #         print(i)
        #
        #     else:
        #         te = str(i.decl.type.type.type.names)
        #         e = te[2:-2]
        #         node.setAttribute("Returntype", e)
        #
        #     nodes[0].appendChild(node)
        #     nodes[1] = node
        #
        #     """define function's global variable"""
        #     fun_global = global_dic[i.decl.name]
        #     for a in fun_global:
        #         no = doc.createElement("global")
        #         no.setAttribute("name", a)
        #         nodes[1].appendChild(no)
        #     returntype = node.getAttribute("Returntype")
        #     if returntype != 'void':
        #         n1 = doc.createElement("return_value")
        #         n1.setAttribute("name", 'ret_self_com')
        #         if node.hasAttribute("ptr"):
        #             n1.setAttribute("ptr", "*")
        #         if node.hasAttribute("Enum"):
        #             n1.setAttribute("Enum", "y")
        #         n1.setAttribute("type", returntype)
        #         if returntype in Type_List:
        #             n1.setAttribute("level", "L")
        #         elif node.hasAttribute("Enum"):
        #             n1.setAttribute("level", "L")
        #         else:
        #             n1.setAttribute("ref", returntype)
        #         nodes[1].appendChild(n1)
        #     if i.decl.type.args is None:
        #         continue
        #     decls = i.decl.type.args.params
        #     if decls is not None:
        #         for j in decls:
        #
        #             if type(j) != c_ast.Decl:
        #                 print(generator.visit(i))
        #                 print("continue+101010101010")
        #                 print(i)
        #                 continue
        #             node1 = doc.createElement("params")
        #             node1.setAttribute("name", j.name)
        #             if j.quals == ['const']:
        #                 node1.setAttribute("quals", "const")
        #             if type(j.type) == c_ast.TypeDecl:
        #
        #                 if type(j.type.type) == c_ast.Struct or type(j.type.type) == c_ast.Enum:
        #                     # node1.setAttribute("quals",j.type.quals)
        #                     node1.setAttribute("type", str(j.type.type.name))
        #                     if type(j.type.type) == c_ast.Enum:
        #                         node1.setAttribute("Enum", "y")
        #                         node1.setAttribute("level", "L")
        #                         nodes[1].appendChild(node1)
        #                         continue
        #                 else:
        #
        #                     node1.setAttribute("type", str(j.type.type.names)[2:-2])
        #             elif type(j.type) == c_ast.PtrDecl:
        #                 node1.setAttribute("ptr", "*")
        #                 if type(j.type.type.type) == c_ast.Struct:
        #                     node1.setAttribute("type", str(j.type.type.type.name))
        #
        #                 else:
        #                     if type(j.type.type) == c_ast.PtrDecl:
        #                         print("two level poiter+=========")
        #                         continue
        #                     node1.setAttribute("type", str(j.type.type.type.names)[2:-2])
        #             else:
        #                 print(generator.visit(i))
        #                 print("continue+9999999999")
        #                 print(i)
        #             temp = node1.getAttribute("type")
        #             if temp in Type_List:
        #                 node1.setAttribute("level", "L")
        #             else:
        #                 node1.setAttribute("ref", temp)
        #             nodes[1].appendChild(node1)
        #
        #     continue
        else:
            print(generator.visit(i))
            # print("continue+121212121212")
            print(i)
            continue

    with open(filename, 'w') as f:
        print("output xml doc...")
        print(doc.toprettyxml())
        f.write(doc.toprettyxml(indent=' '))
        f.close()


def entry_createxml(ast, endflag, outfile):
    """
    ast:pycparser解析的ast,对应与c文件的ast
    endfalg:bool，是否是最后一个c文件，如果是，则将temp.xml文件复制到meta_data目录之下sec_xmlfile文件夹下面，
    文件名和生成的函数同名
    ouitfile:输出文件的名字
    """
    # 定义temp.xml文件
    print("entry_createxml start...")
    temp_xml = './' + "sec_temp.xml"  # 生成的xml存放的临时文件
    # deal_global_variable(ast)  # 处理全局变量
    temp_xml_abs = os.path.abspath(temp_xml)

    if ast is not None:
        print(str(os.path.getsize(temp_xml_abs)) + "ffffffff")
        if os.path.getsize(temp_xml_abs) > 0:  # 判断文件的中是否有内容
            # 已经解析过其他的xml文件
            curdoc = parse(temp_xml_abs)
            curroot = curdoc.documentElement
            curflag = "two"
            createxml(ast, curdoc, curroot, curflag, temp_xml_abs)
        else:
            # temp_xml为空，第一次解析ast
            twocurflag = "one"
            twocurdoc = Document()
            twocurroot = twocurdoc.createElement("root")
            twocurdoc.appendChild(twocurroot)
            createxml(ast, twocurdoc, twocurroot, twocurflag, temp_xml_abs)

    if endflag:
        # 将temp_xml文件复制到最终位置
        finally_xmlfile = '../../meta_data/sec_xmlfile/' + outfile  # 最终生成的xml文件名
        copy_fromfile = open(temp_xml_abs, "r", encoding='utf-8')
        copy_tofile = open(finally_xmlfile, 'w', encoding='utf-8')

        try:
            for line in copy_fromfile.readlines():
                if line.split():
                    copy_tofile.write(line)
        finally:
            copy_fromfile.close()
            copy_tofile.close()
        global_decl.clear()
        globalv_list.clear()
        with open(temp_xml_abs, "r+") as tempfile:
            tempfile.truncate()


# ------------------------------------------------------------------------------
if __name__ == "__main__":
    # _zz_test_translate()
    # """
    fake_include = "../../utils/fake_libc_include"
    abs_fake_include = os.path.abspath(fake_include)
    fpath = "/home/raoxue/Desktop/openssl-1.0.1f/ssl"  # 路径名
    filename = "s2_pkt.c"  # 文件名
    command1 = "cd " + fpath + ";gcc -E " + filename + " -I../crypto -I.. -I../include -I" + abs_fake_include + " " \
                                                                                                                "-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN " \
                                                                                                                "-DTERMIO -DOPENSSL_IA32_SSE2 -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5 -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM" \
                                                                                                                "-DSHA256_ASM -DSHA512_ASM -DMD5_ASM -DAES_ASM -DVPAES_ASM -DBSAES_ASM -DWHIRLPOOL_ASM -DGHASH_ASM >>fun1"

    (status, output) = subprocess.getstatusoutput(command1)
    if status == 0:
        # print(fpath + '/fun1')
        tempast = parse_file(fpath + '/fun1', use_cpp=True)
        entry_createxml(tempast, True, "test.xml")
