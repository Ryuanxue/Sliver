import copy
import itertools
import os
import pickle
import shutil
import subprocess
import sys
from xml.dom.minidom import parse, Document

from pycparser import c_generator, c_ast, c_parser, parse_file

from createxml import entry_createxml
from deal_return import get_last_linenum, deal_return, global_return_sta, global_return_decl
from lib_gen_xml import get_src_ast, get_srcvarname, create_xml_function, parse_c_to_ll, saveinfo_input_xml

fun_actual_param_map={}
is_gen_xml=False
GET_SLICE_IN_OUT_INFO=False
isModSink = False
isFUZZ=False
# isvarfun=False
Mod_sinkcall_AST=[]
SINK_TYPE_INFO_AST=[]
genxml_dealed_file=[]

dir_ast = {}
global_dic = {}
Ismodifyloclavarible = []
fun_loop = {}
globalv_list = []  # store global varible
fun_decl_dic = {}
fun_decl_dic_formalarg={}
global_funname = []
sink_vardecl_ast=[]
sink_varname=[]
sink_line_funname=[]
source_line_funname=[]
generator = c_generator.CGenerator()

modify_funptr=[]

def get_c_filename(curele):
    """
    获得基本块中的c文件名
    :param curele:基本块
    :return: string(c文件名）
    """
    startline = get_first_lineinfo(curele)  # 取第一行
    rindex = startline.rfind(":")
    rslash = startline.rfind("/")
    temp_cfile = startline[rslash + 1:rindex]
    return temp_cfile

def get_c_absfilename(curele):
    """
    获得基本块中的c文件的绝对文件名
    :param curele:基本块
    :return: string(c文件名）
    """
    startline = get_first_lineinfo(curele)  # 取第一行
    rindex = startline.rfind(":")
    temp_cfile = startline[:rindex]
    return temp_cfile

def get_project_path(ele):
    startline = get_first_lineinfo(ele)  # 取第一行
    rslash = startline.rfind("/")
    temp_path = startline[:rslash]
    return temp_path

def find_loop_if_in_env(s,funname):
    startline = int(str(s.coord).split(":")[1])
    last_num = -1
    linenum_list = []
    get_last_linenum(s, last_num, linenum_list)
    lastline = linenum_list[0]
    list2 = list(range(startline, lastline))
    tempdic = {}
    tempkeyname = str(startline) + ":" + str(lastline)
    tempdic[tempkeyname] = s
    fun_loop[funname]=[]
    print("env loop..")
    fun_loop[funname].append(tempdic)
    print(fun_loop)


def find_loop_if(sta, funname):
    if funname in fun_loop.keys():
        return
    for s in sta:
        if s is None:
            continue
        else:
            if type(s) == c_ast.For or type(s) == c_ast.While or type(s) == c_ast.DoWhile \
                    or type(s) == c_ast.If or type(s)==c_ast.Switch or type(s)==c_ast.Label or type(s)==c_ast.Compound:
                startline = int(str(s.coord).split(":")[1])
                last_num = -1
                linenum_list = []
                get_last_linenum(s, last_num, linenum_list)
                lastline = linenum_list[0]
                list2 = list(range(startline, lastline))
                tempdic = {}
                tempkeyname = str(startline) + ":" + str(lastline)
                tempdic[tempkeyname] = s
                fun_loop[funname].append(tempdic)

def getfundef():
    s = r'''
    void f(int a){

    }
    '''
    ss=r'''
    char * f(int a){}
    '''
    parser = c_parser.CParser()

    # if GET_SLICE_IN_OUT_INFO:
    #     s_ast=parser.parse(ss)
    #     print(s_ast)
    # else:
    #     s_ast = parser.parse(s)
    s_ast = parser.parse(s)
    return s_ast

def collect_source_data(p,linenum):
    varname = strip_varname(p.name)
    retlist = judge_decl(p)
    if len(retlist) == 0:
        print("unknow param type")
        print(p)
        exit(1)
    kind = retlist[0]
    decltype = retlist[1]
    dim = "null"
    if len(retlist) == 3:
        dim = retlist[2]
    vartype = str(linenum)+":"+varname + ":" +p.name+":"+ kind + ":" + decltype + ":" + str(dim)
    if vartype in temp_in_var_list:
        pass
    else:
        temp_in_var_list.append(vartype)

def get_filename_from_coord(lineinfo):
    poind = lineinfo.index(":")
    reind = lineinfo.rindex("/")
    filename = lineinfo[reind + 1:poind]
    return filename

def output_finally_fun(genfunname,temp_ast,gotolabel,labeldefine,slice_in_funname,in_var_list,out_var_list):
    fundef = getfundef()
    fundef.ext[0].decl.name = genfunname
    # if GET_SLICE_IN_OUT_INFO:
    #     fundef.ext[0].decl.type.type.type.declname = genfunname
    # else:
    #     fundef.ext[0].decl.type.type.declname = genfunname
    fundef.ext[0].decl.type.type.declname = genfunname
    funparam = fundef.ext[0].decl.type.args.params
    fundef.ext[0].body.block_items = []
    for ele in temp_ast:
        # if "va_start" in generator.visit(ele):
        #     isvarfun = True
        fundef.ext[0].body.block_items.append(ele)

    funparam.pop()
    temp_param = []
    temp_name = []
    print("param list....")
    for p in param_list:
        print(p.name)
        if p.name in temp_name:
            continue
        else:
            temp_name.append(p.name)
            temp_param.append(p)
    if GET_SLICE_IN_OUT_INFO or isModSink:
        print("output sink..")
        outvarnamelist=[]
        for p in sink_vardecl_ast:
            print(p)
            varname = strip_varname(p.name)
            if varname in outvarnamelist:
                continue
            outvarnamelist.append(varname)
            retlist = judge_decl(p)
            if len(retlist) == 0:
                print("unknow param type")
                print(p)
                exit(1)
            kind = retlist[0]
            decltype = retlist[1]
            dim = "null"
            if len(retlist) == 3:
                dim = retlist[2]
            vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
            out_var_list.append(vartype)

    print("source location")
    for p in temp_in_var_list:
        print(p)
        if GET_SLICE_IN_OUT_INFO or isModSink:
            invarlist=p.split(":")
            varname=invarlist[2]
            if "goodB2G2()" in generator.visit(fundef):
                if varname in generator.visit(fundef).replace("goodB2G2()",generator.visit(goodb2g2[0])):
                    in_var_list.append(p)
            elif "goodB2G1()" in generator.visit(fundef):
                if varname in generator.visit(fundef).replace("goodB2G1()",generator.visit(goodb2g1[0])):
                    in_var_list.append(p)
            elif varname in generator.visit(fundef):
                in_var_list.append(p)


            # funname = strip_funname(p.name)
            # if funname == slice_in_funname:
            #     varname = strip_varname(p.name)
            #     retlist = judge_decl(p)
            #     if len(retlist) == 0:
            #         print("unknow param type")
            #         print(p)
            #         exit(1)
            #     kind = retlist[0]
            #     decltype = retlist[1]
            #     dim = "null"
            #     if len(retlist) == 3:
            #         dim = retlist[2]
            #     vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)

    # print(global_dic['goodB2G2'])
    for p in temp_param:
        print(p)
        if type(p.type)==c_ast.ArrayDecl:
            if type(p.type.dim)!=c_ast.Constant:
                p.type.dim=None
        p.storage = []
        p.init = None
        if "goodB2G2()" in generator.visit(fundef):
            if p.name in generator.visit(fundef).replace("goodB2G2()", generator.visit(goodb2g2[0])):
                funparam.append(p)
        elif "goodB2G1()" in generator.visit(fundef):
            if p.name in generator.visit(fundef).replace("goodB2G1()", generator.visit(goodb2g1[0])):
                funparam.append(p)
        elif p.name in generator.visit(fundef):
            funparam.append(p)
    temp_ret_name = []
    for p in return_val:
        if p.name in temp_ret_name:
            continue
        else:
            funparam.append(p)
            temp_ret_name.append(p.name)
    # if isModSink:
    funparam.append(create_funptr_forsink())
    # fundef.ext[0].body.block_items = []

    # for ele in temp_ast:
    #     # if "va_start" in generator.visit(ele):
    #     #     isvarfun = True
    #     fundef.ext[0].body.block_items.append(ele)
    print("global_decl...")
    for i in slice_global_varible_list:
        print(i)
    for ele in gotolabel:
        print("gotolabal ele")
        print(ele)
        if ele in labeldefine:
            continue
        else:
            labelst = c_ast.Label(name=ele, stmt=c_ast.EmptyStatement())
            fundef.ext[0].body.block_items.append(labelst)

    if GET_SLICE_IN_OUT_INFO or isModSink:
        for ele in fundef.ext[0].decl.type.args.params:
            # varname=strip_varname(ele.name)
            varname=ele.name
            retlist = judge_decl(ele)
            print("3333out")
            print(retlist)
            if len(retlist) == 0:
                print("unknow param type")
                print(ele)
                exit(1)
            kind = retlist[0]
            decltype = retlist[1]
            dim = "null"
            if len(retlist) == 3:
                dim = retlist[2]
            vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
            genfun_param_list.append(vartype)
    templist=[]
    for i in slice_global_varible_list:
        if i.name in templist:
            continue
        i.storage=['extern']
        i.init=None
        templist.append(i.name)
        fundef.ext.insert(0,i)
    print("size of globalreturntrueorfalse..")
    sizecount=generator.visit(fundef).count("globalReturnsTrueOrFalse()")
    if sizecount>0:
        print("555555out")
        print(sizecount)
        replaynum=0
        for i in itertools.product('01', repeat=sizecount):#获得0,1的排列组合
            num=0
            newfundef=copy.deepcopy(fundef)
            newfundef.ext[0].decl.name = genfunname+"_"+str(replaynum)
            newfundef.ext[0].decl.type.type.declname = genfunname+"_"+str(replaynum)
            if "_environment_" in newfundef.ext[0].decl.name:
                first_sta=newfundef.ext[0].body.block_items[0]
                if type(first_sta)==c_ast.Compound:
                    block1=newfundef.ext[0].body.block_items[0].block_items
                else:
                    block1 = newfundef.ext[0].body.block_items
            else:
                block1=newfundef.ext[0].body.block_items
            for st in block1:
                if type(st)==c_ast.If and type(st.cond)==c_ast.FuncCall and st.cond.name.name=="globalReturnsTrueOrFalse":
                    print(st.coord)
                    randlinenum=get_linenum_from_coord(str(st.coord))
                    randfilename=get_filename_from_coord(str(st.coord))
                    if replaynum==0:
                        randfilelist.append(randfilename)
                        randlinelist.append(randlinenum)
                    const=c_ast.Constant(type="int",value=i[num])
                    num = num + 1
                    st.cond=const
            reoutfile=outfile_1[:-2]+"_"+str(replaynum)+".c"
            print("function name global")
            print(reoutfile)
            replaynum=replaynum+1
            c_file = open(reoutfile, "w")
            # if GET_SLICE_IN_OUT_INFO:
            #     c_file.write('#include <string.h>\n')
            #     c_file.write('#include <stddef.h>\n')
            #     c_file.write('#include <stdio.h>\n')
            # else:
            c_file.write('#include "_costom_header_.h"\n')
            c_file.write('#include "_slice_header_.h"\n')
            c_file.write(generator.visit(newfundef))
            open_header_file.write(generator.visit(newfundef.ext[-1].decl) + ";\n")
            c_file.close()
    else:
        print("555555out")
        c_file = open(outfile_1, "w")
        # if GET_SLICE_IN_OUT_INFO:
        #     c_file.write('#include <string.h>\n')
        #     c_file.write('#include <stddef.h>\n')
        #     c_file.write('#include <stdio.h>\n')
        # else:
        c_file.write('#include "_costom_header_.h"\n')
        c_file.write('#include "_slice_header_.h"\n')
        if "goodB2G2()" in generator.visit(fundef):
            c_file.write(generator.visit(fundef).replace("goodB2G2()",generator.visit(goodb2g2[0])))
        elif "goodB2G1()" in generator.visit(fundef):
            c_file.write(generator.visit(fundef).replace("goodB2G1()",generator.visit(goodb2g1[0])))
        else:
            c_file.write(generator.visit(fundef))
            print("fiannly output")
            print(generator.visit(fundef))
        # print("function decl")
        # print(generator.visit(fundef.ext[0].decl))
        open_header_file.write(generator.visit(fundef.ext[-1].decl)+";\n")
        c_file.close()


def gen_final_startpart(line_ast, genfunname, gotolabel, labeldefine, slice_in_funname,in_var_list,out_var_list):
    """
    根据存放ast的列表，进行代码移动操作，形参实参传递，生成最终的代码（适用于start_part）
    :param line_ast: 存放对应于c语句的ast列表（倒序）
    :param outfile: 生成函数的函数名
    :return:
    """
    """反向插入"""

    temp_ast = []
    print("start output finally code...")
    print(line_ast)
    for st in line_ast:
        key_funname = list(st.keys())[0]
        ast_list = st[key_funname]
        if st == line_ast[0]:
            nextfunname = key_funname
            print(nextfunname)
            for t in ast_list:
                temp_ast.append(t)
                # print(generator.visit(t))
        else:
            rdic = []
            depth = 0
            last_ast = ast_list[-1]
            print("no first")
            print(last_ast)
            linenum = ast_list[0]
            # if type(last_ast)==c_ast.FuncCall:
            #     if last_ast.coord is not None:
            #         calllinenum=get_linenum_from_coord(str(last_ast.coord))
            #         if calllinenum==linenum:
            #             last_ast.name.name=nextfunname
            # print(last_ast)
            isincludefuncall1(last_ast, nextfunname, rdic, depth, linenum,
                              last_ast)  # 只是为了判断如果有需要展开的函数调用的话，返回dic
            if len(rdic) > 0:
                """进行声明和赋值语句的插入，插在何处是一个问题"""
                print(rdic)
                move_code_startpart(rdic, nextfunname, temp_ast, ast_list)
                temp_ast.clear()
                for t in ast_list:
                    if t == ast_list[0]:
                        continue
                    else:
                        temp_ast.append(t)
            nextfunname = key_funname
    print("finally ast")
    print(temp_ast)
    output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine, slice_in_funname, in_var_list,out_var_list)



def modif_ret(tempsta, nextfunname, ret_name):
    """
    如果函数调用有返回值，将函数调用部分转换为nextfunname的return值
    :param tempsta:
    :param nextfunname:
    :param ret_name:
    :return:
    """
    print("modif_ret ..")
    print(tempsta)
    for l in tempsta:
        if type(l) == c_ast.FuncCall and l.name.name == nextfunname:
            if type(tempsta) == c_ast.Assignment:
                tempsta.rvalue = c_ast.ID(name=ret_name)

            elif type(tempsta)==c_ast.BinaryOp:
                if nextfunname in generator.visit(tempsta.left):
                    tempsta.left=c_ast.ID(name=ret_name)

                if nextfunname in generator.visit(tempsta.right):
                    tempsta.right=c_ast.ID(name=ret_name)
            elif type(tempsta)==c_ast.Decl:
                tempsta.init=c_ast.ID(name=ret_name)
            elif type(tempsta)==c_ast.If:
                tempsta.cond=c_ast.ID(name=ret_name)
            return
        else:
           return modif_ret(l, nextfunname, ret_name)


def get_actual_parm(c, rdic):
    if c.args is not None:
        for id in c.args.exprs:
            idname = generator.visit(id)
            rdic.append(id)


def is_have_funcall(nextfunname, stmt, linenum, funlist):
    """
    一条简单语句对应的ast中是否包含被调用函数
    :param nextfunname: called函数的函数名
    :param stmt: 简单c语句对应的ast
    :param linenum: called函数所在的行号
    :param funlist: 返回列表，返回ture与called函数ast
    :return:
    """
    print("one more time")
    print(linenum)
    print(nextfunname)
    if stmt is None:
        return False
    curlinenum = str(stmt.coord)
    print(curlinenum)
    if stmt.coord is not None:
        cline = get_linenum_from_coord(curlinenum)
    else:
        cline=-1
    stype = type(stmt)
    if stype == c_ast.FuncCall:
        if curlinenum is None or cline==linenum :
            tempfunname = stmt.name
            funname = generator.visit(tempfunname)
            if funname == nextfunname:
                funlist.append("true")
                funlist.append(stmt)
                return True

    for s in stmt:
        if s is None:
            continue
        curlinenum = str(s.coord)
        print(curlinenum)
        if s.coord is not None:
            cline = get_linenum_from_coord(curlinenum)
        stype = type(s)
        if stype == c_ast.FuncCall:
            if curlinenum is None or cline==linenum :
                tempfunname = s.name
                funname = generator.visit(tempfunname)
                if funname == nextfunname:
                    funlist.append("true")
                    funlist.append(s)
                    return True
                else:
                     is_have_funcall(nextfunname, s, linenum, funlist)
            else:
                 is_have_funcall(nextfunname, s, linenum, funlist)
        else:
             is_have_funcall(nextfunname, s, linenum, funlist)


# def find_ID(st, l):
#     """
#     根据
#     :param st:
#     :param l:
#     :return:
#     """
#     for i in st:
#         if (i == None):
#             break
#         elif type(i) == c_ast.ID:
#             idname = i.name
#             if type(st) == c_ast.StructRef:
#                 if st.field.name == idname:
#                     continue
#                 else:
#                     if i.name in globalv_list and i.name not in l:
#                         l.append(i.name)
#             if i.name in globalv_list and i.name not in l:
#                 l.append(i.name)
#             find_ID(i, l)
#         else:
#             find_ID(i, l)


def storeFunllDecl1(fun, funname,num):
    """
    将函数的参数列表中的变量对应的ast存放在fun_decl_dic中
    :param fun: c_ast.FuncDef（函数对应的ast）
    :param funname: 字符串（函数名）
    :return: 将参数列表添加到fun_decl_dic中
    """
    if funname not in fun_decl_dic.keys():
        fun_decl_dic[funname] = []
    if type(fun.decl.type) == c_ast.FuncDecl and fun.decl.type.args != None:
        ind=0
        print("4444")
        for i in fun.decl.type.args.params:
            if ind==num:
                fun_decl_dic[funname].append(i)
                break
            ind=ind+1

def storeFunllDecl(fun, funname):
    """
    将函数的参数列表中的变量对应的ast存放在fun_decl_dic中
    :param fun: c_ast.FuncDef（函数对应的ast）
    :param funname: 字符串（函数名）
    :return: 将参数列表添加到fun_decl_dic中
    """
    fun_decl_dic_formalarg[funname] = []
    if type(fun.decl.type) == c_ast.FuncDecl and fun.decl.type.args != None:
        for i in fun.decl.type.args.params:
            fun_decl_dic_formalarg[funname].append(i)


def modifyid(st, funname, fun_global_list, localval):
    """
    SSA处理，递归修改每一条语句对应的ast中的变量名和label为"_" + funname + "_" + oldname + "_"的形式
    :param st: ast节点（对应c语言中语句的ast节点或子节点）
    :param funname:字符串（函数名）
    :param fun_global_list:列表（包含funname函数中所使用到的全局变量的变量名）
    :param localval:list （存放局部变量的声明）
    :return:无
    """
    if type(st)==type(3):
        return
    if type(st) == c_ast.If:
        for i in st:
            if type(i) == c_ast.Label:
                oldname = i.name
                newname = "_" + funname + "_" + oldname + "_"
                i.name = newname
                modifyid(i.stmt, funname, fun_global_list, localval)
            elif type(i) == c_ast.Goto:
                oldname = i.name
                newname = "_" + funname + "_" + oldname + "_"
                i.name = newname
    for i in st:
        if type(i)==type(3):
            continue
        if (i == None):
            continue

        elif type(i) == c_ast.Label:
            if type(st) == c_ast.If:
                continue
            oldname = i.name
            newname = "_" + funname + "_" + oldname + "_"
            i.name = newname
            modifyid(i.stmt, funname, fun_global_list, localval)

        elif type(i) == c_ast.Goto:
            if type(st) == c_ast.If:
                continue
            oldname = i.name
            newname = "_" + funname + "_" + oldname + "_"
            i.name = newname
        elif type(i) == c_ast.Decl:
            if i.name not in localval:
                localval.append(i.name)
            oldname = i.name
            newname = "_" + funname + "_" + oldname + "_"
            if oldname in fun_global_list:
                pass
            else:
                i.name = newname
            if type(i.type) == c_ast.PtrDecl:
                if type(i.type.type) == c_ast.FuncDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname = newname
                    modifyid(i.type.type.args.params, funname, fun_global_list, localval)
                    continue
                elif type(i.type.type) == c_ast.PtrDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname = newname
                else:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.declname = newname
            elif type(i.type) == c_ast.ArrayDecl:
                if type(i.type.type) == c_ast.PtrDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname = newname
                else:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.declname = newname
            elif type(i.type) == c_ast.FuncDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname = newname
                    modifyid(i.type.args.params, funname, fun_global_list, localval)
            else:
                if oldname in fun_global_list:
                    pass
                else:
                    i.type.declname = newname
            if type(i.init) == c_ast.FuncCall:
                modifyid(i.init, funname, fun_global_list, localval)
                continue
            elif type(i.init) == c_ast.ID:
                if type(i) == c_ast.FuncCall:
                    continue
                elif type(i) == c_ast.StructRef:
                    oldname = i.init.name
                    if oldname in localval:
                        if oldname == i.name.name:
                            if oldname in fun_global_list:
                                pass
                            else:
                                newname = "_" + funname + "_" + oldname + "_"
                                i.init.name = newname
                        elif oldname == i.field.name:
                            pass
                        pass
                else:
                    oldname = i.init.name
                    if oldname in localval:
                        newname = "_" + funname + "_" + oldname + "_"
                        if oldname in fun_global_list:
                            pass
                        else:
                            i.init.name = newname
                        continue
                    else:
                        continue
            elif type(i.init) == c_ast.StructRef:
                tempnode = i.init
                if type(tempnode.name) == c_ast.StructRef:
                    modifyid(tempnode, funname, fun_global_list, localval)
                    continue
                oldname = i.init.name.name
                if oldname in localval:
                    if oldname == i.init.name.name:
                        if oldname in fun_global_list:
                            pass
                        else:
                            newname = "_" + funname + "_" + oldname + "_"
                            i.init.name.name = newname
                    elif oldname == st.field.name:
                        pass
                    continue
            elif type(i.init) == c_ast.BinaryOp:
                modifyid(i.init.left, funname, fun_global_list, localval)
                modifyid(i.init.right, funname, fun_global_list, localval)
            elif type(i.init) == c_ast.UnaryOp:
                if type(i.init.expr) == c_ast.Constant:
                    continue
                elif type(i.init.expr) == c_ast.StructRef:
                    modifyid(i.init.expr, funname, fun_global_list, localval)
                    continue
                elif type(i.init.expr) == c_ast.ArrayRef:
                    modifyid(i.init.expr, funname, fun_global_list, localval)
                    continue
                elif type(i.init.expr) == c_ast.Cast:
                    modifyid(i.init.expr, funname, fun_global_list, localval)
                    continue
                elif type(i.init.expr) == c_ast.UnaryOp:
                    modifyid(i.init.expr, funname, fun_global_list, localval)
                    continue
                oldname = i.init.expr.name
                if oldname in fun_global_list:
                    pass
                else:
                    if oldname in localval:
                        newname = "_" + funname + "_" + oldname + "_"
                        i.init.expr.name = newname
                    else:
                        pass
                continue
            elif type(i.init) == c_ast.Cast:
                modifyid(i.init, funname, fun_global_list, localval)
                continue
            elif type(i.init) == c_ast.ArrayRef:
                if type(i.init.name) == c_ast.StructRef:
                    modifyid(i.init.name, funname, fun_global_list, localval)
                    continue
                oldname = i.init.name.name
                if oldname in localval:
                    newname = "_" + funname + "_" + oldname + "_"
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.init.name.name = newname
                    continue

            else:
                continue
        elif type(i) == c_ast.ID:
            if i.name in localval:
                if type(st) == c_ast.FuncCall:
                    continue
                elif type(st) == c_ast.StructRef:
                    oldname = i.name
                    if oldname == st.name.name:
                        newname = "_" + funname + "_" + oldname + "_"
                        if oldname in fun_global_list:
                            pass
                        else:
                            i.name = newname
                    elif oldname == st.field.name:
                        pass
                    pass
                else:
                    oldname = i.name
                    newname = "_" + funname + "_" + oldname + "_"
                    if oldname in fun_global_list or oldname in global_funname:
                        pass
                    else:
                        i.name = newname
                    continue
            else:
                if type(st) == c_ast.FuncCall and i.name.startswith("__builtin_"):
                    oldname=i.name
                    newname=oldname.replace("__builtin_","")
                    i.name=newname

        else:

            modifyid(i, funname, fun_global_list, localval)


def find_fun_loop_if(fst, funname):
    """
    识别出函数中所有的loop，并记录每个loop的起始行号和结束行号
    :param fst: c_ast.FileAST(函数所在的c文件的翻译单元对应的ast)
    :param funname: 字符串（函数名）
    :return: 将识别出的loop添加到全局变量fun_loop字典中
    """
    if funname in fun_loop.keys():
        return
    for i in range(0, len(fst.ext)):
        st = fst.ext[i]
        if type(st) == c_ast.FuncDef and st.decl.name == funname:
            child = st.body
            fun_loop[funname] = []
            for sta in child.block_items:
                statype = type(sta)
                if statype == c_ast.For or statype == c_ast.While or statype == c_ast.DoWhile \
                        or type(sta) == c_ast.If or type(sta) == c_ast.Switch or type(sta)==c_ast.Label or type(sta)==c_ast.Compound:
                    print(statype)
                    print(sta)
                    if sta.coord is None:
                        continue
                    startline = int(str(sta.coord).split(":")[1])
                    last_num = -1
                    line_list = []
                    get_last_linenum(sta, last_num, line_list)
                    lastline = line_list[0]
                    keyname = str(startline) + ":" + str(lastline)
                    tempdic = {keyname: sta}
                    fun_loop[funname].append(tempdic)
                elif statype == c_ast.Compound:
                    find_loop_if(sta,funname)
                else:
                    pass
            break


def move_code_endpart(line_ast):
    """
    移动代码，实参形参传递，返回值处理
    :param rdic: 列表（包含父节点，索引，called类型，实参列表）
    :param nextfunname: 被调用函数的函数名
    :param next_ast: 正序，被called函数的部分ast
    :param cur_ast: 正序：主调函数的部分ast
    :param rdic:
    :param nextfunname:
    :param next_ast:
    :param cur_ast:
    :return:
    """
    final_ast = []
    for st in line_ast:
        key_funname = list(st.keys())[0]
        if st == line_ast[0]:
            nextfunname = key_funname
        ast_list = st[key_funname]
        for t in ast_list:
            if st == line_ast[0]:
                final_ast.append(t)
            else:
                if t == ast_list[0]:
                    continue
                elif t == ast_list[1]:
                    if type(t)==c_ast.FuncCall:
                        final_ast.append(t)
                        print("conntinue...")
                        continue
                    print("continue...")
                    """在其他类型的ast找到funcall语句，修改返回值"""
                    rdic = []
                    depth = 0
                    linenum = ast_list[0]
                    print(t)
                    print(nextfunname)
                    isincludefuncall1(t, nextfunname, rdic, depth, linenum, t)
                    print(rdic)
                    if len(rdic) > 0:
                        condtype = rdic[2]
                        ret_name = nextfunname + "_return_"
                        if condtype == 'basic':
                            t.rvalue = c_ast.ID(name=ret_name)
                        else:
                            modif_ret(t, nextfunname, ret_name)
                    final_ast.append(t)
                else:
                    final_ast.append(t)
                nextfunname = key_funname
    return final_ast

def create_sizeof_sta(destast,srcast,typeast,num):
    sizeof_memcpy=c_ast.FuncCall(name=c_ast.ID(name="memcpy"),
                                 args=c_ast.ExprList(exprs=[
                                     destast,
                                     srcast,
                                     c_ast.BinaryOp(op="*",
                                                    left=c_ast.UnaryOp(op="sizeof",expr=typeast),
                                                    right=c_ast.Constant(type="int",
                                                                         value=num))

                                 ]))
    return sizeof_memcpy


def move_code_startpart(rdic, nextfunname, next_ast, cur_ast):
    """
    移动代码，实参形参传递，返回值处理
    :param rdic: 列表（包含父节点，索引，called类型，实参列表）
    :param nextfunname: 被调用函数的函数名
    :param next_ast: 正序，被called函数的部分ast
    :param cur_ast: 正序：主调函数的部分ast
    :return:
    """
    n = 0
    parentnode = rdic[0]
    ind = rdic[1]
    condtype = rdic[2]
    rlist = rdic[3:]
    print("move startpart")
    if parentnode == "null":
        tempast = []
        print(fun_decl_dic)
        for decl in fun_decl_dic[nextfunname]:
        # for decl in fun_decl_dic_formalarg[nextfunname]:
            if type(decl)==c_ast.EllipsisParam:
                continue
            if type(decl)==type(3):
                num=decl
                decl=fun_decl_dic_formalarg[nextfunname][num]
            print("111")
            print(decl)
            tempast.append(decl)
            lname = decl.name
            if type(decl.type)==c_ast.ArrayDecl:
                destast=c_ast.ID(lname)
                srcast=c_ast.ID(rlist[n])
                typeast=decl.type.type
                print("dim value")
                print(decl)
                num=decl.type.dim.value
                assign=create_sizeof_sta(destast,srcast,typeast,num)
            else:
                assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(rlist[n]))
            tempast.append(assign)
            n = n + 1
        for ele in next_ast:
            tempast.append(ele)
        cur_ast.pop()
        for t in tempast:
            cur_ast.append(t)
        return cur_ast
    else:
        tempsta = parentnode[ind]
        for decl in fun_decl_dic[nextfunname]:
            if type(decl)==c_ast.EllipsisParam:
                continue
            print("2222")
            print(decl)
            parentnode.insert(ind, decl)
            ind = ind + 1
            lname = decl.name
            if type(decl.type)==c_ast.ArrayDecl:
                destast=c_ast.ID(lname)
                srcast=c_ast.ID(rlist[n])
                typeast=decl.type.type
                num=decl.type.dim.value
                assign=create_sizeof_sta(destast,srcast,typeast,num)
            else:
                assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(rlist[n]))
            parentnode.insert(ind, assign)
            ind = ind + 1
            n = n + 1

        for tele in next_ast:
            parentnode.insert(ind, tele)
            ind = ind + 1
        parentnode.remove(tempsta)
        return cur_ast


def re_move_code(rdic, nextfunname, temp_ast, re_po_flag):
    """
    将被调用函数的整个函数内联到主调函数中相应的位置（实参形参赋值，移动called函数的所有语句对应的ast）
    :param rdic: 列表（包含父节点，索引，called类型，实参列表）
    :param nextfunname: 被调用函数的函数名
    :param temp_ast: 对应于called函数的ast
    :return: 返回内联了called函数后的整个父节点
    """
    n = 0
    parentnode = rdic[0]
    ind = rdic[1]
    condtype = rdic[2]
    rlist = rdic[3:]
    ret_name = nextfunname + "_return_"
    tempsta = parentnode[ind]
    # print(fun_decl_dic[nextfunname])
    for decl in fun_decl_dic[nextfunname]:
        print("finally decl")
        # print(rdic)
        print(decl)
        if type(decl)==c_ast.EllipsisParam:
            continue
        elif type(decl) == type(3):
            num = decl
            decl = fun_decl_dic_formalarg[nextfunname][num]
        parentnode.insert(ind, decl) #插入形参的声明
        #插入形参赋值给实参的语句
        ind = ind + 1
        lname = decl.name
        if type(decl.type) == c_ast.ArrayDecl:
            destast = c_ast.ID(lname)
            srcast = c_ast.ID(rlist[n])
            typeast = decl.type.type
            num = decl.type.dim.value
            assign = create_sizeof_sta(destast, srcast, typeast, num)
        else:
            print(rlist)
            print(n)
            # print(fun_decl_dic[nextfunname])
            assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(rlist[n]))
        parentnode.insert(ind, assign)
        print(parentnode)
        ind = ind + 1
        n = n + 1
    compoundst = c_ast.Compound(block_items=[])

    for tele in temp_ast:
        parentnode.insert(ind,tele)
        ind=ind+1
        compoundst.block_items.append(tele)
    if re_po_flag == "positive":
        parentnode.pop(ind)
    else:
        if condtype == 'basic':
            print("tempsta...")
            print(generator.visit(tempsta))
            if type(tempsta) == c_ast.FuncCall or type(tempsta)==c_ast.Return or type(tempsta)==c_ast.Decl:
                print("...")
                parentnode.remove(tempsta)
            else:
                print(tempsta)
                tempsta.rvalue = c_ast.ID(name=ret_name)
        else:
            modif_ret(tempsta, nextfunname, ret_name)
    print("compundst......2")
    print(generator.visit(compoundst))
    return compoundst.block_items


def find_called_fun(loopast, linenum, funname, rdic):
    '''
    在主调函数的loop or if对应的ast中查找是否包含被调called函数
    :param loopast: 主调函数中某一个语句对应的ast
    :param linenum: called函数所在的行号
    :param funname: 被掉clled函数的函数名
    :param rdic: 返回列表，返回的是实参列表相关
    :return:
    '''
    # 获得callend函数的被调用位置pos,被插入的父节点，如何进行插入
    typeloopast = type(loopast)
    if typeloopast == c_ast.For:
        forinit = loopast.init
        funlist = []
        is_have_funcall(funname, forinit, linenum, funlist)
        if len(funlist) > 0:
            print(forinit)
            return

        forcond = loopast.cond
        funlist = []
        is_have_funcall(funname, forcond, linenum, funlist)
        if len(funlist) > 0:
            print(forcond)
            return

        fornext = loopast.next
        funlist = []
        is_have_funcall(funname, fornext, linenum, funlist)
        if len(funlist) > 0:
            print(fornext)
            return

        forstmt = loopast.stmt
        if type(forstmt) == c_ast.Compound:
            pass
        else:
            loopast.stmt = c_ast.Compound(block_items=forstmt)
        newforstmt = loopast.stmt
        for sta in newforstmt.block_items:
            depth = 1
            isincludefuncall1(sta, funname, rdic, depth, linenum, newforstmt.block_items)

    elif typeloopast == c_ast.While or typeloopast==c_ast.DoWhile:
        whstmt = loopast.stmt
        for sta in whstmt.block_items:
            depth = 1
            isincludefuncall1(sta, funname, rdic, depth, linenum, whstmt.block_items)
    elif typeloopast == c_ast.If:
        iftrue =loopast.iftrue
        if iftrue is not None:
            if type(iftrue) == c_ast.Compound:
                pass
            else:
                loopast.iftrue = c_ast.Compound(block_items=[iftrue])
            for sta in loopast.iftrue.block_items:
                depth = 1
                isincludefuncall1(sta, funname, rdic, depth, linenum, loopast.iftrue.block_items)
        else:
            pass
        iffalse = loopast.iffalse
        if iffalse is None:
            pass
        else:
            iffalsetype = type(iffalse)
            if iffalsetype == c_ast.Compound:
                pass
            else:
                loopast.iffalse = c_ast.Compound(block_items=[iffalse])
            for sta in loopast.iffalse.block_items:
                depth=1
                isincludefuncall1(sta, funname, rdic, depth, linenum, loopast.iffalse.block_items)

    elif typeloopast == c_ast.Switch:
        switchstmt = loopast.stmt
        if type(switchstmt) == c_ast.Compound:
            pass
        else:
            loopast.stmt = c_ast.Compound(block_items=[switchstmt])
        newlabelstmt = loopast.stmt
        for sta in newlabelstmt.block_items:
            casestmts=sta.stmts
            casestmts.insert(0,c_ast.EmptyStatement())
            for substa in casestmts:
                depth = 1
                isincludefuncall1(substa, funname, rdic, depth, linenum, casestmts)
    elif typeloopast == c_ast.Label:
        labelstmt=loopast.stmt
        if type(labelstmt) == c_ast.Compound:
            pass
        else:
            loopast.stmt = c_ast.Compound(block_items=[labelstmt])
        newlabelstmt = loopast.stmt
        for sta in newlabelstmt.block_items:
            depth = 1
            isincludefuncall1(sta, funname, rdic, depth, linenum, newlabelstmt.block_items)
    elif typeloopast==c_ast.Compound:
        for sta in loopast.block_items:
            depth = 1
            isincludefuncall1(sta, funname, rdic, depth, linenum, loopast.block_items)



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
            flg=False
            for i in l:
                finddecl(ast, i, slice_global_varible_list, flg)



def modifylocalvarible(ast, funname, fun_global_list):
    """
    在ast上将funname函数进行ssa操作
    :param ast: FileAST(funname所在的文件ast)
    :param funname: string（当前函数的函数名）
    :param fun_global_list:list(每个函数中使用到的全局变量)
    :return:
    """
    for fun in ast.ext:
        if type(fun) == c_ast.FuncDef and fun.decl.name == funname:
            st = fun
            if len(modify_funptr)>0:
                modify_funptr_name(st.body,modify_funptr[0],modify_funptr[1])
                modify_funptr.clear()
            retast = copy.deepcopy(ast)
            get_calledfun_declast_related(funname, retast)
            localval = []
            if GET_SLICE_IN_OUT_INFO or isModSink:
                if funname not in fun_actual_param_map.keys() and st.decl.type.args is not None :
                    actual_param_list=[]
                    for i in st.decl.type.args.params:
                        actual_param_list.append(i)
                    fun_actual_param_map[funname]=actual_param_list
            for s in st:
                modifyid(s, funname, fun_global_list, localval)
            storeFunllDecl(fun, funname)
            deal_return(fun, funname,return_val)
            print("modify ast")
            print(generator.visit(fun))
            break

def get_structRef_idname(stref,streflist):
    """
    stref in a c_ast.StructRef type
    streflist is a list using to store idname
    """
    stname=stref.name
    stfield=stref.field
    if type(stname)==c_ast.StructRef:
        get_structRef_idname(stname,streflist)
        streflist.append(stfield)
    else:
        print(stref)
        streflist.append(stname.name)
        streflist.append(stfield.name)


def get_sink_argname_ast(st,argname_list,argast_list):
    """
    get per arg's isname and arg ast from st
    st is a c_ast.FuncCall
    argname_list:a list using store idname
    argast_list:a list using store arg ast
    """

    arglist=st.args.exprs
    ind=0
    for arg in arglist:
        if ind!=1:
            ind=ind+1
            continue
        # else:
        #     break
            # ind=ind+1
            # continue
        ind=ind+1
        argtype=type(arg)
        if argtype==c_ast.ID:
            idname=arg.name
            if idname=="stdout":
                continue
            argname_list.append(idname)
            sink_varname.append(idname)
        elif argtype==c_ast.StructRef:
            streflist=[]
            get_structRef_idname(arg,streflist)
            argname_list.append(streflist)
            sink_varname.append(streflist)
        elif argtype==c_ast.Cast:
            exprfiled=arg.expr
            if type(exprfiled)==c_ast.StructRef:
                streflist = []
                get_structRef_idname(exprfiled, streflist)
                argname_list.append(streflist)
                sink_varname.append(streflist)
            else:
                print(arg)
                print("without dealed cast type...")
        elif argtype==c_ast.Constant:
            continue
        elif argtype==c_ast.BinaryOp:
            if type(arg.left)==c_ast.Constant and type(arg.right)==c_ast.Constant:
                continue
            else:
                argname_list.append(arg.left.name)
                sink_varname.append(arg.left.name)
                print("without dealed binaryop type")
        elif argtype==c_ast.ArrayRef:
            print(arg)
            argname_list.append(arg.subscript.name)
            sink_varname.append(arg.subscript.name)
            pass
        else:
            print("................")
            print(arg)
            print("withont dealed arg type...!")
        argast_list.append(arg)


def get_sink_mod_FuncCallAst(argast_list):
    funcallsta = c_ast.FuncCall(name=c_ast.ID(name="opsink"),
                                args=c_ast.ExprList(exprs=[]))
    argnamelist=[]
    for arg in argast_list:
        if type(arg)==c_ast.BinaryOp:
            argname=arg.left.name
        else:
            print(arg)
            argname=arg.name
        if argname not in argnamelist:
            argnamelist.append(argname)
        else:
            continue
        funcallsta.args.exprs.append(arg)
    Mod_sinkcall_AST.append(funcallsta)
    return funcallsta

def get_sink_mod_FuncCallAst_fuzz_return(argast_list):
    # funcallsta = c_ast.FuncCall(name=c_ast.ID(name="opsink"),
    #                             args=c_ast.ExprList(exprs=[]))
    # returnast=c_ast.Return(expr=c_ast.ID(name=argast_list[0].name))
    returnast=c_ast.FuncCall(name=c_ast.ID(name='fprintf'),
                             args=c_ast.ExprList(exprs=[c_ast.ID(name='stdout'),
                                                        c_ast.Constant(type='string',value='"_sink_:%s\\n"'),
                                                        c_ast.ID(name=argast_list[0].name)]))
    # argnamelist=[]
    # for arg in argast_list:
    #     argname=arg.name
    #     if argname not in argnamelist:
    #         argnamelist.append(argname)
    #     else:
    #         continue
    #     funcallsta.args.exprs.append(arg)
    # Mod_sinkcall_AST.append(funcallsta)
    return returnast

def find_binaryop_inst(st):
    if type(st)==c_ast.BinaryOp:
        opleft=st.left
        if type(opleft)==c_ast.FuncCall and (opleft.name.name=="fgets" or opleft.name.name=="fgetws"):
            """找到fget的第一个参数"""
            firstarg=opleft.args.exprs[0]
            st.left=firstarg
            return
    else:
        for subst in st:
            find_binaryop_inst(subst)

    pass


def modify_source_ast(parentst,st,inset_num):
    sttype = type(st)
    print(sttype)
    if st.coord is not None:
        linenum = get_int_linenum(str(st.coord))
        print(linenum)
    print("mode source")
    print(source_line_funname [0])
    if st.coord is not None and linenum == source_line_funname[0]:
        sourcestr=generator.visit(st)
        print("sourcestr....")
        print(sourcestr)
        if "getenv" in sourcestr:
            if type(st)==c_ast.Decl:
                param_list.append(st)
            parentst.remove(st)
            return
        elif "fgets(" in sourcestr or "fgetws(" in sourcestr:
            """递归的找到fgets所在的二元操作，并且获取fgets的第一个参数"""
            print("modify fgets")
            find_binaryop_inst(st)

            return
        # if sttype == c_ast.FuncCall:
        #     """获得函数的第一个参数
        #     修改函数调用语句
        #     直接删除赋值语句"""
        #     pass
        else:
            for s in st:
                modify_source_ast(parentst, s, inset_num)
    elif sttype == c_ast.Compound:
        num = 0
        for sta in st.block_items:
            modify_source_ast(st.block_items, sta, num)
            num = num + 1
            # if len(sink_varname) > 0:
            #     return
    elif sttype == c_ast.For or sttype == c_ast.DoWhile or sttype == c_ast.While or sttype == c_ast.Switch:
        stcond = st.cond
        ststmt = st.stmt
        modify_source_ast(stcond, stcond, -1)
        # if len(sink_varname) > 0:
        #     return
        modify_source_ast(ststmt, ststmt, -1)
    elif sttype == c_ast.If:
        iftrue = st.iftrue
        iffalse = st.iffalse
        if iftrue is not None:
            modify_source_ast(iftrue, iftrue, -1)
        # if len(sink_varname) > 0:
        #     return
        if iffalse is not None:
            modify_source_ast(iffalse, iffalse, -1)
    elif sttype == c_ast.Case or sttype == c_ast.Default:
        num = 0
        for ele in st.stmts:
            modify_source_ast(st.stmts, ele, num)
            num = num + 1
            # if len(sink_varname) > 0:
            #     return
    elif sttype == c_ast.Label:
        num = 0
        stmtsta = st.stmt
        if type(st.stmt) != c_ast.Compound:
            commpsta = c_ast.Compound(block_items=[stmtsta])
            st.stmt = commpsta
        for subst in st.stmt.block_items:
            modify_source_ast(st.stmt.block_items, subst, num)
            num=num+1
        # if len(sink_varname) > 0:
        #     return

def get_sink_FuncCallAst_modsink_fuzz(parentst, st,inset_num,argidname_list):
    sttype = type(st)
    print("onece........")
    print(st)
    if st.coord is not None:
        linenum = get_int_linenum(str(st.coord))
    if sttype == c_ast.Compound:
        num=0
        for sta in st.block_items:
            get_sink_FuncCallAst_modsink_fuzz(st.block_items, sta,num,argidname_list)
            num=num+1
            # if len(sink_varname) > 0:
            #     return
    elif sttype == c_ast.For or sttype == c_ast.DoWhile or sttype == c_ast.While or sttype == c_ast.Switch:
        stcond = st.cond
        ststmt = st.stmt
        get_sink_FuncCallAst_modsink_fuzz( stcond,stcond,-1,argidname_list)
        # if len(sink_varname) > 0:
        #     return
        get_sink_FuncCallAst_modsink_fuzz(ststmt,ststmt,-1,argidname_list)
    elif sttype == c_ast.If:
        iftrue = st.iftrue
        iffalse = st.iffalse
        if iftrue is not None:
            print("iftrue.....")
            get_sink_FuncCallAst_modsink_fuzz(iftrue,iftrue,-1,argidname_list)
        # if len(sink_varname) > 0:
        #     return
        if iffalse is not None:
            print("nnnnnnnntest")
            print(iffalse)
            get_sink_FuncCallAst_modsink_fuzz(iffalse,iffalse,-1,argidname_list)
    elif sttype == c_ast.Case or sttype == c_ast.Default:
        num=0
        for ele in st.stmts:
            get_sink_FuncCallAst_modsink_fuzz(st.stmts,ele,num,argidname_list)
            num=num+1
            # if len(sink_varname) > 0:
            #     return
    elif sttype==c_ast.Label:
        num=0
        stmtsta=st.stmt
        if type(st.stmt)!=c_ast.Compound:
            commpsta=c_ast.Compound(block_items=[stmtsta])
            st.stmt=commpsta
        get_sink_FuncCallAst_modsink_fuzz(st.stmt.block_items, st.stmt.block_items[0], num,argidname_list)
        # if len(sink_varname) > 0:
        #     return

    elif st.coord is not None and linenum == sink_line_funname[0]:
        print("find tartget...")
        print(st)
        if sttype==c_ast.FuncCall:
            argast_list=[]
            get_sink_argname_ast(st,argidname_list,argast_list)
            funcallast=get_sink_mod_FuncCallAst_fuzz_return(argast_list)
            funcallast.coord=st.coord
            if inset_num==-1:
                print("aaaaa")
                parentst=funcallast
            else:
                print("bbbb")
                parentst[inset_num]=funcallast
            return
        else:
            for s in st:
                get_sink_FuncCallAst_modsink_fuzz(parentst,s,inset_num,argidname_list)


def get_sink_FuncCallAst_modsink(parentst, st,argidname_list,inset_num):
    sttype = type(st)
    if st.coord is not None:
        linenum = get_int_linenum(str(st.coord))
        print("mod line")
        print(linenum)
        print(sink_line_funname[0])
    if st.coord is not None and linenum == sink_line_funname[0]:
        print(sttype)
        print(st)
        argast_list = []
        if sttype==c_ast.FuncCall:
            get_sink_argname_ast(st,argidname_list,argast_list)
            funcallast=get_sink_mod_FuncCallAst(argast_list)
            print("insert opsink..")
            print(parentst)
            print(".....")
            print(funcallast)
            print(generator.visit(funcallast))
            print(inset_num)
            if inset_num==-1:
                parentst=funcallast
            else:
                parentst[inset_num]=funcallast
            return
        elif sttype ==c_ast.Assignment and type(st.lvalue)==c_ast.ArrayRef:
            print("mod assignment sink")
            argidname_list.append(st.lvalue.subscript.name)
            argast_list.append(st.lvalue.subscript)
            funcallast = get_sink_mod_FuncCallAst(argast_list)
            if inset_num==-1:
                parentst=funcallast
            else:
                parentst[inset_num]=funcallast
        elif sttype==c_ast.For and type(st.cond)==c_ast.BinaryOp:
            argidname_list.append(st.cond.right.name)
            argast_list.append(st.cond.right)
            funcallast = get_sink_mod_FuncCallAst(argast_list)
            if inset_num==-1:
                parentst=funcallast
            else:
                parentst[inset_num]=funcallast
        else:
            for s in st:
                get_sink_FuncCallAst_modsink(parentst,s,argidname_list,inset_num)

    elif sttype == c_ast.Compound:
        num=0
        for sta in st.block_items:
            get_sink_FuncCallAst_modsink(st.block_items, sta,argidname_list,num)
            num=num+1
            if len(sink_varname) > 0:
                return
    elif sttype == c_ast.For or sttype == c_ast.DoWhile or sttype == c_ast.While or sttype == c_ast.Switch:
        stcond = st.cond
        ststmt = st.stmt
        get_sink_FuncCallAst_modsink( stcond,stcond,argidname_list,-1)
        if len(sink_varname) > 0:
            return
        get_sink_FuncCallAst_modsink(ststmt,ststmt,argidname_list,-1)
    elif sttype == c_ast.If:
        iftrue = st.iftrue
        iffalse = st.iffalse
        if iftrue is not None:
            get_sink_FuncCallAst_modsink(iftrue,iftrue,argidname_list,-1)
        if len(sink_varname) > 0:
            return
        if iffalse is not None:
            get_sink_FuncCallAst_modsink(iffalse,iffalse,argidname_list,-1)
    elif sttype == c_ast.Case or sttype == c_ast.Default:
        num=0
        for ele in st.stmts:
            get_sink_FuncCallAst_modsink(st.stmts,ele,argidname_list,num)
            num=num+1
            if len(sink_varname) > 0:
                return
    elif sttype==c_ast.Label:
        num=0
        stmtsta=st.stmt
        if type(st.stmt)!=c_ast.Compound:
            commpsta=c_ast.Compound(block_items=[stmtsta])
            st.stmt=commpsta
        for sta in st.stmt.block_items:
            get_sink_FuncCallAst_modsink(st.stmt.block_items, sta, argidname_list, num)
            num=num+1
            if len(sink_varname) > 0:
                return





def get_int_linenum(stcoord):
    index1 = stcoord.index(":")
    rindex1 = stcoord.rindex(":")
    templine = int(stcoord[index1 + 1:rindex1])
    return templine

def get_sink_vardecl_ast(st):
    sttype=type(st)
    if st.coord is not  None:
        linenum=get_int_linenum(str(st.coord))
    if sttype==c_ast.Compound:
        for sta in st.block_items:
            get_sink_vardecl_ast(sta)
            if len(sink_varname)>0:
                return
    elif sttype==c_ast.For or sttype==c_ast.DoWhile or sttype==c_ast.While or sttype==c_ast.Switch:
        stcond=st.cond
        ststmt=st.stmt
        get_sink_vardecl_ast(stcond)
        if len(sink_varname)>0:
            return
        get_sink_vardecl_ast(ststmt)
    elif sttype==c_ast.If:
        iftrue=st.iftrue
        iffalse=st.iffalse
        if iftrue is not None:
            get_sink_vardecl_ast(iftrue)
        if len(sink_varname)>0:
            return
        if iffalse is not None:
            get_sink_vardecl_ast(iffalse)
    elif sttype==c_ast.Case or sttype==c_ast.Default:
        for ele in st.stmts:
            get_sink_vardecl_ast(ele)
            if len(sink_varname)>0:
                return
    elif sttype==c_ast.Break:
        for sta in st:
            get_sink_vardecl_ast(sta)
            if len(sink_varname)>0:
                return
    elif sttype==c_ast.Label:
        get_sink_vardecl_ast((st.stmt))
        if len(sink_varname)>0:
            return
    elif st.coord is not None and linenum==sink_line_funname[0]:
        decl_list=[]
        findid(st,sink_varname,decl_list)
        return


def finddecl_infileast(tempast, va, sink_vardecl_ast, flg):
    for sta in tempast.ext:
        if type(sta)==c_ast.Decl and sta.name==va:
            flg=True
            sink_vardecl_ast.append(sta)
            break
    pass


def find_var_typename(param,typename):
    if type(param)!=c_ast.IdentifierType:
        find_var_typename(param.type,typename)
    else:
        if len(typename)==0:
            typename.append(param.names[0])
        else:
            typename[0]=param.names[0]
    pass

def modify_sink_fuzz(fun):
    num = 0
    argidname_list = []
    for st in fun.body.block_items:
        get_sink_FuncCallAst_modsink_fuzz(fun.body.block_items, st, num,argidname_list)
        num = num + 1
    print("mode+after")
    print(fun)

def get_sink_arg_typeinfo(fun,tempast):
    argidname_list = []
    num=0
    for st in fun.body.block_items:
        get_sink_FuncCallAst_modsink(fun.body.block_items, st, argidname_list,num)
        num=num+1
    # print(fun)
    print("sink varname")
    print(argidname_list)
    for ele in argidname_list:
        if type(ele) == list:
            decl_ast_list = []
            finddecl(fun.decl, ele[0], decl_ast_list, False)
            if len(decl_ast_list) == 0:
                finddecl(fun.body, ele[0], decl_ast_list, False)
            if len(decl_ast_list) == 0:
                finddecl_infileast(tempast, ele[0], decl_ast_list, False)
            typename = []
            find_var_typename(decl_ast_list[0], typename)
            print(decl_ast_list)
            print(ele)
            print(typename)
            # exit(1)
            typeast = []
            del ele[0]
            while len(ele) > 0:
                # get ele[0]'s typename
                for sta in tempast.ext:
                    # print(sta)
                    if type(sta) == c_ast.Decl and type(sta.type) == c_ast.Struct and sta.type.name == typename[0]:
                        for decl in sta.type.decls:
                            declname = decl.name
                            if declname == ele[0]:
                                find_var_typename(decl, typename)
                                if len(typeast) == 0:
                                    typeast.append(decl)
                                else:
                                    typeast[0] = decl
                                del ele[0]
                                break
                    elif type(sta) == c_ast.Typedef and sta.name == typename[0]:
                        # print(typename)
                        if sta.type.type.decls == None:
                            struname = sta.type.type.name
                            for st in tempast.ext:
                                if type(st) == c_ast.Decl and type(
                                        st.type) == c_ast.Struct and st.type.name == struname:
                                    for decl in st.type.decls:
                                        declname = decl.name
                                        if declname == ele[0]:
                                            find_var_typename(decl, typename)
                                            if len(typeast) == 0:
                                                typeast.append(decl)
                                            else:
                                                typeast[0] = decl
                                            del ele[0]
                                            break
            if typeast[0] not in SINK_TYPE_INFO_AST:
                SINK_TYPE_INFO_AST.append(typeast[0].type)
                sink_vardecl_ast.append((typeast[0]))
        else:
            decl_ast_list = []
            print(ele)
            print(sink_line_funname[1])
            print(fun)
            if ele=='stdout':
                continue
            finddecl(fun.decl, ele, decl_ast_list, False)
            if len(decl_ast_list) == 0:
                finddecl(fun.body, ele, decl_ast_list, False)
            if len(decl_ast_list) == 0:
                finddecl(param_list, ele, decl_ast_list, False)
            if len(decl_ast_list) == 0:
                finddecl_infileast(tempast, ele, decl_ast_list, False)

            if decl_ast_list[0].type not in SINK_TYPE_INFO_AST:
                SINK_TYPE_INFO_AST.append(decl_ast_list[0].type)
                print("lllast")
                print(decl_ast_list[0].type)
                sink_vardecl_ast.append(decl_ast_list[0])

def create_funptr_forsink():
    funptrast = c_ast.Decl(name="opsink",
                           type=c_ast.PtrDecl(type=c_ast.FuncDecl(args=c_ast.ParamList(params=[]),
                                                                  type=c_ast.TypeDecl(declname="opsink",
                                                                                      quals=[],
                                                                                      type=c_ast.IdentifierType(
                                                                                          names=["void"]))),
                                              quals=[]),
                           quals=[],
                           storage=[],
                           funcspec=[],
                           bitsize=None,
                           init=None
                           )
    for arg in SINK_TYPE_INFO_AST:
        print(arg)
        tempast=c_ast.Typename(name=None,
                       quals=[],
                       type=arg)
        funptrast.type.type.args.params.append(tempast)
    return funptrast

def delete_decl_init(decllist):
    for de in decllist:
        if type(de)==c_ast.Decl:
            de.init=None


def get_called_declast(nextfunname,fun,calledlinenum,tempast):
    funlist = []
    is_have_funcall(nextfunname, fun.body, calledlinenum, funlist)
    if len(funlist) > 0:
        print("ddedd")
        if nextfunname not in fun_decl_dic.keys():
            fun_decl_dic[nextfunname] = []
            funcall = funlist[1]
            print(funcall)
            rdic = []
            get_actual_parm(funcall, rdic)
            print(rdic)
            find_va_decl(rdic, fun, fun_decl_dic[nextfunname], tempast)
            print("bofor modify")
            print(fun_decl_dic[nextfunname])
            modifyid(fun_decl_dic[nextfunname],nextfunname,[],[])
            delete_decl_init(fun_decl_dic[nextfunname])
            print("after modify")
            print(fun_decl_dic[nextfunname])

def get_prefun_declast(part,fun,tempast):
    print("prefunname")
    prefunname = getfunname(final_list[part[0] - 1])
    print(prefunname)
    templist = []
    get_bb_linenum(final_list[part[0]:part[1] + 1], prefunname, templist, blocknamelist)
    if len(templist) > 0:
        calledlinenum = templist[0]
        get_called_declast(prefunname, fun, calledlinenum, tempast)

def get_nextfun_declast(part,fun,tempast):
    nextfunname = getfunname(final_list[part[1] + 1])
    print("nextfunnname")
    print(nextfunname)
    templist = []
    get_bb_linenum(final_list[part[0]:part[1] + 1], nextfunname, templist, blocknamelist)
    if len(templist) > 0:
        calledlinenum = templist[0]
        print(calledlinenum)
        get_called_declast(nextfunname, fun, calledlinenum, tempast)

def get_calledfun_declast_related(funname,tempast):
    split_list=[]
    split_path_pos(blocknamelist,split_list)
    print("get_calledfun_declast ....")
    print(funname)
    maincall=get_maincall_funname(final_list)
    for fun in tempast.ext:
        if type(fun) == c_ast.FuncDef and fun.decl.name == funname:
            for part in split_list:
                curfunname = getfunname(final_list[part[0]])
                if funname == curfunname:
                    if funname == maincall:
                        if len(split_list)==1:
                            break
                        if part == split_list[0]:
                            get_nextfun_declast(part,fun,tempast)
                        elif part == split_list[-1]:
                            get_prefun_declast(part, fun, tempast)
                        else:
                            get_nextfun_declast(part,fun,tempast)
                            get_prefun_declast(part,fun,tempast)
                        break
                    else:
                        endelename = final_list[part[1]].get_name()
                        if endelename.endswith("_end"):
                            if part == split_list[0]:
                                break
                            else:
                                get_prefun_declast(part,fun,tempast)
                                break
                        elif endelename.endswith("_start"):
                            get_nextfun_declast(part,fun,tempast)
                            break
            break
    print(fun_decl_dic)


def modify_source(fun):
    num = 0
    for st in fun.body.block_items:
        modify_source_ast(fun.body.block_items, st, num)
        num = num + 1


def find_binaryop__min_inst(st, decllist):
    if type(st) == c_ast.BinaryOp:
        opleft = st.left
        if type(opleft) == c_ast.FuncCall and (opleft.name.name == "fgets" or opleft.name.name=="fgetws"):
            """找到fget的第一个参数"""
            firstarg = opleft.args.exprs[0]
            st.left = firstarg
            findid(firstarg,decllist,[])
            return
    else:
        for subst in st:
            find_binaryop__min_inst(subst,decllist)

def find_recv_assign(st,decllist):
    if type(st)==c_ast.Assignment:
        oprvave=st.rvalue
        if type(oprvave)==c_ast.FuncCall and oprvave.name.name=="recv":
            secondarg=oprvave.args.exprs[1]
            if type(secondarg)==c_ast.Cast and type(secondarg.expr)==c_ast.BinaryOp:
                decllist.append(secondarg.expr.left.name)
            else:
                findid(secondarg,decllist,[])
            oprvave.name.name="strlen"
            oprvave.args.exprs=[secondarg]

    pass

def extract_local_decl_delete_data_pendece(fun, srcline, decllist):
    print("extract locall...")
    print(decllist)

    for st in fun:
        sttype = type(st)
        if st.coord is not None:
            linenum = get_int_linenum(str(st.coord))
        if st.coord is not None and linenum < srcline:
            if sttype==c_ast.Decl:
                if st.name in decllist:
                    param_list.append(st)
                    print(st)
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        if type(st.type)==c_ast.PtrDecl:
                            collect_source_data(st,srcline)
                    fun.remove(st)
                    extract_local_decl_delete_data_pendece(fun,srcline,decllist)
                    break
            elif sttype==c_ast.Assignment:
                print("assignment value")
                print(st)
                if type(st.lvalue)==c_ast.UnaryOp:
                    assignname=st.lvalue.expr.name
                else:
                    assignname=st.lvalue.name
                if assignname in decllist:
                    fun.remove(st)
                    extract_local_decl_delete_data_pendece(fun, srcline, decllist)
                    break
            elif sttype == c_ast.Compound:
                extract_local_decl_delete_data_pendece(st.block_items, srcline, decllist)

            elif sttype == c_ast.For or sttype == c_ast.DoWhile or sttype == c_ast.While or sttype == c_ast.Switch:
                ststmt = st.stmt
                if type(ststmt)!=c_ast.Compound:
                    st.stmt=c_ast.Compound(block_items=[ststmt])
                extract_local_decl_delete_data_pendece(st.stmt.block_items, srcline,decllist)
            elif sttype == c_ast.If:
                print("ifcondition")
                iftrue = st.iftrue
                iffalse = st.iffalse
                if iftrue is not None:
                    if type(iftrue)!=c_ast.Compound:
                        st.iftrue=c_ast.Compound(block_items=[iftrue])
                    extract_local_decl_delete_data_pendece(st.iftrue.block_items,srcline,decllist)
                if iffalse is not None:
                    if type(iffalse)!=c_ast.Compound:
                        st.iffalse=c_ast.Compound(block_items=[iffalse])
                    extract_local_decl_delete_data_pendece(st.iffalse.block_items, srcline,decllist)
            elif sttype == c_ast.Case or sttype == c_ast.Default:
                extract_local_decl_delete_data_pendece(st.stmts, srcline,decllist)
            elif sttype == c_ast.Label:
                stmtsta = st.stmt
                if type(st.stmt) != c_ast.Compound:
                    commpsta = c_ast.Compound(block_items=[stmtsta])
                    st.stmt = commpsta

                extract_local_decl_delete_data_pendece(st.stmt.block_items,srcline,decllist)
        elif st.coord is not None and linenum>=srcline:
            print("large...")
            break

def modify_min_source_ast_help(srcline,decllist,fun):
    extract_local_decl_delete_data_pendece(fun.body.block_items, srcline, decllist)
    flag = False
    for ele in temp_in_var_list:
        if str(srcline) in ele:
            flag = True
    if flag:
        pass
    else:
        for ele in param_list:
            if ele.name == decllist[0]:
                collect_source_data(ele, srcline)
                flag = True
    if flag:
        pass
    else:
        decl_ast = []
        finddecl(fun.decl, decllist[0], decl_ast, flag)
        print("参数")
        print(decl_ast)
        if len(decl_ast) > 0:
            collect_source_data(decl_ast[0], srcline)


def modify_min_source_ast(parentst, st, inset_num, srcline,fun,incnum):
    if st is None:
        return
    sttype = type(st)
    print(sttype)
    if st.coord is not None:
        linenum = get_int_linenum(str(st.coord))
        print(linenum)
    print("mode min source")
    print(srcline)
    if st.coord is not None and linenum == srcline:
        sourcestr = generator.visit(st)
        print(st)
        print("sourcestr....")
        print(sourcestr)
        decllist=[]
        if type(st)==c_ast.If:
            sourcestr=generator.visit(st.cond)
        if "getenv" in sourcestr:
            if type(st) == c_ast.Decl:
                param_list.append(st)
                if GET_SLICE_IN_OUT_INFO or isModSink:
                    if type(st.type)==c_ast.PtrDecl:
                        collect_source_data(st,srcline)
            parentst.remove(st)
            decllist.append(st.name)
            # extract_local_decl_delete_data_pendece(fun.body.block_items, srcline, decllist)
            """如果是badsource to sink的形式，则采用基本的最大compound，否则采用此函数的入口compound"""
            if(judge_ishaveend()):
                pass
            else:
                find_loop_if_in_env(fun.body,fun.decl.name)
            modify_min_source_ast_help(srcline,decllist,fun)
            return
        elif "fgets(" in sourcestr or "fgetws" in sourcestr:
            """递归的找到fgets所在的二元操作，并且获取fgets的第一个参数"""
            print("modify fgets")
            find_binaryop__min_inst(st,decllist)
            # extract_local_decl_delete_data_pendece(fun.body.block_items,srcline,decllist)
            modify_min_source_ast_help(srcline,decllist,fun)
            return
        elif "recv(" in sourcestr:
            find_recv_assign(st,decllist)
            modify_min_source_ast_help(srcline, decllist, fun)
            pass
        elif "fscanf(" in sourcestr:
            if type(st)==c_ast.FuncCall and type(st.args.exprs[-1])==c_ast.UnaryOp:
                print("find fscanf")
                decllist.append(st.args.exprs[-1].expr.name)
                # findid(st.args.exprs[1], decllist, [])
                print(decllist)
                parentst.remove(st)
                modify_min_source_ast_help(srcline, decllist, fun)
        elif "globalReturnsTrueOrFalse" in sourcestr:
            print("modify globalReturnsTrueOrFalse")
            decllist = []
            declst=c_ast.Decl(name="_bool_flag_"+str(incnum),quals=[],storage=[],funcspec=[],
                              type=c_ast.TypeDecl(declname="_bool_flag_"+str(incnum),quals=[],type=c_ast.IdentifierType(names=['int'])),init=None,bitsize=None)
            if type(st)==c_ast.If:
                st.cond=c_ast.ID(name="_bool_flag_"+str(incnum),coord=st.cond.coord)
            print(st.show(showcoord=st.coord))
            if declst not in param_list:
                param_list.append(declst)
            # find_binaryop__min_inst(st, decllist)
            # extract_local_decl_delete_data_pendece(fun.body.block_items, srcline, decllist)
        # if sttype == c_ast.FuncCall:
        #     """获得函数的第一个参数
        #     修改函数调用语句
        #     直接删除赋值语句"""
        #     pass
        else:
            for s in st:
                modify_min_source_ast(parentst, s, inset_num,srcline,fun,incnum)
    elif sttype == c_ast.Compound:
        num = 0
        for sta in st.block_items:
            modify_min_source_ast(st.block_items, sta, num,srcline,fun,incnum)
            num = num + 1

    elif sttype == c_ast.For or sttype == c_ast.DoWhile or sttype == c_ast.While or sttype == c_ast.Switch:
        stcond = st.cond
        ststmt = st.stmt
        modify_min_source_ast(stcond, stcond, -1,srcline,fun,incnum)

        modify_min_source_ast(ststmt, ststmt, -1,srcline,fun,incnum)
    elif sttype == c_ast.If:
        iftrue = st.iftrue
        iffalse = st.iffalse
        if iftrue is not None:
            modify_min_source_ast(iftrue, iftrue, -1,srcline,fun,incnum)

        if iffalse is not None:
            modify_min_source_ast(iffalse, iffalse, -1,srcline,fun,incnum)
    elif sttype == c_ast.Case or sttype == c_ast.Default:
        num = 0
        for ele in st.stmts:
            modify_min_source_ast(st.stmts, ele, num,srcline,fun,incnum)
            num = num + 1

    elif sttype == c_ast.Label:
        num = 0
        stmtsta = st.stmt
        if type(st.stmt) != c_ast.Compound:
            commpsta = c_ast.Compound(block_items=[stmtsta])
            st.stmt = commpsta
        for subst in st.stmt.block_items:
            modify_min_source_ast(st.stmt.block_items, subst, num,srcline,fun,incnum)
            num = num + 1



def modify_mid_source(fun, srcline,incnum):
    num = 0
    for st in fun.body.block_items:
        modify_min_source_ast(fun.body.block_items, st, num,srcline,fun,incnum)
        num = num + 1
    pass


# def parse_to_ast(ele):
#     """
#     根据ele中的文件路径信息，获得对应文件的ast
#     :param ele: 基本块（基本块中包含行号等信息）
#     :return:
#     """
#     print("parse to ast")
#     # for i in final_list:
#     #     print(i.get_name())
#     funname = getfunname(ele)
#     print(ele)
#     startline = get_first_lineinfo(ele)  # 取第一行
#     rindex = startline.rfind(":")
#     rslash = startline.rfind("/")
#     filename = startline[rslash + 1:rindex] #相对路径filename
#     print("filename:"+filename)
#     pathname1 = startline[:rindex]#绝对路径filename
#     fpath = startline[:rslash]
#     fake_include = "../../utils/fake_libc_include"
#     abs_fake_include = os.path.abspath(fake_include)
#     if filename in dir_ast.keys():
#         tempast = dir_ast[filename]
#         if funname in Ismodifyloclavarible:
#             if funname in global_return_decl.keys():
#                 return_val.append(global_return_decl[funname])
#             pass
#         else:
#             fun_global_list = global_dic[funname]
#             # find_fun_loop_if(tempast, funname)
#             # get_calledfun_declast_related(funname, tempast)
#             modifylocalvarible(tempast, funname, fun_global_list)
#             Ismodifyloclavarible.append(funname)
#     else:
#         command1 = "cd " + fpath + ";gcc -E -DINCLUDEMAIN " + pathname1 + " "+sys.argv[3]+" -I" + abs_fake_include + " "+sys.argv[4]+" >fun1"
#         print(command1)
#
#         (status, output) = subprocess.getstatusoutput(command1)
#         # if status == 0:
#
#         print(fpath + '/fun1')
#         tempast = parse_file(fpath + '/fun1', use_cpp=True)
#
#         """
#         获取ele所在的c文件名
#         判断此文件是否是路径中的最后一个c文件名
#         调用entry_createxml()
#         """
#         # if is_gen_xml:
#         #     entry_createxml(tempast, False, None)
#         # print(tempast)
#         deal_global_variable(tempast)
#         # 对两个函数进行ssa修改
#         fun2_global_list = global_dic[funname]
#         # find_fun_loop_if(tempast, funname)
#         # get_calledfun_declast_related(funname, tempast)
#         if "goodB2G2" in global_dic.keys():
#             goodb2g1list=global_dic['goodB2G1']
#             goodb2g2list=global_dic['goodB2G2']
#             modifylocalvarible(tempast, 'goodB2G1', goodb2g1list)
#             modifylocalvarible(tempast, 'goodB2G2', goodb2g2list)
#             Ismodifyloclavarible.append('goodB2G1')
#             Ismodifyloclavarible.append('goodB2G2')
#         if funname=="goodB2G1" or funname=="goodB2G2":
#             pass
#         else:
#             modifylocalvarible(tempast, funname, fun2_global_list)
#
#         Ismodifyloclavarible.append(funname)
#         dir_ast[filename] = tempast
#         os.remove(fpath + '/fun1')
#     if is_gen_xml:
#         if filename in genxml_dealed_file:
#             pass
#         else:
#             entry_createxml(tempast, False, None)
#             genxml_dealed_file.append(filename)
#
#     print("tempffff")
#     print(isModSink)
#     print(funname==sink_line_funname[1])
#     print(len(sink_vardecl_ast)==0)
#     print(funname)
#     print(sink_line_funname[1])
#     print(isModSink and funname == sink_line_funname[1] and len(sink_vardecl_ast) == 0)
#
#     # if isModSink and funname==source_line_funname[1]:
#     #     for fun in tempast.ext:
#     #         if type(fun)==c_ast.FuncDef and fun.decl.name == source_line_funname[1]:
#     #             print(fun)
#     #             modify_source(fun)
#     if isModSink or GET_SLICE_IN_OUT_INFO:
#         """获取每一个函数body跨越的行号，判断sourcelise中的行号是否在这个范围内，如果在，则在这个函数的ast找那个查找source函数并进行抽象，将这一行中涉及到的函数的声明变量
#         提取到函数的参数布局中
#         1.获得funname所在函数的行号范围"""
#         for fun in tempast.ext:
#             if type(fun)==c_ast.FuncDef and fun.decl.name == funname:
#                 print("new modify source")
#                 startline = int(str(fun.body.coord).split(":")[1])
#                 last_num = -1
#                 line_list = []
#                 print(fun.body.block_items[-2])
#                 get_last_linenum(fun, last_num, line_list)
#                 lastline = line_list[0]
#                 """判断文件名和行号是否与当前文件名和行号匹配"""
#                 print("sourcelisnt loc")
#                 incnum = 1
#                 for src in sourcelist:
#                     srclist=src.split(":")
#                     cfilename=srclist[0]
#                     srcline=int(srclist[1])
#
#
#                     if cfilename==filename and srcline in list(range(startline,lastline)):
#                         modify_mid_source(fun,srcline,incnum)
#                         incnum=incnum+1
#
#             if funname=="goodB2G1" or funname=="goodB2G2":
#                 pass
#             elif len(goodb2g1)>0 and len(goodb2g2)>0:
#                 pass
#             elif type(fun)==c_ast.FuncDef and (fun.decl.name == "goodB2G1" or fun.decl.name=="goodB2G2"):
#                 startline = int(str(fun.body.coord).split(":")[1])
#                 last_num = -1
#                 line_list = []
#                 get_last_linenum(fun, last_num, line_list)
#                 lastline = line_list[0]
#                 incnum = 1
#                 for src in sourcelist:
#                     srclist = src.split(":")
#                     cfilename = srclist[0]
#                     srcline = int(srclist[1])
#
#                     if cfilename == filename and srcline in list(range(startline, lastline)):
#                         modify_mid_source(fun, srcline, incnum)
#                         incnum = incnum + 1
#                 if fun.decl.name=="goodB2G1":
#                     goodb2g1.append(fun.body)
#                 else:
#                     goodb2g2.append(fun.body)
#
#         pass
#
#
#
#     if (GET_SLICE_IN_OUT_INFO or isModSink) and funname==sink_line_funname[1] and len(sink_vardecl_ast)==0:
#         for fun in tempast.ext:
#             if type(fun) == c_ast.FuncDef and fun.decl.name == sink_line_funname[1]:
#                 # if isModSink:
#                 # get_sink_vardecl_ast(fun.body)  # find varname in sink call,then get var ast according to varname
#                 # print("findvarname")
#                 # print(sink_varname)
#                 # print(fun)
#                 # for va in sink_varname:
#                 #     flg = False
#                 #     finddecl(fun.decl, va, sink_vardecl_ast, flg)
#                 #     if flg == False:
#                 #         finddecl(fun.body, va, sink_vardecl_ast, flg)
#                 #     if flg == False:
#                 #         finddecl_infileast(tempast, va, sink_vardecl_ast, flg)
#                 #     if flg == False:
#                 #         for pa in param_list:
#                 #             if pa.name == va:
#                 #                 sink_vardecl_ast.append(pa)
#                 #                 break
#                 print(fun)
#                 get_sink_arg_typeinfo(fun,tempast)
#                 print("mode arg after")
#                 print(fun)
#                 # else:
#                 print("fffffffffffffffffffffff.........")
#
#
#                 print("findsinkast")
#                 print(sink_vardecl_ast)
#                 # modify_sink_fuzz(fun)
#                 break
#
#     find_fun_loop_if(tempast, funname)
#     retast = copy.deepcopy(tempast)
#     return retast


def notloop_move(linenum, next_ast, ele, re_po_flag,  dfa_srcvarname, is_srcpart, dfa_srcline,dfa_filelist_c,dfa_functionlist):
    """
    不是loop类型的移动，将所有called函数内联到主调函数中相应的位置
    :param linenum: called函数在主调函数中的行号
    :param next_ast: 对应于主调函数的ast
    :param ele: called函数中的一个基本块节点
    :dfa_srcvarname:list(use to store src's varname)
    :is_srcpart:bool(use to judge whether block belong to srcpart(oppsite is sinkpart))
    :dfa_srcline:int (represent the linenume that src in)
    :return:
    """
    tempast = parse_to_ast(ele)
    funname = getfunname(ele)
    for ext1 in tempast.ext:
        if type(ext1) == c_ast.FuncDef and ext1.decl.name == funname:
            next_ast1 = ext1.body.block_items
            if is_gen_xml and is_srcpart:
                print("reverse loop get dfa_srcname....")
                memcpy_ast_list=[]
                get_src_ast(dfa_srcline, ext1.body,memcpy_ast_list)
                memcpy_ast =memcpy_ast_list[0]
                get_srcvarname(memcpy_ast, dfa_srcvarname)
                temp_c_file = get_c_filename(ele)
                curfunname = getfunname(ele)
                if temp_c_file not in dfa_filelist_c:
                    dfa_filelist_c.append(temp_c_file)
                dfa_functionlist.append(curfunname)
            if next_ast is None:
                return
            for i in next_ast:
                rdic = []
                depth = 1
                isincludefuncall1(i, funname, rdic, depth, linenum, next_ast)
                print("鸟而")
                if len(rdic) > 0:
                    print("niiii")
                    compundst = re_move_code(rdic, funname, next_ast1, re_po_flag)
                    return compundst


def parse_indcall_xml():
    indcall_dict = {}
    ind_call_xml = "../../meta_data/ind_call.xml"
    indcall_doc = parse(ind_call_xml)
    indcall_root = indcall_doc.documentElement
    ind_locs = indcall_root.getElementsByTagName("ind_loc")
    for ind_loc in ind_locs:
        ind_loc_info = ind_loc.getAttribute("info")
        ind_callees = ind_loc.getElementsByTagName("ind_callee")
        callee_funnames = []
        for ind_callee in ind_callees:
            callee_funname = ind_callee.getAttribute("funname")
            callee_funnames.append(callee_funname)
        indcall_dict[ind_loc_info] = callee_funnames
    return indcall_dict



def get_bb_last_num(bbnode, funname):
    """
    :param bbnode: 一个基本块
    :param funname: called函数
    :return: clled函数所在的行号
    """
    bblabel = bbnode.get("label")[2:-2]
    bblabel_list = bblabel.split("\n")
    bblabel_linenum = 0
    callinst = bblabel_list[-2]
    lineinfo = bblabel_list[-3]
    print(callinst)
    print(lineinfo)
    if 'call ' in callinst:
        if "@" in callinst:
            start_num = callinst.index("@")
            endlinesplit = callinst[start_num + 1:]
            if "(" not in endlinesplit:
                calledfunname=""
            else:
                end_num = endlinesplit.index("(")
                calledfunname = endlinesplit[:end_num]
        else:
            calledfunname=""
        infoind=lineinfo.index("/home")
        lineinfo=lineinfo[infoind:]
        ind = lineinfo.index(":")
        indcall_dict=parse_indcall_xml()
        if lineinfo[:-2] in indcall_dict.keys():
            bblabel_linenum = int(lineinfo[ind + 1:-2])
        if calledfunname=="" and funname in callinst:
            bblabel_linenum = int(lineinfo[ind + 1:-2])
        elif funname == calledfunname:
            bblabel_linenum = int(lineinfo[ind + 1:-2])
    return bblabel_linenum


def split_path_start( split_pathlist):
    """
    将路径列表拆分成倒序和正序，以_end为标识
    :param blocknamelist: 基本块名字列表
    :param split_pathlist: 包含倒序的子区间
    :return:
    """
    newblocknamelist = []
    for bb in blocknamelist:
        newblocknamelist.append(bb)
    end = len(blocknamelist) - 1
    start = end
    newblocknamelist.reverse()
    for p in newblocknamelist:
        if p.endswith("_start"):
            templist = [start + 1, end]
            split_pathlist.append(templist)
            end = start
            start = start - 1
        elif p.endswith("_end"):
            templist = [start + 1, end]
            split_pathlist.append(templist)
            break
        else:
            start = start - 1
    split_pathlist.reverse()


def split_path_end(blocknamelist, split_pathlist):
    """
    将路径列表拆分成倒序和正序，以_end为标识
    :param blocknamelist: 基本块名字列表
    :param split_pathlist: 包含倒序的子区间
    :return:
    """
    start = 0
    end = start
    for p in blocknamelist:
        if p.endswith("_end"):
            templist = [start, end]
            split_pathlist.append(templist)
            end = end + 1
            start = end
        elif p.endswith("_start"):
            templist = [start, end]
            split_pathlist.append(templist)
            break
        elif p==blocknamelist[-1]:
            templist = [start, end]
            split_pathlist.append(templist)
        else:
            end = end + 1


def deal_recur(list3, prefunname,   dfa_srcline, dfa_srcvarname):
    firstele = list3[0]
    firsfunname = getfunname(firstele)
    if firsfunname != prefunname:
        print("recur continue....")
        for ele in list3:
            print(ele.get_name())
    else:
        tempast = parse_to_ast(firstele)
        funname = getfunname(firstele)
        for ext1 in tempast.ext:
            if type(ext1) == c_ast.FuncDef and ext1.decl.name == funname:
                funast = copy.deepcopy(ext1)
                if funast.decl.type.args is not None:
                    for i in funast.decl.type.args.params:
                        param_list.append(i)

                """
                在funbody中找到dfa_srcline且memcpy
                得到memcpyast
                传递memcpyast获得varname
                """
                if is_gen_xml:
                    memcpy_ast_list = []
                    get_src_ast(dfa_srcline, funast.body, memcpy_ast_list)
                    memcpy_ast = memcpy_ast_list[0]
                    print("recur get dfa_srcname...")
                    get_srcvarname(memcpy_ast, dfa_srcvarname)

                return funast.body


def loop_move_part_positive_order(partlist, pathlist, callerast, re_po_flag):
    """
    将整个路径分成end部分与start部分，此函数顺序移动，，处理的是start部分，将所有被调用函数移动到loop中
    :param partlist: 正序部分的块名字的list（start部分）
    :param pathlist: 路径，包含所有基本块
    :param callerast:
    :return:
    """
    blocknamelist = []
    for i in pathlist:
        bbname = i.get_name()
        blocknamelist.append(bbname)
    part = partlist[0]
    start1 = part[0]
    callerele = pathlist[start1]
    callerfunname = getfunname(callerele)
    if type(callerast) == c_ast.Compound:
        next_ast = callerast.block_items
    if type(callerast) == c_ast.If:
        next_ast=[callerast]
    else:
        print(callerast)
        next_ast = callerast.stmt.block_items

    for t in partlist:
        if t == partlist[-1]:
            break
        startind = t[0]
        endind = t[1]
        part_path1 = pathlist[startind:endind + 1]
        next_ele1 = pathlist[endind + 1]
        calledfunname = getfunname(next_ele1)
        templist = []
        get_bb_linenum(part_path1, calledfunname, templist, blocknamelist)
        if len(templist) > 0:
            linenum = templist[0]
            calledele = pathlist[endind + 1]
            next_ast = notloop_move(linenum, next_ast, calledele, re_po_flag, None,False,None,None,None)



def deal_end_part(pathlist, startline, ret_list,  endfunname, gotolabel, labeldefine,
                   ndfa_srcvaname, dfa_srcfunname, dfa_srcline,src_funlist):
    """
    对最终路径的endpart部分进行处理（将每条路径根据end和start标识分成不同的区间，endpart部分包含第一区间到end与start之间的区间）
    :param pathlist: 列表（包含第一区间到end与start之间的区间的一条子路径）
    :param startline: int,source的行号
    :param endline: int,sink的行号
    :param ret_list: list,返回list，第一个元素为拆分end与start区间的索引，第二个元素为整个endpart段的所有ast组成的列表（已经处理好移动关系）
    :return:无
    """
    line_ast = []
    bblocklist = []
    print("end_part...")
    for i in pathlist:
        bbname = i.get_name()
        print(i)
        bblocklist.append(bbname)


    split_path = []
    split_path_end(bblocklist, split_path)
    print(split_path)
    for part in split_path:
        start = part[0]
        end = part[-1]
        partpath = pathlist[start:end + 1]
        startele = partpath[0]
        callerfunname = getfunname(startele)
        ast = parse_to_ast(startele)
        tempast = []
        fun_ast_map = {callerfunname: tempast}
        varlist = []
        decl_list = []
        for ext1 in ast.ext:
            if type(ext1) == c_ast.FuncDef and ext1.decl.name == callerfunname:
                # deal_return(ext1, callerfunname)
                funast = copy.deepcopy(ext1)
                if is_gen_xml and callerfunname == dfa_srcfunname:
                    memcpy_ast_list = []
                    get_src_ast(dfa_srcline, funast.body, memcpy_ast_list)
                    memcpy_ast = memcpy_ast_list[0]
                    print("endpart no loop get ndfa_srrname...")
                    get_srcvarname(memcpy_ast, ndfa_srcvaname)
                break
        bodyast = funast.body
        inc_linenum = []
        split_flag = False
        for ele in partpath:
            if ele.get_name().endswith("_end"):
                labelname = callerfunname + "_label_"
                labelst = c_ast.Label(name=labelname,
                                      stmt=c_ast.EmptyStatement())
                print("find label...")
                if callerfunname in fun_loop.keys() and len(fun_loop[callerfunname])>0:
                    temploop=fun_loop[callerfunname][0]
                    condl=temploop[list(temploop.keys())[0]]
                    condr=bodyast
                    if generator.visit(condl)==generator.visit(condr):
                        pass
                    else:
                        tempast.append(labelst)
                        labeldefine.append(labelname)
                else:
                    tempast.append(labelst)
                    labeldefine.append(labelname)
                break
            if split_flag:
                print("aplit_flag")
                break
            bbname = ele.get_name()
            lineinfo_list1 = get_lineinfo_sort(ele)
            if part == split_path[-1]:
                if ele == partpath[0]:
                    print("elelname")
                    # pre_inc_linenum = inc_linenum[0]
                    # if linenum > pre_inc_linenum:
                    ind = partpath.index(ele)
                    splitindex = start + ind
                    # inc_line = pre_inc_linenum
                    split_flag = True
                    break
            if (part != split_path[0] or len(split_path)==1) and ele == partpath[0]:
                lineinfo_list = [get_last_lineinfo(ele)]
                nnlabel = ele.get("label")[2:-2]
                labellist = nnlabel.split("\n")

                linenum = get_per_linenum(lineinfo_list[0])
                if len(tempast) == 0:
                    tempast.append(linenum)
                else:
                    tempast.insert(0, linenum)
            else:
                lineinfo_list = lineinfo_list1

            for line in lineinfo_list:
                linenum = get_per_linenum(line)
                if part == split_path[-1]:
                    print("zefe")
                    print(ele.get_name())
                    print(partpath[0].get_name())
                    print(linenum)
                    """当修改了icfg的实现后，对于end_part部分的拆分也要改变，从endpart最后一个part的第一个元素开始拆。"""

                    # if ele != partpath[0]:
                    #     print("elelname")
                    #     pre_inc_linenum = inc_linenum[0]
                    #     if linenum > pre_inc_linenum:
                    #         ind = partpath.index(ele)
                    #         splitindex = start + ind
                    #         inc_line = pre_inc_linenum
                    #         split_flag = True
                    #         break
                if len(inc_linenum) > 0 and linenum <= inc_linenum[0]:
                    continue
                if part == split_path[0] and linenum < startline:
                    continue
                findflag = [False]
                print("recurfind before....")
                print(linenum)
                print(tempast)
                recurfindline_pre(bodyast.block_items, linenum, bbname, bblocklist, varlist, tempast, inc_linenum, gotolabel,
                              labeldefine, findflag,decl_list,callerfunname,src_funlist)
                print("recurfind after")
                print(tempast)
                if findflag[0] is False and callerfunname!=src_funlist[-1]:
                    print("withou fink")
                    print(linenum)
                    find_in_return(linenum, tempast, callerfunname, varlist, inc_linenum,decl_list)
        funglobalval=global_dic[callerfunname]
        print("varlist...")
        print(varlist)
        find_va_decl(varlist, funast, param_list, ast)
        find_va_decl(funglobalval,funast, param_list, ast)
        if part != split_path[-1]:
            line_ast.append(fun_ast_map)
    print("line ast....976")
    for t in line_ast:
        print(t)
        print(list(t.keys())[0])
        key=list(t.keys())[0]
        for sta in t[key]:
            print(type(sta))
            if type(sta)==type(3):
                continue
            print(generator.visit(sta))

    print("end部分")
    print(line_ast)
    if len(split_path)==1:
        endfundic={endfunname:[]}
        line_ast.insert(0,endfundic)
    # final_ast = move_code_endpart(line_ast)
    print("end end_part")
    # print(final_ast)
    # generator.visit(final_ast)

    ret_list.append(splitindex)
    # ret_list.append(final_ast)
    ret_list.append(line_ast)
    # ret_list.append(inc_line)


def find_va_decl(varlist,funast,param_list,ast):
    ind=0
    for va in varlist:
        print("find va decl")
        print(va)
        if va.startswith("&") or "->" in va or "." in va:
            param_list.append(ind)
            ind=ind+1
            continue
        flg = False
        finddecl(funast.decl, va, param_list, flg)
        if flg is False:
            finddecl(funast.body, va, param_list, flg)
        if flg is False:
            finddecl(ast, va, slice_global_varible_list, flg)
        ind=ind+1



def find_loopid(st, varlist,decl_list):
    """
    在loop（loop的ast）中找到使用的变量
    :param st:c_ast类型的ast(loop)
    :param varlist:列表（用于存放找到的string类型的变量）
    :return:无
    """

    if st is None:
        return
    if type(st) == c_ast.Decl:
        decl_list.append(st.name)
        if st.init is not None:
            findid(st.init, varlist,decl_list)
        else:
            return
    elif type(st) ==c_ast.FuncCall:
        findid(st.args,varlist,decl_list)
    elif type(st) == c_ast.ID:
        idname = st.name
        if idname not in decl_list and idname not in varlist:
            varlist.append(idname)
        return
    else:
        for i in st:
            if i is None:
                continue
            elif type(i) == c_ast.Decl:
                decl_list.append(i.name)
                if i.init is not None:
                    findid(i.init, varlist,decl_list)
                else:
                    continue
            elif type(i) == c_ast.ID and type(st) != c_ast.FuncCall:
                idname = i.name
                if idname in decl_list:
                    continue
                elif idname in varlist:
                    continue
                else:
                    varlist.append(idname)
            else:
                findid(i, varlist,decl_list)


def findid(st, varlist,decl_list):
    """
    找出st（ast节点）中使用到的变量
    :param st:c_ast类型的ast节点
    :param varlist:列表（用于存放为找到的tring类型的变量name）
    :return:无
    """
    if st is None:
        return
    if type(st)==c_ast.Decl:
        decl_list.append(st.name)
        findid(st.init, varlist, decl_list)
        return
    elif type(st) == c_ast.ID:
        idname = st.name
        if idname in decl_list:
            return
        elif idname in varlist:
            return
        elif idname.endswith("_return_"):
            return
        else:
            varlist.append(idname)
            return
    for i in st:
        if (i == None):
            break
        elif type(i) == c_ast.Decl:
            decl_list.append(i.name)
            findid(i.init,varlist,decl_list)
        elif type(i) == c_ast.ID and type(st) != c_ast.FuncCall:
            idname = i.name
            if idname not in decl_list and idname not in varlist:
                varlist.append(idname)
        elif type(i)==c_ast.ID and type(st)==c_ast.FuncCall:
            continue
        else:
            findid(i, varlist,decl_list)

def get_linenum_from_coord(lineinfo):
    poind=lineinfo.index(":")
    reind=lineinfo.rindex(":")
    linenum=int(lineinfo[poind+1:reind])
    return linenum

def recurfindline_pre(bodyast, line, blockname, blocknamelist, varlist, tempast, inc_linenum, gotolabel, labeldefine,
                  findflag,decl_list,funname,src_funlist):
    for subast in bodyast:
        if subast.coord is not None:
            stcoord = str(subast.coord)
            stline = get_linenum_from_coord(stcoord)
            print("pre_recur_line")
            print(stline)
            print(generator.visit(subast))
            if stline > line:
                return
            recurfindline(subast, line, blockname, blocknamelist, varlist, tempast, inc_linenum, gotolabel,
                          labeldefine,
                          findflag, decl_list, funname, src_funlist)



def recurfindline(bodyast, line, blockname, blocknamelist, varlist, tempast, inc_linenum, gotolabel, labeldefine,
                  findflag,decl_list,funname,src_funlist):
    """
    根据给定行号，递归的在函数体中找到行号对应的最大的ast
    :param bodyast: c_ast类型的节点，初始的时候为函数体对应的bodyast，之后为每条c语句对应的ast
    :param line: int,行号
    :param blockname: string,基本块的name
    :param blocknamelist: list列表，基本块name对应的列表
    :param varlist: list列表（元素为string便令名，表示应该放到生成函数的参数列表中的变量）
    :param tempast:list列表（用于存放找到的对于与行号的ast）
    :param inc_linenum: 列表（拥有唯一的元素，表示已经处理过的ast中的最大的行号）
    :return: 将找到的ast添加到tempast之后
    """
    # if type(bodyast)==list:
    #     for subast in bodyast:
    #         if subast.coord is not None:
    #             stcoord = str(subast.coord)
    #             stline = get_linenum_from_coord(stcoord)
    #             # index1 = stcoord.index(":")
    #             # rindex1 = stcoord.rindex(":")
    #             # templine = int(stcoord[index1 + 1:rindex1])
    #             if stline > line:
    #                 return
    #         recurfindline(subast,line,blockname,blocknamelist,varlist,tempast,inc_linenum,gotolabel,labeldefine,findflag,decl_list,funname,src_funlist)
    #     return
    if bodyast.coord is not None:
        stcoord = str(bodyast.coord)
        stline=get_linenum_from_coord(stcoord)
        # index1 = stcoord.index(":")
        # rindex1 = stcoord.rindex(":")
        # templine = int(stcoord[index1 + 1:rindex1])
        if stline > line:
            return
    if bodyast.coord is not None and line==stline:
        print("recurline222..")
        index = blockname.index('BB')
        funn = 'BB' + blockname[:index] + '_start'
        lastnum = -1
        get_last_linenum(bodyast, lastnum, inc_linenum)

        if funn in blocknamelist:
            pass
        else:
            findid(bodyast, varlist,decl_list)
        find_goto_balel(bodyast, gotolabel, labeldefine)
        tempast.append(bodyast)
        findflag[0] = True
        return

    for c in bodyast:
        if c.coord is not None:
            cline = get_linenum_from_coord(str(c.coord))
        if type(c) == c_ast.Compound or type(c) == c_ast.For or type(c) == c_ast.While or type(
                c) == c_ast.DoWhile or type(c) == c_ast.Label or type(c) \
                == c_ast.Switch or type(c) == c_ast.Case or type(c) == c_ast.Default or type(c) == c_ast.If:

            if c.coord is not None and cline==line:
                index = blockname.index('BB')
                funn = 'BB' + blockname[:index] + '_start'
                lastnum = -1
                get_last_linenum(c, lastnum, inc_linenum)
                # 判断何时需要将声明记录到para_list
                if funn in blocknamelist:
                    pass
                else:
                    findid(c, varlist,decl_list)
                find_goto_balel(c, gotolabel, labeldefine)
                tempast.append(c)
                findflag[0] = True
                return
            else:
                recurfindline(c, line, blockname, blocknamelist, varlist, tempast, inc_linenum, gotolabel, labeldefine,
                              findflag,decl_list,funname,src_funlist)
        else:
            if c.coord is not None and cline==line:
                print("recurline111..")

                index = blockname.index('BB')
                funn = 'BB' + blockname[:index] + '_start'
                lastnum = -1
                get_last_linenum(c, lastnum, inc_linenum)
                # 判断何时需要将声明记录到para_list
                if funn in blocknamelist:
                    pass
                else:
                    findid(c, varlist, decl_list)
                find_goto_balel(c, gotolabel, labeldefine)
                tempast.append(c)
                findflag[0] = True
                return
                # if type(c) == c_ast.Decl:
                #     pass
                # else:
                #     return
            else:
                continue


def judge_ishaveend():
    """
    判断路径中是否有end类型的节点
    :param blocknamelist:列表（元素为string类型，代表基本块的函数名）
    :return:bool值
    """
    end_flag = False
    for b in blocknamelist:
        if b.endswith("_end"):
            end_flag = True
            break
    return end_flag


def judge_isend_start():
    """
    判断路径中是否存在end节点与start节点只相差一个基本块的子区间
    :param bblist: 列表（元素为string类型，代表基本块的函数名）
    :return: 列表（列表可能为空，可能包含找到的子区间）
    """
    ret_list = []
    split_pathlist = []
    split_path_pos(blocknamelist, split_pathlist)
    for part in split_pathlist:
        if part == split_pathlist[0]:
            continue
        start = part[0]
        end = part[1]
        if blocknamelist[start - 1].endswith("_end") and blocknamelist[end].endswith("_start"):
            ret_list.append(part)
            break
        if part == split_pathlist[-1]:
            ret_list.append(part)
    return ret_list


def judge_ishave_min_end_start():
    """
    判断路径中是否存在end节点与start节点只相差一个基本块的子区间
    :param bblist: 列表（元素为string类型，代表基本块的函数名）
    :return: 列表（列表可能为空，可能包含找到的子区间）
    """
    ret_list = []
    split_pathlist = []
    split_path_pos(blocknamelist, split_pathlist)
    for part in split_pathlist:
        if part == split_pathlist[0]:
            continue
        start = part[0]
        end = part[1]
        if start + 1 == end:
            if blocknamelist[start - 1].endswith("_end") and blocknamelist[end].endswith("_start"):
                ret_list.append(part)
                break
    return ret_list


def judge_recur(pathlist, subpart):
    """
    判断路径的类型是否为递归
    :param pathlist: 列表（路径：包含所有最终路径的基本块）
    :param subpart: 列表（其元素为end与start之间只相差一个元素的子区间的起始索引与终止索引）
    :return:bool值
    """
    recur_flag = False
    start = subpart[0]

    preele = pathlist[start - 1]
    startele = pathlist[start]
    prefunname = getfunname(preele)
    startfunname = getfunname(startele)
    if prefunname == startfunname:
        recur_flag = True
    return recur_flag


def find_goto_balel(st, gotolabel, labeldefine):
    if type(st) == c_ast.Goto and st.name not in gotolabel:
        gotolabel.append(st.name)
        return
    elif type(st) == c_ast.Label and st.name not in labeldefine:
        labeldefine.append(st.name)
        find_goto_balel(st.stmt, gotolabel, labeldefine)
        return
    elif type(st) == c_ast.If or type(st) == c_ast.For or type(st) == c_ast.While or type(st) == c_ast.DoWhile \
            or type(st) == c_ast.Compound or type(st) == c_ast.Switch or type(st) == c_ast.Case or type(
        st) == c_ast.Default:
        for t in st:
            find_goto_balel(t, gotolabel, labeldefine)
    else:
        pass


def deal_reverse_loop(pathlist,  gotolabel, labeldefine,  dfa_filelist_c,
                      dfa_functionlist, dfa_srcline, dfa_srcvarname):
    """
    对于路径中有end节点的情况，判断路径中的endpart部分是否有loop，如果有loop，进行代码移动操作,
    并根据loop所在的位置对路径进行拆分，返回5种不同种类的拆分情况
    :param pathlist:列表（包含end节点的路径，元素是一些pydot 节点）
    :return: retlist列表（元素为种类，拆分后的列表）
    """
    print("deal_reverse_loop start...")
    blocknamelist = []
    for pp in pathlist:
        ppname = pp.get_name()
        blocknamelist.append(ppname)
    endlist = []
    split_path_end(blocknamelist, endlist)
    isloop = False
    split_flag = False
    is_first_part = False
    if len(endlist) > 0:  # endlist不为空
        endlist.reverse()  # 逆转endlist
        print(endlist)
        len_endlist=len(endlist)
        for part in endlist:
            index_part=endlist.index(part)
            len_sub_endlist=len_endlist-index_part
            print("part....")
            print(part)
            '''解析c文件获取ast'''
            varlist = []
            decl_list= []
            start = part[0]
            end = part[1]
            partpath = pathlist[start: end + 1]
            if part ==endlist[-1]:
                curele=pathlist[start]
                curfunname=getfunname(curele)
                loop_list=[]
                tempast=parse_to_ast(curele)
                linenum=getlinenum(curele)
                isloop=judge_line_inloop(curfunname,linenum,loop_list)
                if isloop:
                    loop_range = loop_list[1]
                    loop_start = int(loop_range[0])
                    loop_end = int(loop_range[1])
                    print("reverse loop ...")
                    int_loop_range = list(range(loop_start, loop_end + 1))
                    print(int_loop_range)
                    for p in partpath:
                        if p.get_name().endswith("_end"):
                            continue
                        lastlinenum=getbb_lastlinenum(p)
                        if int(lastlinenum) not in int_loop_range:
                            ret_index=blocknamelist.index(p.get_name())
                            print("lastline")
                            print(lastlinenum)
                            print(ret_index)
                            split_flag=True
                            break
                    if split_flag is False:
                        ret_index=end+1
                    print("reverse end...")
                    retlist=[]
                    # if split_flag:
                    retlist.append("three")
                    retlist.append(pathlist[ret_index:])
                    retlist.append(loop_list[0])
                    # elif split_flag is False:
                    #     retlist.append("four")
                    #     retlist.append(pathlist[ret_index:])
                    #     retlist.append(loop_list[0])
                    find_loopid(loop_list[0],varlist,decl_list)
                    find_goto_balel(loop_list[0],gotolabel,labeldefine)
                    for ext1 in tempast.ext:
                        if type(ext1) == c_ast.FuncDef and ext1.decl.name == curfunname:
                            funglobalv=global_dic[curfunname]
                            find_va_decl(varlist, ext1, param_list, tempast)
                            find_va_decl(funglobalv, ext1, param_list, tempast)
                    return retlist

                else:
                    break


            called_ele = pathlist[start - 1]
            called_funname = getfunname(called_ele)
            # 判断callend函数所在的基本块和行号

            ret_list = []
            print(called_funname)
            get_bb_linenum_inloop(partpath, called_funname, ret_list, blocknamelist)
            if len(ret_list) > 0:
                linenum = ret_list[0]
                """将loop所在的part拆分成两部分"""
                print(ret_list)
                splitindex = ret_list[1]
                curele = pathlist[splitindex]
                # 判断called函数的行号是否在loop中
                loop_list = []
                tempast = parse_to_ast(curele)
                curfunname = getfunname(curele)
                isloop = judge_line_inloop(curfunname, linenum, loop_list)
                if isloop:
                    """
                    获得正在处理的元素索引
                    获得正在处理的元素在子区间的索引
                    判断子区间中剩余的其他元素是否在大loop中"""
                    print("haveloop.......")
                    # print(loop_list)

                    """
                    获得c文件名，将函数信息，文件添加到相应的列表中
                    """
                    if is_gen_xml:
                        temp_c_file = get_c_filename(curele)
                        if temp_c_file not in dfa_filelist_c:
                            dfa_filelist_c.append(temp_c_file)
                        dfa_functionlist.append(curfunname)

                    print(generator.visit(loop_list[0]))
                    find_loopid(loop_list[0], varlist,decl_list)
                    if part == endlist[0]:
                        is_first_part = True
                    # subpart_ele_index = ret_list[2]
                    loop_range = loop_list[1]
                    loop_start = int(loop_range[0])
                    loop_end = int(loop_range[1])
                    int_loop_range = list(range(loop_start, loop_end + 1))
                    bbele = pathlist[start - 2]  # 上一个区间中的元素
                    move_flag = "reverse"
                    find_goto_balel(loop_list[0], gotolabel, labeldefine)
                    if len_sub_endlist==2 and is_gen_xml:
                        next_ast = loop_move(loop_list[0], linenum, bbele, move_flag, dfa_srcvarname,dfa_srcline,dfa_filelist_c,dfa_functionlist)
                        print("srcname in deal_reverse_loop...")
                        print(dfa_srcvarname[0])
                    else:
                        next_ast = loop_move(loop_list[0], linenum, bbele, move_flag, None,None,None,None)
                    # print("next_ast.....")
                    # for st in next_ast:
                    #     print(generator.visit(st))
                    if part == endlist[-2]:
                        pass
                    else:
                        curind = endlist.index(part)
                        tunc_list = endlist[curind + 1:]

                        # 非loop移动
                        for t in tunc_list:
                            print("tunc_list large than one...")
                            if t == tunc_list[-1]:
                                break
                            print("tunc list...")
                            print(tunc_list)
                            startind = t[0]
                            endind = t[1]
                            part_path1 = pathlist[startind:endind + 1]
                            pre_ele1 = pathlist[startind - 1]
                            funname = getfunname(pre_ele1)
                            print(funname)
                            templist = []
                            get_bb_linenum(part_path1, funname, templist, blocknamelist)
                            if len(templist) > 0:
                                print("new1...")
                                linenum = templist[0]
                                bbele = pathlist[startind - 2]

                                if is_gen_xml:
                                    temp_c_file = get_c_filename(bbele)
                                    temp_funname = getfunname(bbele)
                                    if temp_c_file not in dfa_filelist_c:
                                        dfa_filelist_c.append(temp_c_file)
                                    dfa_functionlist.append(temp_funname)
                                mvflag = "reverse"

                                if is_gen_xml and t == tunc_list[-2]:
                                    print("srcpart is true.....")
                                    is_srcpart = True
                                else:
                                    is_srcpart = False

                                next_ast = loop_move(loop_list[0], linenum, bbele, mvflag, dfa_srcvarname, dfa_srcline,dfa_filelist_c,dfa_functionlist)
                                # next_ast = notloop_move(linenum, next_ast, bbele, mvflag,
                                #                         dfa_srcvarname, is_srcpart, dfa_srcline,dfa_filelist_c,dfa_functionlist)
                                # print("new2...")
                                # for newele in next_ast:
                                #     print(generator.visit(newele))
                    # new_start = start + subpart_ele_index + 1
                    new_start= splitindex+1
                    newpart_pathlist = pathlist[new_start:end + 1]

                    print("paele_linenum....")
                    for paele in newpart_pathlist:
                        if paele.get_name().endswith("_start") or paele.get_name().endswith("_end"):
                            continue
                        paele_linenum = getlinenum(paele)
                        print(paele_linenum)
                        print(int_loop_range)
                        if int(paele_linenum) in int_loop_range:
                            continue
                        else:
                            ret_index = blocknamelist.index(paele.get_name())
                            split_flag = True
                            break
                    if split_flag is False:
                        ret_index = end + 1

                    for ext1 in tempast.ext:
                        if type(ext1) == c_ast.FuncDef and ext1.decl.name == curfunname:
                            funglobalv=global_dic[curfunname]
                            find_va_decl(varlist, ext1, param_list, tempast)
                            find_va_decl(funglobalv, ext1, param_list, tempast)
                    break
    retlist = []
    if isloop:
        if is_first_part and split_flag is False:
            """说明倒序且逆序，需要在下一个段中找到被调用的行号"""
            retlist.append("one")
            retlist.append(pathlist[ret_index:])
            retlist.append(loop_list[0])
        elif is_first_part and split_flag:
            """按照剩余部分当成startpart处理"""
            retlist.append("two")
            retlist.append(pathlist[ret_index:])
            retlist.append(loop_list[0])
        elif is_first_part is False and split_flag:
            """剩余部分可以分为endpart和start部分进行处理"""
            retlist.append("three")
            retlist.append(pathlist[ret_index:])
            retlist.append(loop_list[0])
        elif is_first_part is False and split_flag is False:
            retlist.append("four")
            retlist.append(pathlist[ret_index:])
            retlist.append(loop_list[0])
    else:
        retlist.append("five")
        retlist.append(pathlist)
    return retlist

def get_src_loc_call_fun(pathlist):
    srcfun_list=[]

    for p in pathlist:
        funname = getfunname(p)
        bbname=p.get_name()
        if bbname.endswith("_start"):
            break
        elif funname not in srcfun_list:
            srcfun_list.append(funname)
    return srcfun_list


def get_maincall_funname(pathlist):
    bblist=[]
    for p in pathlist:
        bblist.append(p.get_name())

    end_flag = judge_ishaveend()
    if end_flag:
        endstart_part = judge_isend_start()
        if len(endstart_part)>0:
            e_start = endstart_part[0][0]
            curele = pathlist[e_start]
            cur_funname = getfunname(curele)
            main_funname=cur_funname
        else:
            main_ele=pathlist[-1]
            main_funname=getfunname(main_ele)
    else:
        main_ele=pathlist[0]
        main_funname=getfunname(main_ele)
    return main_funname





def strip_varname(name):
    newname = name[0:-2]
    rind = newname.rfind("_")
    return newname[rind + 1:]


def strip_funname(name):
    newname = name[1:-1]
    rind = newname.rfind("_")
    return newname[:rind]

def judge_decl(declast): # 判断是否是声明语句
    onetype=declast.type 
    # threetype= type(twotype.type)
    decl_info=[] 
    kind=None
    decltype=None
    dim=None
    if type(onetype)==c_ast.Struct:
        return decl_info
    elif type(onetype) == c_ast.ArrayDecl:
        onedim=generator.visit(onetype.dim) #数组的大小
        # print(onedim)
        twotype = onetype.type
        threetype = twotype.type
        if type(twotype) ==  c_ast.PtrDecl:
            fourtype=threetype.type
            if type(threetype) == c_ast.PtrDecl:
                pass
            elif type(threetype) == c_ast.ArrayDecl:
                pass
            elif type(threetype) == c_ast.TypeDecl:
                if type(fourtype) == c_ast.Struct:
                    kind = "ptr_arr" #指针数组
                    decltype = "struct " + fourtype.name
                elif type(fourtype) == c_ast.IdentifierType:
                    kind = "ptr_arr" #指针数组
                    decltype = fourtype.names[0]
                dim=onedim
            elif type(twotype) == c_ast.FuncDecl:
                pass
        elif type(twotype) ==c_ast.ArrayDecl:
            fourtype=threetype.type
            twodim=generator.visit(twotype.dim)
            print(twodim)
            if type(threetype) == c_ast.PtrDecl:
                pass
            elif type(threetype) == c_ast.ArrayDecl:
                threedim=generator.visit(threetype.dim)
                print(threedim)
                if type(fourtype) == c_ast.TypeDecl:
                    if type(fourtype.type) == c_ast.Struct:
                        kind = "three_arr" #三维数组
                        decltype = "struct " + fourtype.type.name
                    elif type(fourtype.type) == c_ast.IdentifierType:
                        kind = "three_arr" #三维数组
                        decltype = fourtype.type.names[0]
                    dim=onedim+"*"+twodim+"*"+threedim
            elif type(threetype) == c_ast.TypeDecl:
                if type(fourtype) == c_ast.Struct:
                    kind = "two_arr" #二维数组
                    decltype = "struct " + fourtype.name
                elif type(fourtype) == c_ast.IdentifierType:
                    kind = "two_arr" #二维数组
                    decltype = fourtype.names[0]
                dim=onedim+"*"+twodim
        elif type(twotype) == c_ast.TypeDecl:
            if type(threetype)==c_ast.Struct:
                kind="one_arr" #一维数组
                decltype="struct "+threetype.name
            elif type(threetype) == c_ast.IdentifierType:
                kind="one_arr" #一维数组
                decltype=threetype.names[0]
            dim=onedim
    elif type(onetype) == c_ast.PtrDecl:
        twotype = onetype.type
        threetype=twotype.type
        if type(twotype) ==c_ast.PtrDecl:
            fourtype = threetype.type
            if type(threetype) == c_ast.PtrDecl:
                if type(fourtype) == c_ast.TypeDecl:
                    if type(fourtype.type) == c_ast.Struct:
                        kind = "three_ptr" #三级指针
                        decltype = "struct " + fourtype.type.name
                    elif type(fourtype.type) == c_ast.IdentifierType:
                        kind = "three_ptr" #三级指针
                        decltype = fourtype.type.names[0]
            elif type(threetype) == c_ast.ArrayDecl:
                pass
            elif type(threetype) == c_ast.TypeDecl:
                if type(fourtype) == c_ast.Struct:
                    kind = "two_ptr" #二级指针
                    decltype = "struct " + fourtype.name
                elif type(fourtype) == c_ast.IdentifierType:
                    kind = "two_ptr" #二级指针
                    decltype = fourtype.names[0]
            elif type(twotype) == c_ast.FuncDecl:
                pass
        elif type(twotype) == c_ast.ArrayDecl:
            fourtype = threetype.type
            twodim=generator.visit(twotype.dim)
            print(twodim)
            if type(threetype) == c_ast.PtrDecl:
                pass
            elif type(threetype) == c_ast.ArrayDecl:
                pass
            elif type(threetype) == c_ast.TypeDecl:
                if type(fourtype) == c_ast.Struct:
                    kind = "arr_ptr" #数组指针
                    decltype = "struct " + fourtype.name
                elif type(fourtype) == c_ast.IdentifierType:
                    kind = "arr_ptr" #数组指针
                    decltype = fourtype.names[0]
                dim=twodim
        elif type(twotype) ==c_ast.TypeDecl:
            if type(threetype) == c_ast.Struct:
                kind = "one_ptr" #一级指针
                decltype = "struct " + threetype.name
            elif type(threetype) == c_ast.IdentifierType:
                kind = "one_ptr"    #一级指针
                decltype = threetype.names[0]
        elif type(twotype) == c_ast.FuncDecl:
            kind="fun_ptr" #函数指针
            decltype="null"
    elif type(onetype) == c_ast.TypeDecl:
        twotype = onetype.type

        if type(twotype)==c_ast.IdentifierType:
            kind="basic" #基本类型
            decltype=twotype.names[0]
        elif  type(twotype)==c_ast.Struct:
            kind="basic" #基本类型
            decltype="struct "+twotype.name
    elif type(onetype)==c_ast.FuncDecl:
        kind="fun_ptr" #函数指针
        decltype="fun_ptr"
    if kind is not None:
        decl_info.append(kind)
        decl_info.append(decltype)
    if dim is not None:
        decl_info.append(dim)
    return decl_info


def getTypeStr(t,retstr_list):
    ttype=type(t)
    if ttype==c_ast.TypeDecl:
        tempstr=""
        for str in t.type.names:
            tempstr=tempstr+" "+str
        retstr_list[0]=tempstr+retstr_list[0]
        return
    elif ttype==c_ast.PtrDecl:
        retstr_list[0] = "*"+ retstr_list[0]
        getTypeStr(t.type,retstr_list)
    elif ttype==c_ast.ArrayDecl:
        if ttype.dim is not None:
            num=t.dim.value
            retstr_list[0] = "["+num+"]" + retstr_list[0]
        else:
            retstr_list[0] = "[]" + retstr_list[0]
        getTypeStr(t.type,retstr_list)

def gen_code_entry(pathlist, startline, endline, genfunname, srcinfo):
    """
    代码生成的入口,将路径分成不同种类，每种不同的路径调用不同的接口进行处理
    1.路径当中没有end节点，source所在的深度为0，直接调用deal_start进行处理
    2.对于有end节点的路径，首先判断end节点与start节点之间只相差一个基本块，
    只相差一个基本块可分为下面几种类型：
        （1）递归:调用deal_recur
        （2）source节点和sink节点在相同的函数中，调用loop_same_source_sink
        （3）不合理的路径（排除）
    end节点和start节点之间相差多个基本块可分为下面几种类型：
        （1）深度为0的区间当中包含loop，此loop调用source和sink所在函数（对应“one”）:处理loop，然后移动代码
        （2）深度为0的区间当中包含loop，此loop调用source所在函数但没有调用sink所在函数（对应“two”）：处理loop，
        剩余部分按照startpart进行处理（调用deal_startpart）
        （3）调用source所在的函数的代码块在一个loop中，但是这个函数所在的区间不是深度为0的（对应“three”）:处理loop，
        剩余部分分成endpart和startpart进行处理
        （4）source所在点没有被任何loop代码块调用，sink点有可能loop，也可能没有(对应“five”)：
        直接将路径分成endpart和startpart进行处理
    :param pathlist: 列表（路径：包含所有最终路径的基本块）
    :param startline: int整数（source行号）
    :param endline: int整数（sink行号）
    :param outfile: string字符串（生成函数存放的路径名）
    :param genfunname:string字符串（生成函数的函数名）
    :srcinfo: None或者list[src_file,src_line]
    :return:无
    """
    split_pathlist = []
    gotolabel = []
    labeldefine = []

    is_dfa = False  # 用于判断是否需要数据流分析
    dfa_functionlist = []  # 存放loop入口到source 的函数名
    if is_gen_xml:
        dfa_srcfunname = getfunname(srcinfo[2])  # src所在函数名用于dfa
        dfa_srcline = srcinfo[1]  # dfa src行号
    else:
        dfa_srcfunname = None
        dfa_srcline = None
    dfa_srcvarname = []  # dfa src变量名
    ndfa_srcvarname = []  # 非dfa src变量名（有可能是数组，基础便阿玲，结构体成员变量）
    dfa_filelist_c = []  # loop入口到src的所有c文件
    main_call_funname = get_maincall_funname(pathlist)
    if GET_SLICE_IN_OUT_INFO or isModSink:
        in_var_list = []
        out_var_list = []
        slice_out_line = endline
        slice_out_funname = getfunname(pathlist[-1])
        slice_out_file = get_first_lineinfo(pathlist[-1])
        if len(sink_line_funname)==0:
            sink_line_funname.append(endline)
            sink_line_funname.append(getfunname(pathlist[-1]))
        if isModSink:
            if len(source_line_funname)==0:
                source_line_funname.append(startline)
                source_line_funname.append(getfunname(pathlist[0]))
    split_path_pos(blocknamelist,split_pathlist)
    src_fun_list=get_src_loc_call_fun(pathlist)
    # src_fun_list=[]

    """
    1.首先判断一条路径是否拥有end节点
    """
    end_flag = judge_ishaveend()
    if end_flag:
        """
        路径当中包含end节点
        2.判断路径中是否包含end节点与start节点之间只包含一个元素的区间
        """
        end_start_part = judge_ishave_min_end_start()
        if len(end_start_part) > 0:
            """
            拥有end节点与start节点之间只包含一个元素的区间  
            4.判断路径是否是递归
            """
            recur_flag = judge_recur(pathlist, end_start_part[0])  ##first
            if recur_flag:
                """递归类型处理"""
                start = end_start_part[0][0]
                preele = pathlist[start - 1]
                prefunname = getfunname(preele)
                # re_po_flag = "positive"
                """
                目前只支持在src所在的函数为递归函数
                """
                if is_gen_xml:
                    is_dfa = True
                    dfa_filelist_c.append(srcinfo[0])
                    dfa_functionlist.append(dfa_srcfunname)
                recurast = deal_recur(pathlist, prefunname,   dfa_srcline, dfa_srcvarname)
                callerast = recurast
                if GET_SLICE_IN_OUT_INFO or isModSink:
                    slice_in_line=callerast.block_items[0].coord
                    slice_in_funname=prefunname
                    last_line=-1
                    inc_linenum = []
                    get_last_linenum(callerast,last_line,inc_linenum)
                    slice_in_file=get_first_lineinfo(pathlist[start])
                sub_split_path = []
                split_path_start( sub_split_path)
                flag = "reverse"
                templist = sub_split_path[1:]

                loop_move_part_positive_order(templist, pathlist, callerast, flag)
                temp_ast=[callerast]
                if GET_SLICE_IN_OUT_INFO or isModSink:
                    output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine, slice_in_funname,
                                   in_var_list, out_var_list)
                else:
                    output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine )

            else:
                """
                3.判断路径是否应该被排除
                5.判断路径是否是同一个source同一个sink
                """
                print("minmum part call deal_reverse_loop..")
                rloop_list = deal_reverse_loop(pathlist,  gotolabel, labeldefine, dfa_filelist_c,
                                               dfa_functionlist, dfa_srcline, dfa_srcvarname)
                if len(rloop_list) > 2:
                    print("without deal with type")
                if rloop_list[0] == "one":
                    """is_first_part and split_flag is False"""
                    if is_gen_xml:
                        is_dfa = True
                    # subpathlist = rloop_list[1]
                    callerast = rloop_list[2]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        slice_in_line=callerast.coord
                        print(end_start_part)
                        slice_in_funname=getfunname(pathlist[end_start_part[0][0]])
                        last_line=-1
                        inc_linenum = []
                        get_last_linenum(callerast, last_line, inc_linenum)
                        slice_in_file=get_first_lineinfo(pathlist[end_start_part[0][0]])
                    sub_split_path = []
                    split_path_start( sub_split_path)
                    flag = "reverse"
                    templist = sub_split_path[1:]
                    loop_move_part_positive_order(templist, pathlist, callerast, flag)
                    temp_ast=[callerast]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine, slice_in_funname,
                                           in_var_list, out_var_list)
                    else:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine)

                else:
                    return
        else:
            """
            判断有没有大loop
            分段进行处理
            """
            endstart_part = judge_isend_start()
            e_start = endstart_part[0][0]
            e_end = endstart_part[0][1]
            e_start_ele = pathlist[e_start - 1]
            e_end_ele = pathlist[e_end]
            e_start_funname = getfunname(e_start_ele)
            e_end_funname = getfunname(e_end_ele)
            if e_start_funname == e_end_funname:
                """source和sink同一个函数中，且这个函数被一个loop调用"""
                print("source and sink in a loop...")
                rloop_list = deal_reverse_loop(pathlist,  gotolabel, labeldefine, dfa_filelist_c,
                                               dfa_functionlist, dfa_srcline, dfa_srcvarname)
                if len(rloop_list) > 2:
                    print("without deal with type")
                if rloop_list[0] == "one":
                    """is_first_part and split_flag is False"""
                    if is_gen_xml:
                        is_dfa = True
                    subpathlist = rloop_list[1]
                    callerast = rloop_list[2]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        slice_in_line=callerast.coord
                        slice_in_funname = getfunname(pathlist[e_start])
                        last_line=-1
                        inc_linenum = []
                        get_last_linenum(callerast, last_line, inc_linenum)
                        slice_in_file = get_first_lineinfo(pathlist[e_start])


                    sub_split_path = []
                    split_path_start( sub_split_path)
                    flag = "reverse"
                    templist = sub_split_path[1:]
                    loop_move_part_positive_order(templist, pathlist, callerast, flag)
                    temp_ast=[callerast]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine, slice_in_funname,
                                           in_var_list, out_var_list)
                    else:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine)
            else:
                print("ordinary source and sink....")
                rloop_list = deal_reverse_loop(pathlist,  gotolabel, labeldefine, dfa_filelist_c,
                                               dfa_functionlist, dfa_srcline, dfa_srcvarname)
                print("分类")
                print(rloop_list[0])
                if rloop_list[0] == "one":
                    """is_first_part and split_flag is False"""
                    if is_gen_xml:
                        is_dfa = True
                    subpathlist = rloop_list[1]
                    callerast = rloop_list[2]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        slice_in_line=callerast.coord
                        slice_in_funname = getfunname(pathlist[e_start])
                        last_line=-1
                        inc_linenum = []
                        get_last_linenum(callerast, last_line, inc_linenum)
                        slice_in_file = get_first_lineinfo(pathlist[e_start])
                    sub_split_path = []
                    split_path_start( sub_split_path)
                    flag = "reverse"
                    loop_move_part_positive_order(sub_split_path, pathlist, callerast, flag)
                    temp_ast=[callerast]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine, slice_in_funname,
                                           in_var_list, out_var_list)
                    else:
                        output_finally_fun(genfunname,  temp_ast, gotolabel, labeldefine)
                elif rloop_list[0] == "two":
                    """is_first_part and split_flag"""
                    if is_gen_xml:
                        is_dfa = True
                    startpathlist = rloop_list[1]
                    startlinenum = 0
                    callerast = rloop_list[2]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        slice_in_line=callerast.coord
                        slice_in_funname = getfunname(pathlist[e_start])
                        slice_in_file = get_first_lineinfo(pathlist[e_start])
                    dealed_ast = [callerast]
                    line_ast = []
                    slice_out_info=[]

                    deal_start_part( startpathlist, startlinenum, endline, dealed_ast, line_ast,
                                    None, gotolabel, labeldefine, None, None, None,src_fun_list,slice_out_info)

                    line_ast.reverse()
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,slice_in_funname,in_var_list,out_var_list)
                    else:
                        gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine
                                            , None, None,None)
                elif rloop_list[0] == "three":
                    """is_first_part is False and split_flag"""
                    print("three part...")
                    if is_gen_xml:
                        is_dfa = True
                    subpathlist = rloop_list[1]
                    callerast = rloop_list[2]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        slice_in_line=callerast.coord
                        slice_in_funname = getfunname(subpathlist[0])
                        slice_in_file = get_first_lineinfo(subpathlist[0])
                    subbblist = []
                    starline = 0
                    for i in subpathlist:
                        bbname = i.get_name()
                        subbblist.append(bbname)
                    split_endlist = []
                    split_path_end(subbblist, split_endlist)
                    start = split_endlist[0][0]
                    end = split_endlist[-1][-1]
                    print("1111111111111")
                    # print(pathlist[start-1])
                    print(generator.visit(callerast))
                    print(split_endlist)
                    endfunname=getfunname(pathlist[0])

                    endpathlist = subpathlist[start:end + 1]
                    # if len(split_endlist)>1:
                    dep_list = []
                    deal_end_part(endpathlist, starline, dep_list,  endfunname, gotolabel, labeldefine,
                                   None, None, None,src_fun_list)
                    if len(dep_list) > 0:
                        print("thelllllll")
                        split_index = dep_list[0]
                        startpathlist = subpathlist[split_index:]
                        startlinenum = 0
                        # endpart_astlist = dep_list[1]
                        # endpart_astlist.insert(0, callerast)
                        end_ret_dic=dep_list[1]
                        print(end_ret_dic)
                        endpart_astlist=[callerast,end_ret_dic] #第一个元素是ast,第二个元是列表（列表元素是字典），在start_part部分处理这个字典元素
                        line_ast = []
                        # inc_line = dep_list[2]
                        slice_out_info=[]
                        print(endpart_astlist)
                        deal_start_part( startpathlist, startlinenum, endline, endpart_astlist, line_ast,
                                        None, gotolabel, labeldefine, None, None, None,src_fun_list,slice_out_info)


                        line_ast.reverse()

                        if GET_SLICE_IN_OUT_INFO or isModSink:
                            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,
                                            slice_in_funname,in_var_list,out_var_list)
                        else:
                            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,
                                                 None, None,None)
                        # else:
                        #     startpathlist =endpathlist
                        #     startlinenum = 0
                        #     endpart_astlist = []
                        #
                        #     endpart_astlist.append(callerast)
                        #     line_ast = []
                        #     inc_line = -1
                        #     slice_out_info = []
                        #     deal_start_part(startpathlist, startlinenum, endline, endpart_astlist, line_ast,
                        #                     inc_line, gotolabel, labeldefine, None, None, None, src_fun_list,
                        #                     slice_out_info)
                        #
                        #     line_ast.reverse()
                        #     if GET_SLICE_IN_OUT_INFO:
                        #         gen_final_startpart(line_ast, genfunname, gotolabel, labeldefine,
                        #                             slice_in_funname, in_var_list, out_var_list)
                        #     else:
                        #         gen_final_startpart(line_ast, genfunname, gotolabel, labeldefine,
                        #                             None, None, None)
                elif rloop_list[0] == "four":
                    print("without deal with type")
                    print(rloop_list)
                    # print(rloop_list[2])
                elif rloop_list[0] == "five":
                    """没有loop的情况，分为endpart,和startpart处理"""
                    split_endlist = []
                    split_path_end(blocknamelist, split_endlist)
                    start = split_endlist[0][0]
                    end = split_endlist[-1][-1]
                    endpathlist = pathlist[start:end + 1]
                    dep_list = []
                    deal_end_part(endpathlist, startline, dep_list,  None, gotolabel, labeldefine,
                                   ndfa_srcvarname, dfa_srcfunname, dfa_srcline,src_fun_list)
                    if len(dep_list) > 0:
                        split_index = dep_list[0]
                        startpathlist = pathlist[split_index:]
                        startlinenum = 0
                        # endpart_astlist = dep_list[1]
                        end_ret_dic = dep_list[1]
                        endpart_astlist = [end_ret_dic]  # 第一个元素是ast,第二个元是列表（列表元素是字典），在start_part部分处理这个字典元素
                        if GET_SLICE_IN_OUT_INFO or isModSink:

                            slice_in_funname = getfunname(pathlist[0])
                            slice_in_line = end_ret_dic[0][slice_in_funname][0].coord
                            slice_in_file = get_first_lineinfo(pathlist[0])
                        line_ast = []
                        # inc_line = dep_list[2]
                        slice_out_info=[]
                        deal_start_part( startpathlist, startlinenum, endline, endpart_astlist, line_ast,
                                        None, gotolabel, labeldefine,  None, None, None,src_fun_list,slice_out_info)
                        # if GET_SLICE_IN_OUT_INFO:
                        #     for p in sink_vardecl_ast:
                        #         varname = strip_varname(p.name)
                        #         retlist = judge_decl(p)
                        #         if len(retlist) == 0:
                        #             print("unknow param type")
                        #             print(p)
                        #             exit(1)
                        #         kind = retlist[0]
                        #         decltype = retlist[1]
                        #         dim = "null"
                        #         if len(retlist) == 3:
                        #             dim = retlist[2]
                        #         vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
                        #         out_var_list.append(vartype)
                        #     if slice_out_funname in fun_actual_param_map.keys():
                        #         actual_param_list = fun_actual_param_map[slice_out_funname]
                        #         for i in actual_param_list:
                        #             retlist = judge_decl(i)
                        #             if len(retlist) == 0:
                        #                 print("unknow param type")
                        #                 print(i)
                        #                 exit(1)
                        #             kind = retlist[0]
                        #             decltype = retlist[1]
                        #             dim = "null"
                        #             if len(retlist) == 3:
                        #                 dim = retlist[2]
                        #             vartype = i.name + ":" + kind + ":" + decltype + ":" + dim
                        #             out_var_list.append(vartype)
                        line_ast.reverse()
                        if GET_SLICE_IN_OUT_INFO or isModSink:
                            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,
                                            slice_in_funname,in_var_list,out_var_list)
                        else:
                            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,
                                                 None, None,None)
    else:
        """
        路径当中没有包含end节
        """
        dealed_ast = []
        line_ast = []
        slice_out_info=[]
        deal_start_part( pathlist, startline, endline, dealed_ast, line_ast,  None, gotolabel,
                        labeldefine,  ndfa_srcvarname, dfa_srcfunname, dfa_srcline,src_fun_list,slice_out_info)
        if GET_SLICE_IN_OUT_INFO or isModSink:
            print("gen in out...")
            print(line_ast)
            # slice_in_line=line_ast[0][main_call_funname][0].coord
            slice_in_line=startline
            slice_in_funname = getfunname(pathlist[0])
            slice_in_file = get_first_lineinfo(pathlist[0])
        #     for p in sink_vardecl_ast:
        #         varname = strip_varname(p.name)
        #         retlist = judge_decl(p)
        #         if len(retlist) == 0:
        #             print("unknow param type")
        #             print(p)
        #             exit(1)
        #         kind = retlist[0]
        #         decltype = retlist[1]
        #         dim = "null"
        #         if len(retlist) == 3:
        #             dim = retlist[2]
        #         vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
        #         out_var_list.append(vartype)
        line_ast.reverse()
        print("dealstart finally ast")
        print(line_ast)
        if GET_SLICE_IN_OUT_INFO or isModSink:
            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine, slice_in_funname, in_var_list,out_var_list)
        else:
            gen_final_startpart(line_ast,  genfunname,  gotolabel, labeldefine,
                                None, None,None)

    if GET_SLICE_IN_OUT_INFO or isModSink: # 生成in_out文件
        print("生成in_out")
        doc = Document()
        # create root node
        root = doc.createElement("root")
        doc.appendChild(root)
        mainnode=doc.createElement("main_call")
        mainnode.setAttribute("value",main_call_funname)
        root.appendChild(mainnode)
        sinline_node=doc.createElement("in_line")
        # in_line=int(str(slice_in_line).split(":")[1])
        sinline_node.setAttribute("value",str(startline))
        root.appendChild(sinline_node)
        # sinfun_node=doc.createElement("in_funname")
        # sinfun_node.setAttribute("value",slice_in_funname)
        # root.appendChild(sinfun_node)
        soutline_node=doc.createElement("out_line")
        soutline_node.setAttribute("value",str(slice_out_line))
        root.appendChild(soutline_node)
        soutfun_node=doc.createElement("out_funname")
        soutfun_node.setAttribute("value",slice_out_funname)
        root.appendChild(soutfun_node)
        sinfile_node=doc.createElement("in_file")
        in_file_index=slice_in_file.index(":")
        in_file=slice_in_file[:in_file_index]
        sinfile_node.setAttribute("value",in_file)
        root.appendChild(sinfile_node)
        soutfile_node=doc.createElement("out_file")
        out_file_index=slice_out_file.index(":")
        out_file=slice_out_file[:out_file_index]
        soutfile_node.setAttribute("value",out_file)
        root.appendChild(soutfile_node)
        sin_vars_node=doc.createElement("in_vars")
        for v in in_var_list:
            vallist=v.split(":")
            invar_node=doc.createElement("in_var")
            invar_node.setAttribute("rawname",vallist[1])
            invar_node.setAttribute("newname",vallist[2])
            invar_node.setAttribute("line",vallist[0])
            invar_node.setAttribute("kind",vallist[3])
            invar_node.setAttribute("type",vallist[4])
            if vallist[3]!="null":
                invar_node.setAttribute("dim",vallist[3])
            sin_vars_node.appendChild(invar_node)
        root.appendChild(sin_vars_node)
        soutvars_node=doc.createElement("out_vars")
        for v in out_var_list:
            vallist=v.split(":")
            outvar_node=doc.createElement("out_var")
            outvar_node.setAttribute("name",vallist[0])
            outvar_node.setAttribute("kind",vallist[1])
            outvar_node.setAttribute("type",vallist[2])
            if vallist[3]!="null":
                outvar_node.setAttribute("dim",vallist[3])
            soutvars_node.appendChild(outvar_node)
        root.appendChild(soutvars_node)
        genfunnode = doc.createElement("gen_fun")
        genfunnode.setAttribute("value", gen_funname1)
        root.appendChild(genfunnode)
        genfunparmas_node = doc.createElement("gen_fun_params")
        for v in genfun_param_list:
            vallist = v.split(":")
            param_node = doc.createElement("param")
            param_node.setAttribute("name", vallist[0])
            param_node.setAttribute("kind", vallist[1])
            param_node.setAttribute("type", vallist[2])
            if vallist[3] != "null":
                param_node.setAttribute("dim", vallist[3])
            genfunparmas_node.appendChild(param_node)
        root.appendChild(genfunparmas_node)
        if len(randfilelist)>0:
            randfilenode=doc.createElement("rand_file")
            randfilenode.setAttribute("value",randfilelist[0])
            root.appendChild(randfilenode)
            randlinelistnode=doc.createElement("randlines")
            for ele in randlinelist:
                randlinenode=doc.createElement("randline")
                randlinenode.setAttribute("value",str(ele))
                randlinelistnode.appendChild(randlinenode)
            root.appendChild(randlinelistnode)
        in_out_dir=sys.argv[2]+'/slice_in_out_info/'
        print(in_out_dir)
        if not os.path.exists(in_out_dir):
            os.makedirs(in_out_dir)
        filename=in_out_dir +"/"+ genfunname+"_in_out.xml"
        with open(filename, 'w') as f:
            f.write(doc.toprettyxml(indent=' '))
            f.close()


        print("slice_in_out info")
        print(main_call_funname)
        print(slice_in_line)
        print(slice_in_funname)
        for v in in_var_list:
            print(v)
        print(slice_out_line)
        print(slice_out_funname)
        for v in out_var_list:
            print(v)

    entry_createxml(None, True, genfunname+".xml")
    print("srcname in code_gen...")

    if isModSink or GET_SLICE_IN_OUT_INFO:
        modsinkdir=sys.argv[2]+"/mod_sink"
        if not os.path.exists(modsinkdir):
            os.makedirs(modsinkdir)
        modsink_xml = modsinkdir+"/" + genfunname + "mod_sink.xml"
        curdoc = Document()
        curroot = curdoc.createElement("root")
        curdoc.appendChild(curroot)
        for t in SINK_TYPE_INFO_AST:
            print(t)
            retstr=[""]
            getTypeStr(t,retstr)
            print(retstr[0])
            sinkargnode= curdoc.createElement("sinkarg")
            sinkargnode.setAttribute("type",retstr[0])
            curroot.appendChild(sinkargnode)
        with open(modsink_xml, 'w') as f:
            f.write(curdoc.toprettyxml(indent=' '))
            f.close()

    if is_gen_xml:

        """
        需要数据流分析的类型，不需要数据流分析的类型
        """

        """解析sec_filename.xml"""
        finally_xmlfile = '../../meta_data/sec_xmlfile/' + genfunname+".xml"
        sec_doc = parse(finally_xmlfile)
        sec_root = sec_doc.documentElement
        sec_decl=sec_root.getElementsByTagName("decl")

        if is_dfa:
            print(dfa_srcvarname[0])
            """
            将srcinfo保存到dfa_input.xml中
            clang 编译 dfa_filelist_c中的文件到.ll
            调用数据流分析获得安全级信息存放dfa_out.xml中
            解析dfa_output.xml获得安全级信息
            解析sec_temp.xml，在文件中标记安全级信息
            """
            saveinfo_input_xml(dfa_functionlist, dfa_srcfunname, dfa_srcline, dfa_srcvarname)

            pro_path = get_project_path(srcinfo[2])
            dfa_filelist_ll = []
            parse_c_to_ll(pro_path,dfa_filelist_c,dfa_filelist_ll)

            dfa_command = "/home/raoxue/Desktop/binary/svf-ex"
            for llfile in dfa_filelist_ll:
                dfa_command = dfa_command + " " + llfile
            print("dfa_command....")
            print(dfa_command)

            (status1, output1) = subprocess.getstatusoutput(dfa_command)
            if status1 == 0:
                pass
                """将安全数据添加到sec_filename.xml"""

                """解析dfa_output.xml"""
                dfa_output="dfa_output.xml"
                doc = parse(dfa_output)
                root = doc.documentElement
                structlist = root.getElementsByTagName('structvar')
                locarlist = root.getElementsByTagName('localvar')
                globallist= root.getElementsByTagName("globalvar")


                """创建function元素，并修改locallist中的元素安全级为H"""
                localnamelist=[]
                for ele in locarlist:
                    elename=ele.getAttribute("name")
                    localnamelist.append(elename)
                create_xml_function(sec_doc,sec_root, genfunname,localnamelist)

                """检查structlist中的元素修改相应的元素为H"""
                if len(structlist)>0:
                    for sele in structlist:
                        structname=sele.getAttribute("struct_name")
                        memname=sele.getAttribute("member_name")

                        for sd in sec_decl:
                            sdname=sd.getAttribute("name")
                            if sdname==structname:
                                varlist=sd.getElementsByTagName("variable")
                                for var in varlist:
                                    vname=var.getAttribute("name")
                                    if vname==memname:
                                        var.setAttribute("level","H")
                                        break
                                break
                """检查并修改globallist中的元素修改相应的元素为'H'"""
                if len(globallist)>0:
                    for gele in globallist:
                        gname=gele.getAttribute("name")
                        for sd in sec_decl:
                            sdname=sd.getAttribute("name")
                            if sdname==gname:
                                varlist=sd.getElementsByTagName("variable")
                                for var in varlist:
                                    vname=var.getAttribute("name")
                                    if vname==gname:
                                        var.setAttribute("level","H")
                                        break
                                break

        else:
            """
            从ndfa_srcvarname获得安全级信息
            解析sec_temp.xml，在文件中标记安全级信息
            """
            if len(ndfa_srcvarname)>1:
                """pass获得结构体的名字或者pycparser
                找到struct_name 和member_name
                修改相应的结构体成员变量为高安全级"""
                pass
            else:
                if ndfa_srcvarname[0]=="_const_":
                    pass
                else:
                    hvarname=ndfa_srcvarname[0]
                    print("ndfa varname have high level.....")
                    print(hvarname)
                    localnamelist=[hvarname]
                    create_xml_function(sec_doc,sec_root, genfunname,localnamelist)
        """保存修改后的xml文档"""
        with open(finally_xmlfile, 'w') as f:
            f.write(sec_doc.toprettyxml(indent=' '))
            f.close()




def get_last_lineinfo(no):
    """
    获得节点中最后一行以“/home”开头的行信息
    :param no:Node节点
    :return:列表（包含最后一行行信息）
    """
    pathline = []
    nnlabel = no.get("label")[2:-2]
    if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
        pass
    labellist = nnlabel.split("\n")
    for l in labellist:
        if l.startswith('BB'):
            # print(l)
            if ".c:" in l:
                index = l.index(':')
                l1 = l[index+1:]
                pathline.append(l1)
        elif ".c:" in l:
            pathline.append(l)
    return pathline[-1]


def getbb_lastlinenum(ele):
    """
    获取基本块中第一条语句的行号
    :param ele: Node（基本块节点）
    :return: string型的行号
    """
    pathline=[]
    relabel_list = ele.get("label")[2:-2]
    relabellist_list = relabel_list.split("\n")
    relist1_linenum = 0
    for l in relabellist_list:
        if ".c" in l:
            if l.startswith('BB'):
                # print(l)
                index = l.index(':')
                l1 = l[index+1:]
                pathline.append(l1)
            else:
                pathline.append(l)
    lastline=pathline[-1]
    ind=lastline.index(":")
    relist1_linenum=lastline[ind+1:-2]
    return int(relist1_linenum)


def get_lineinfo(no):
    """
    将所有以“/home”开始的行信息添加到列表中（保证列表中的信息不重复）
    :param no:Node节点
    :return:列表（包含不重复的行信息，顺序添加）
    """
    pathline = []
    nnlabel = no.get("label")[2:-2]
    if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
        pass
    labellist = nnlabel.split("\n")
    for l in labellist:
        if l.startswith('BB'):
            # print(l)
            if ".c:" in l:
                index = l.index('.c:')
                l1 = l[index+1:]
                pathline.append(l1)
        elif ".c:" in l and l not in pathline:
            pathline.append(l)
    return pathline


def get_lineinfo_sort(no):
    """
    将所有以“/home”开始的行信息添加到列表中（升序添加不重复）
    :param no:Node节点
    :return:列表（包含不重复且升序的行信息）
    :param no:
    :return:
    """
    pathline = []
    nnlabel = no.get("label")[2:-2]
    if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
        pass
    linenum = -1
    labellist = nnlabel.split("\n")
    for l in labellist:
        if l.startswith('BB'):
            # print(l)
            if ".c:" in l:
                index = l.index(':')
                l1 = l[index+1:]
                # ind = l1.index(":")
                # real_linenum = l1[ind + 1:-2]
                ind = l.index(".c:")
                real_linenum = l[ind+3:-2]
                if int(real_linenum) < linenum:
                    continue
                pathline.append(l1)
                linenum = int(real_linenum)
            else:
                continue
        elif ".c:" in l and l not in pathline:
            ind = l.index(":")
            real_linenum = l[ind + 1:-2]
            # print(real_linenum)
            if int(real_linenum) < linenum:
                print("continue linenum.....")
            else:
                pathline.append(l)
                linenum = int(real_linenum)
    return pathline


def finddecl(child, va, parm_list, flg):
    """
    在函数的参数列表或是函数体中找到变量va的声明语句对应的ast
    :param child: Node，准确的说是函数的的参数声明fun.decl或是函数体fun.body对应的ast
    :param va: string（变量名，代表在代码生成过程中使用但没有声明的变量）
    :param parm_list: 列表（元素是声明语句对应的ast，代表va列表中相应变量的声明语句）
    :param flg: bool值,用于判断变量名va的声明语句是否已经存在于parm_list中
    :return:无
    """
    if child is None:
        return
    if type(child) == c_ast.ParamList:
        for c in child.params:
            if type(c)==c_ast.EllipsisParam:
                continue
            if c.name == va:
                if c in parm_list:
                    flg = True
                    break
                parm_list.append(c)
                flg = True
                break
    else:
        for c in child:
            if type(c) == c_ast.FuncDecl:
                finddecl(c.args, va, parm_list, flg)
            elif type(c) == c_ast.Compound or type(c) == c_ast.For or type(c) == c_ast.While or type(
                    c) == c_ast.DoWhile or type(c) \
                    == c_ast.Switch or type(c) == c_ast.Case or type(c) == c_ast.Default or type(c) == c_ast.If or type(c)==c_ast.Label:
                finddecl(c, va, parm_list, flg)
            else:
                if type(c) == c_ast.Decl:
                    if c.name == va:
                        if c in parm_list:
                            flg = True
                            break
                        parm_list.append(c)
                        flg = True
                        break



def find_in_return(linenum, tempast, funname, varlist, inc_linenum,decl_list):
    if funname in global_return_sta.keys():
        print(global_return_sta)
        tempdic = global_return_sta[funname]
        if linenum in tempdic.keys():
            returnsta = tempdic[linenum][0]
            print("返回值")
            print(returnsta)
            findid(returnsta, varlist,decl_list)
            tempast.append(returnsta)
            if len(inc_linenum) > 0:
                inc_linenum[0] = tempdic[linenum][1]
            else:
                inc_linenum.append(tempdic[linenum][1])

def recur_modidy_funptr(st,nextfunname):
    if type(st)==c_ast.FuncCall:
        st.name.name=nextfunname
    else:
        for subst in st:
            recur_modidy_funptr(subst,nextfunname)

def modify_funptr_name(funast,linenum,nextfunname):
    print("modify_funptr")
    for st in funast:
        last_line = -1
        inc_linenum = []
        get_last_linenum(st, last_line, inc_linenum)
        print(linenum)
        print(inc_linenum[0])
        print(generator.visit(st))
        if len(inc_linenum)>0 and linenum>inc_linenum[0]:
            continue
        elif len(inc_linenum)>0 and linenum==inc_linenum[0]:
            recur_modidy_funptr(st,nextfunname)
            break
        elif len(inc_linenum) > 0 and linenum < inc_linenum[0]:
                modify_funptr_name(st,linenum,nextfunname)


def deal_start_part( startpathlist, startline, endline, dealed_ast, line_ast,  inc_line, gotolabel,
                    labeldefine,  ndfa_srcvarname, dfa_srcfunnme, dfa_srcline,src_fun_list,slice_out_info):
    """
    处理最终路径列表中的startpart部分（包括本身路径单重没有_end节点的情况，将路径拆分出startpart的情况）
    :param blocknamelist: 列表（包含所有未拆分情况下的基本块name）
    :param pathlist:列表（包含拆分果果startpart部分的节点）
    :param startline:int（source行号）
    :param endline:int（sink行号）
    :param dealed_ast:列表（其元素为已经处理过后所返回的ast语句）
    :param line_ast:列表（用于存放最终遍历到的所有ast）
    :param inc_line:
    :return:
    """
    bblocklist = []
    print("new test...start")
    for i in startpathlist:
        bbname = i.get_name()
        bblocklist.append(bbname)
        print(bbname)
        # print(i)
    split_path = []
    split_path_pos(bblocklist, split_path)
    print(split_path)
    print("new test...end")
    for part in split_path:
        start = part[0]
        end = part[-1]
        partpath = startpathlist[start:end + 1]
        startele = partpath[0]
        callerfunname = getfunname(startele)


        tempast = []
        fun_ast_map = {callerfunname: tempast}
        """在第一个part的地方处理字典和已经携带的处理过的ast"""
        # if part == split_path[0]:
        #     if len(dealed_ast) > 0:
        #         for t in dealed_ast:
        #             tempast.append(t)
        varlist = []
        decl_list = []

        print("findast....")
        inc_linenum = []
        if part == split_path[0] and inc_line is not None:
            inc_linenum.append(inc_line)
        print(inc_linenum)

        """split_path[-1]以及split_path[0]都可能是第一个part，所以if..else两个分支都需要处理"""

        if part == split_path[-1]:
            # bodyast.show(showcoord=True)
            ast = parse_to_ast(startele)
            for ext1 in ast.ext:
                if type(ext1) == c_ast.FuncDef and ext1.decl.name == callerfunname:
                    funast = copy.deepcopy(ext1)
                    if is_gen_xml and callerfunname == dfa_srcfunnme:
                        memcpy_ast_list = []
                        get_src_ast(dfa_srcline, funast.body, memcpy_ast_list)
                        memcpy_ast = memcpy_ast_list[0]
                        print("positive order get ndfa_srcname....")
                        get_srcvarname(memcpy_ast, ndfa_srcvarname)
                    break
            bodyast = funast.body
            for ele in partpath:
                bbname = ele.get_name()
                lineinfo_list = get_lineinfo_sort(ele)

                if len(lineinfo_list) == 0:
                    continue

                if part == split_path[0] and ele == partpath[0] and len(dealed_ast)>0:
                    linenum = get_per_linenum(lineinfo_list[0])
                    if len(tempast) == 0:
                        tempast.append(linenum)
                    else:
                        tempast.insert(0, linenum)


                for line in lineinfo_list:
                    if type(line)==type(3):
                        linenum=line
                    else:
                        linenum = get_per_linenum(line)
                    if len(inc_linenum) > 0 and linenum <= inc_linenum[0]:
                        continue
                    # if part == split_path[0] and linenum < startline:
                    #     continue
                    if part == split_path[-1] and linenum > endline:
                        break
                    line_loop_list = []
                    islineloop = judge_line_inloop(callerfunname, linenum, line_loop_list)
                    if islineloop:
                        print("yyyyyyy")
                        line_loop_range = line_loop_list[1]
                        line_loopast = line_loop_list[0]
                        funn = 'BB' + callerfunname + '_start'
                        if funn in blocknamelist:
                            pass
                        else:
                            find_loopid(line_loopast, varlist, decl_list)
                        find_goto_balel(line_loopast, gotolabel, labeldefine)
                        tempast.append(line_loopast)
                        if len(inc_linenum) > 0:
                            inc_linenum[0] = line_loop_range[-1]
                        else:
                            inc_linenum.append(line_loop_range[-1])
                        continue
                    findflag = [False]
                    # for st in bodyast.block_items:
                    #     recurfindline(st, linenum, bbname, bblocklist, varlist, tempast, inc_linenum, gotolabel,
                    #               labeldefine, findflag,decl_list,callerfunname,src_fun_list)
                    recurfindline_pre(bodyast.block_items, linenum, bbname, bblocklist, varlist, tempast, inc_linenum, gotolabel,
                          labeldefine, findflag, decl_list, callerfunname, src_fun_list)
                        # if findflag[0] is True:
                        #     break
                    print(line)
                    print("??calllerfun")
                    print(callerfunname)
                    # print(src_fun_list[-1])
                    if isModSink and endline==linenum:
                        tempast.append(Mod_sinkcall_AST[0])
                        findflag[0]=True
                    if findflag[0] is False and callerfunname !=src_fun_list[-1]:
                        find_in_return(linenum, tempast, callerfunname, varlist, inc_linenum,decl_list)
                    print(tempast)
                print(inc_linenum)
            if GET_SLICE_IN_OUT_INFO or isModSink:
                slice_out_line=endline
                slice_out_funname=callerfunname
                slice_out_file = get_first_lineinfo(startele)
                slice_out_info.append(slice_out_line)
                slice_out_info.append(slice_out_funname)
                slice_out_info.append(slice_out_file)
            if len(dealed_ast) > 0 and part != split_path[0]:
                line_ast.append(fun_ast_map)
            else:
                line_ast.append(fun_ast_map)

        else:
            called_ele = startpathlist[end + 1]
            called_funname = getfunname(called_ele)
            # 判断callend函数所在的基本块和行号
            ret_list = []
            get_bb_linenum_inloop(partpath, called_funname, ret_list, bblocklist)
            if len(ret_list) > 0:
                called_linenum = ret_list[0]
                modify_funptr.append(called_linenum)
                modify_funptr.append(called_funname)
                ast = parse_to_ast(startele)
                for ext1 in ast.ext:
                    if type(ext1) == c_ast.FuncDef and ext1.decl.name == callerfunname:
                        funast = copy.deepcopy(ext1)
                        if is_gen_xml and callerfunname == dfa_srcfunnme:
                            memcpy_ast_list = []
                            get_src_ast(dfa_srcline, funast.body, memcpy_ast_list)
                            memcpy_ast = memcpy_ast_list[0]
                            print("positive order get ndfa_srcname....")
                            get_srcvarname(memcpy_ast, ndfa_srcvarname)
                        break
                bodyast = funast.body

                # modify_funptr_name(funast.body,called_linenum,called_funname)
                """将loop所在的part拆分成两部分"""
                splitindex = ret_list[1]
                curele = startpathlist[splitindex]
                # 判断called函数的行号是否在loop中
                loop_list = []
                curfunname = getfunname(curele)
                print("temp funname...")
                print(curfunname)
                print(called_linenum)
                isloop = judge_line_inloop(curfunname, called_linenum, loop_list)
                if isloop:
                    loop_range = loop_list[1]
                    loopast = loop_list[0]
                    if GET_SLICE_IN_OUT_INFO or isModSink:
                        last_line=-1
                        inc_linenum1 = []
                        get_last_linenum(loopast, last_line, inc_linenum1)
                        slice_out_line = inc_linenum1[0]
                        slice_out_funname=curfunname
                        slice_out_file=get_first_lineinfo(curele)
                        slice_out_info.append(slice_out_line)
                        slice_out_info.append(slice_out_funname)
                        slice_out_info.append(slice_out_file)
                    find_goto_balel(loopast, gotolabel, labeldefine)
                    funn = 'BB' + callerfunname + '_start'
                    if funn in blocknamelist:
                        pass
                    else:
                        find_loopid(loopast, varlist,decl_list)
                    loop_start = loop_range[0]
                    loop_end = loop_range[1]
                    int_loop_range = range(loop_start, loop_end + 1)
                    is_inloop = False
                    for ele in partpath:
                        bbname = ele.get_name()
                        lineinfo_list = get_lineinfo_sort(ele)
                        if len(lineinfo_list) == 0:
                            continue
                        for line in lineinfo_list:
                            linenum = get_per_linenum(line)
                            print("test test new..")
                            print(linenum)
                            print(int_loop_range)
                            if linenum in int_loop_range:
                                print("111")
                                is_inloop = True
                                break
                            else:
                                if len(inc_linenum) > 0 and linenum <= inc_linenum[0]:
                                    print(inc_linenum)
                                    print("222")
                                    continue
                                if part == split_path[0] and linenum < startline:
                                    print("333")
                                    continue
                                if part == split_path[-1] and linenum > endline:
                                    print("444")
                                    break
                                line_loop_list = []
                                print("judege loop...")
                                print(linenum)
                                print(curfunname)
                                islineloop = judge_line_inloop(curfunname, linenum, line_loop_list)
                                if islineloop:
                                    print("yyyyyyy")
                                    line_loop_range = line_loop_list[1]
                                    line_loopast = line_loop_list[0]
                                    funn = 'BB' + callerfunname + '_start'
                                    find_goto_balel(line_loopast, gotolabel, labeldefine)
                                    if funn in blocknamelist:
                                        pass
                                    # elif curfunname not in src_fun_list:
                                    #     pass
                                    else:
                                        print("findlineinloop...")
                                        find_loopid(line_loopast, varlist, decl_list)
                                    tempast.append(line_loopast)
                                    if len(inc_linenum) > 0:
                                        inc_linenum[0] = line_loop_range[-1]
                                    else:
                                        inc_linenum.append(line_loop_range[-1])
                                    continue
                                findflag = [False]
                                recurfindline_pre(bodyast.block_items, linenum, bbname, bblocklist, varlist, tempast, inc_linenum,
                                              gotolabel, labeldefine, findflag,decl_list,callerfunname,src_fun_list)
                                print(line)
                                print("??calllerfun")
                                print(callerfunname)
                                print(src_fun_list[-1])
                                if isModSink and linenum==endline:
                                    tempast.append(Mod_sinkcall_AST[0])
                                    findflag[0]=True
                                if findflag[0] is False and callerfunname !=src_fun_list[-1]:
                                    find_in_return(linenum, tempast, callerfunname, varlist, inc_linenum,decl_list)
                        if is_inloop:
                            tempast.append(loopast)
                            break
                    move_flag = "reverse"
                    print("eeeeeee")
                    print(tempast)
                    next_ast = loop_move(loopast, called_linenum, called_ele, move_flag, None,None,None,None)

                    print("以")
                    print(loopast)
                    print(next_ast)
                    print("fjls")
                    if part == split_path[-2]:
                        pass
                    else:
                        curind = split_path.index(part)
                        tunc_list = split_path[curind + 1:]
                        # 非loop移动
                        for t in tunc_list:
                            if t == tunc_list[-1]:
                                break
                            print("tunc list...")
                            print(tunc_list)
                            startind = t[0]
                            endind = t[1]
                            part_path1 = startpathlist[startind:endind + 1]
                            next_ele = startpathlist[endind + 1]
                            funname = getfunname(next_ele)
                            print(funname)
                            templist = []
                            print(part_path1)
                            get_bb_linenum(part_path1, funname, templist, bblocklist)
                            print("get calledfun linenum...")
                            print(funname)
                            print(templist)
                            if len(templist) > 0:
                                linenum = templist[0]
                                mvflag = "reverse"
                                next_ast = loop_move(loopast, linenum, next_ele, mvflag, None, None, None,
                                                     None)
                                print("after loop....")
                                print(generator.visit(loopast))
                                # next_ast = notloop_move(linenum, next_ast, next_ele, mvflag, None,False,None,None,None)
                    if len(dealed_ast) > 0 and part != split_path[0]:
                        line_ast.append(fun_ast_map)
                    else:
                        line_ast.append(fun_ast_map)
                    print("finlly valist...")
                    print(fun_ast_map)
                    print(varlist)
                    funglobalval=global_dic[callerfunname]
                    find_va_decl(varlist, funast,param_list,  ast)
                    find_va_decl(funglobalval, funast, param_list, ast)

                    break
                else:  # 没有loop
                    print("9999999")
                    for ele in partpath:
                        bbname = ele.get_name()
                        lineinfo_list = get_lineinfo_sort(ele)
                        # if part == split_path[0] and ele == partpath[0] and len(dealed_ast) > 0:
                        #     linenum = get_per_linenum(lineinfo_list[0])
                        #     if len(tempast) == 0:
                        #         tempast.append(linenum)
                        #     else:
                        #         tempast.insert(0, linenum)
                        if part != split_path[-1] and ele == partpath[-2]:
                            lineinfo_list1 = [get_last_lineinfo(ele)]
                            linenum = get_per_linenum(lineinfo_list1[0])
                            if len(tempast) == 0:
                                tempast.append(linenum)
                            else:
                                tempast.insert(0, linenum)
                        if len(lineinfo_list) == 0:
                            continue
                        for line in lineinfo_list:
                            linenum = get_per_linenum(line)

                            if len(inc_linenum) > 0 and linenum <= inc_linenum[0]:
                                continue
                            if part == split_path[0] and linenum < startline:
                                continue
                            if part == split_path[-1] and linenum > endline:
                                break
                            loop_list = []
                            print("judege loop...")
                            print(linenum)
                            print(curfunname)
                            isloop = judge_line_inloop(curfunname, linenum, loop_list)
                            if isloop:
                                print("yyyyyyy")
                                loop_range = loop_list[1]
                                loopast = loop_list[0]
                                funn = 'BB' + callerfunname + '_start'
                                if funn in blocknamelist:
                                    pass
                                # elif curfunname not in src_fun_list:
                                #     pass
                                else:
                                    find_loopid(loopast, varlist, decl_list)
                                find_goto_balel(loopast, gotolabel, labeldefine)
                                tempast.append(loopast)
                                if len(inc_linenum) > 0:
                                    inc_linenum[0] = loop_range[-1]
                                else:
                                    inc_linenum.append(loop_range[-1])
                                continue
                            findflag = [False]
                            recurfindline_pre(bodyast.block_items, linenum, bbname, bblocklist, varlist, tempast, inc_linenum,
                                          gotolabel, labeldefine, findflag,decl_list,callerfunname,src_fun_list)
                            print("??calllerfun")
                            print(callerfunname)
                            print(src_fun_list[-1])
                            if isModSink and linenum == endline and callerfunname==sink_line_funname[1]:
                                tempast.append(Mod_sinkcall_AST[0])
                                findflag[0] = True
                            if findflag[0] is False and callerfunname != src_fun_list[-1]:
                                find_in_return(linenum, tempast, callerfunname, varlist, inc_linenum,decl_list)
                    if len(dealed_ast)>0 and part != split_path[0]:
                        line_ast.append(fun_ast_map)
                    else:
                        line_ast.append(fun_ast_map)

        if len(dealed_ast)>0 and part == split_path[0]:
            temp_lineast=dealed_ast[-1]
            print("test endpart")
            print(temp_lineast)
            tempfunname=list(temp_lineast[-1].keys())[0]
            print (generator.visit(fun_ast_map[list(fun_ast_map.keys())[0]][1]))

            if tempfunname not in generator.visit(fun_ast_map[list(fun_ast_map.keys())[0]][1]):
                final_list = move_code_endpart(temp_lineast)
                if len(dealed_ast)>1:
                    final_list.insert(0,dealed_ast[0])
                i_num=1
                for t in final_list:
                    tempast.insert(i_num,t)
                    i_num=i_num+1
            else:
                temp_lineast.append(fun_ast_map)
                print(temp_lineast)
                final_list=move_code_endpart(temp_lineast)
                print("after move_code")
                print(final_list)
                if len(dealed_ast)>1:
                    final_list.insert(0,dealed_ast[0])
                temp_fun_ast_map={callerfunname:final_list}
                line_ast.append(temp_fun_ast_map)


        funglobalval=global_dic[callerfunname]
        print("finlly valist...")
        print(varlist)
        find_va_decl(varlist, funast,param_list,  ast)
        find_va_decl(funglobalval,funast,param_list,ast)

def getfunname(ele):
    """
    获取此基本块所属函数的函数名re
    :param ele:Node（基本块）
    :return:string(函数名）
    """
    elename = ele.get_name()
    print(elename)
    if "_ll_" in elename:
        ind=elename.index("_ll_")
    else:
        ind=elename.index("")
    if elename.endswith("_start"):
        funname = elename[ind+4:-6]
    elif elename.endswith("_end"):
        funname = elename[ind+4:-4]
    else:
        inde = elename.rindex("BB")
        funname = elename[ind+4:inde]
    return funname

def get_file_funname(blockname):
    """
    从节点name中获取函数名
    :param blockname: Node的name
    :return:
    """
    if blockname.endswith("_start"):
        funname = blockname[2:-6]
    elif blockname.endswith("_end"):
        funname = blockname[2:-4]
    else:
        inde = blockname.rindex("BB")
        funname = blockname[:inde]
    return funname


def get_classifypath_key(pathlist):
    """
    获取每条路径的key值，key值是在本函数中进行构造的。
    新：添加call语句的位置
    :param pathlist: 列表（一条路径，其元素是一系列的基本块）
    :return: string(key值）
    """
    p1 = pathlist[0]
    prefunname = getfunname(p1)
    prebbname = p1.get_name()
    k = 1
    key = prefunname + "_" + str(k)
    for i in range(1, len(pathlist)):
        curp = pathlist[i]
        curfunname = getfunname(curp)
        curbbname = curp.get_name()
        if prebbname.endswith("_start") or prebbname.endswith("_end"):
            k = k + 1
            # key = key + "_"+curfunname + "_" + str(k)
            # if prebbname.endswith("_end"): #新加
            #     k=getbb_lastlinenum(curp) #新加
            key = key + "_" + prebbname + "_" + curfunname + "_" + str(k)
            prebbname = curbbname
        else:
            prebbname = curbbname
    return key


def get_first_lineinfo(ele):
    """
    获取基本块中第一条语句的行信息（以绝对路径显示的）
    :param ele: Node（基本块节点）
    :return: string（行信息）
    """
    relabel_list = ele.get("label")[2:-2]
    relabellist_list = relabel_list.split("\n")
    relist1_linenum = 0
    for l in relabellist_list:
        if "/home/" in l:
            if l.startswith('BB'):
                index = l.index('/home/')
                l1 = l[index:]
                return l1
            else:
                return l
        elif l.startswith("."):
            return l


def getlinenum(ele):
    """
    获取基本块中第一条语句的行号
    :param ele: Node（基本块节点）
    :return: string型的行号
    """
    relabel_list = ele.get("label")[2:-2]
    relabellist_list = relabel_list.split("\n")
    relist1_linenum = 0
    for l in relabellist_list:
        if ".c:" in l:
            if l.startswith('BB'):
                # print(l)
                # index = l.index('/home/')
                # l1 = l[index:]
                ind = l.index(".c:")
                relist1_linenum = l[ind + 3:-2]
                break
            else:
                ind = l.index(":")
                relist1_linenum = l[ind + 1:-2]
                break
    return int(relist1_linenum)


def get_per_linenum(lineinfo):
    """
    根据行信息获取行号
    :param lineinfo: 字符串（以绝对路径显示的一条行信息，包含路径名，文件名，行号等）
    :return: int整数（代表行号）
    """
    if lineinfo.startswith('BB'):
        # index = lineinfo.index('.c:')
        # l1 = lineinfo[index:]
        ind = lineinfo.index(".c:")
        relist1_linenum = int(lineinfo[ind + 3:-2])
    else:
        ind = lineinfo.index(":")
        relist1_linenum = int(lineinfo[ind + 1:-2])
    return int(relist1_linenum)


def part_sort(templist):
    """
    对路径的子区间进行升序处理
    :param templist: 列表（代表路径的一个子区间，元素是一些基本块）
    :return: 列表（升序后的路径子区间）
    """
    sort_templist = []
    # print("sort temp...")
    for temp_ele in templist:
        tname = temp_ele.get_name()
        temp_linenum = getlinenum(temp_ele)
        # print(temp_linenum)
        # for i in sort_templist:
        #     print(i.get_name())
        # print()
        if temp_ele == templist[0]:
            sort_templist.append(temp_ele)
            continue
        elif tname.endswith("_start") or tname.endswith("_end"):
            sort_templist.append(temp_ele)
            continue
        elif temp_linenum == 0:
            continue
        else:
            if len(sort_templist) == 0:
                sort_templist.append(temp_ele)
            else:
                ret_temp = sort_templist[-1]
                ret_linenmu = getlinenum(ret_temp)
                if temp_linenum > ret_linenmu:
                    sort_templist.append(temp_ele)
                elif temp_linenum == ret_linenmu:
                    sort_templist.append(temp_ele)
                    continue
                else:
                    for rev in sort_templist[::-1]:
                        rev_linenum = getlinenum(rev)
                        if rev == sort_templist[0] and rev_linenum > temp_linenum:
                            sort_templist.insert(0, temp_ele)
                            break

                        elif rev_linenum < temp_linenum:
                            rev_ind = sort_templist.index(rev)
                            sort_templist.insert(rev_ind + 1, temp_ele)
                            break
                        elif rev_linenum == temp_linenum:
                            rev_ind = sort_templist.index(rev)
                            sort_templist.insert(rev_ind + 1, temp_ele)
                            break
                        elif rev_linenum > temp_linenum:
                            continue
    return sort_templist


def sort_deup1(pa):
    """
    对一条路径按照行号进行升序操作，将路径根据end或start划分成不同的子区间，
    调用sort_part对每一个子区间进行升序，在保证每个子区间都是升序的情况下，
    整条路径自然是升序的。
    :param pa:列表（代表一条路径，元素是一些基本块）
    :return:列表（升序后的路径）
    """
    sort_pa = []
    split_list = []
    pabblist = []
    for p in pa:
        pname = p.get_name()
        pabblist.append(pname)
    split_path_pos(pabblist, split_list)
    split_len = len(split_list)
    for i in range(0, split_len):
        part = split_list[i]
        start = part[0]
        end = part[1]
        per_part = pa[start:end + 1]
        sort_list = part_sort(per_part)
        # print("sort deup1....")
        for ele in sort_list:
            sort_pa.append(ele)
            # print(ele.get_name())
        # print()

    return sort_pa


def merge_two_list_part(list1, list2):
    """
    合并两条路径，两条路径所属的子区间相同，且已经做好升序排列
    :param list1: 列表（包含某一个路径子区间的基本块）
    :param list2: 列表（包含某一个路径子区间的基本块）
    :return:列表（合并后的子区间路径）
    """
    templist = []
    start_end = list1[-1]
    start_end_name = start_end.get_name()
    flag = False
    if start_end_name.endswith("_end") or start_end_name.endswith("_start"):
        templist1 = list1[0:-1]
        templist2 = list2[0:-1]
        flag = True
    else:
        templist1 = list1
        templist2 = list2
    lenlist1 = len(templist1)
    lenlist2 = len(templist2)
    pt1 = 0
    pt2 = 0
    while (1):
        if pt1 == lenlist1 and pt2 != lenlist2:
            for i in range(pt2, lenlist2):
                tempe = list2[i]
                templist.append(tempe)
            break
        elif pt1 == lenlist1 and pt2 == lenlist2:
            break
        elif pt1 < lenlist1 and pt2 == lenlist2:
            for i in range(pt1, lenlist1):
                tempe = list1[i]
                templist.append(tempe)
            break

        e1 = templist1[pt1]
        e2 = templist2[pt2]
        e1line = getlinenum(e1)
        e2line = getlinenum(e2)

        if e1line == e2line:
            templist.append(e1)
            pt1 = pt1 + 1
            pt2 = pt2 + 1
            continue
        elif e1line < e2line:
            templist.append(e1)
            pt1 = pt1 + 1
            continue
        else:
            templist.append(e2)
            pt2 = pt2 + 1
            continue
    if flag:
        templist.append(start_end)
    return templist


def merge_two_list(list1, list2):
    """
    合并两条路径，两条路径的key值相同，将路径划分成不同的子区间，调用merge_two_list_part合并子区间，
    在保证每个子区间都合并好之后两条路径也就完成了合并
    :param list1: 列表（一条路径，包含基本块）
    :param list2: 列表（一条路径，包含基本块）
    :return:列表（合并后的路径）
    """
    split_list1 = []
    split_list2 = []
    bblist1 = []
    bblist2 = []
    for l in list1:
        bname = l.get_name()
        bblist1.append(bname)
    for l in list2:
        bname = l.get_name()
        bblist2.append(bname)
    split_path_pos(bblist1, split_list1)
    split_path_pos(bblist2, split_list2)
    part_len = len(split_list2)
    merge_list = []
    for i in range(0, part_len):
        list1_part = split_list1[i]
        list2_part = split_list2[i]
        list1_start = list1_part[0]
        list1_end = list1_part[1]
        list2_start = list2_part[0]
        list2_end = list2_part[1]
        part_list1 = list1[list1_start:list1_end + 1]
        part_list2 = list2[list2_start:list2_end + 1]
        templist = merge_two_list_part(part_list1, part_list2)
        for te in templist:
            merge_list.append(te)
    return merge_list


def split_path_pos(blocknamelist, split_pathlist):
    """
    将路径按照end标识和start标识拆分为不同的区间
    :param pathlist: 列表（包含所有基本块的名字）
    :param split_pathlist: 列表（其元素为不同的区间，每个区间是一个列表，包含起始索引和终止索引）
    :return:无
    """
    start = 0
    end = start
    for p in blocknamelist:
        if p.endswith("_end"):
            templist = [start, end]
            split_pathlist.append(templist)
            end = end + 1
            start = end
        elif p.endswith("_start"):
            templist = [start, end]
            split_pathlist.append(templist)
            end = end + 1
            start = end
        else:
            end = end + 1
        if p == blocknamelist[-1]:
            templist = [start, end - 1]
            split_pathlist.append(templist)


def loop_move(loopast, linenum, ele, re_po_flat, dfa_srcvarname,dfa_srcline,dfa_filelist_c,dfa_functionlist):
    """
    loopast是loop所在的区间（不论是不是（正倒序都可以）），将相邻的called函数移动到loop中相应的位置
    :param loopast: 对应与主调函数中loop的ast
    :param linenum: called函数所在的行号
    :param ele: called函数中的一个基本块
    :return: ext1.body.block_items
    """
    tempast = parse_to_ast(ele)
    funname = getfunname(ele)
    for ext1 in tempast.ext:
        if type(ext1) == c_ast.FuncDef and ext1.decl.name == funname:
            # deal_return(ext1, funname)
            next_ast = ext1.body.block_items
            if is_gen_xml and dfa_srcline is not None:
                print("reverse loop endlist have two part get dfa_srcname....")
                memcpy_ast_list=[]
                get_src_ast(dfa_srcline, ext1.body,memcpy_ast_list)
                memcpy_ast =memcpy_ast_list[0]
                get_srcvarname(memcpy_ast, dfa_srcvarname)
                print("srcname in loop_move....")
                print(dfa_srcvarname[0])
                temp_c_file = get_c_filename(ele)
                curfunname=getfunname(ele)
                if temp_c_file not in dfa_filelist_c:
                    dfa_filelist_c.append(temp_c_file)
                dfa_functionlist.append(curfunname)

            rdic = []
            print("flag....")
            print(loopast)
            print(linenum)
            print(funname)
            find_called_fun(loopast, linenum, funname, rdic)
            print("womendouyiyang..")
            print(rdic)
            print("wo....")
            if len(rdic) > 0:
                compoundst = re_move_code(rdic, funname, next_ast, re_po_flat)
                print("compoundst....1")
                print(compoundst)
                return compoundst
            break


def judge_line_inloop(funname, startlinenum, ret_list):
    """
    判断called函数调用的行号是否在一个loop中
    :param funname:主调函数的函数名
    :param startlinenum: called函数所在行号
    :param ret_list: 返回列表，返回loop对应的ast
    :return:bool值
    """
    isloop = False
    if funname in fun_loop.keys():
        for tempkey in fun_loop.keys():
            if len(fun_loop[tempkey])>0:
                for loop in fun_loop[tempkey]:
                    loopkey=loop.keys()
        for loop in fun_loop[funname]:
            loopkey = list(loop.keys())[0].split(":")
            start = int(loopkey[0])
            end = int(loopkey[1])
            templist = list(range(start, end+1))
            print(templist)
            if int(startlinenum) in templist:
                onlyloopast = copy.deepcopy(loop[list(loop.keys())[0]])
                if type(onlyloopast)==c_ast.If:
                    condast=onlyloopast.cond
                    startline=condast.coord
                    startline=int(str(condast.coord).split(":")[1])
                    last_num=-1
                    inc_line=[]
                    get_last_linenum(condast,last_num,inc_line)
                    last_nmu=inc_line[0]
                    cond_line_list=list(range(startline,last_nmu+1))
                    if int(startlinenum) in cond_line_list:
                        break
                loop_list = [start, end]
                ret_list.append(onlyloopast)
                ret_list.append(loop_list)
                isloop = True
                break
    return isloop


def get_bb_linenum_inloop(part_path, called_funname, ret_list, bblocklist):
    """
    在区间中找被调用函数，并获取被调用函数的行号
    :param part_path: 子区间（包含一些基本块）
    :param called_funname: called函数的函数名
    :param ret_list: 返回值列表，包含行号和ccalled函数所在基本块在整个基本kuai列表中的索引
    :param bblocklist:基本块的name列表
    :return:无
    """
    """获取子区间中对called函数调用所在的行号"""

    # n = 0
    for p in part_path:
        if p.get_name().endswith("_end") or p.get_name().endswith("_start"):
            # n = n + 1
            continue
        else:
            linenum = get_bb_last_num(p, called_funname)
            if linenum > 0:
                ret_list.append(linenum)
                ind = bblocklist.index(p.get_name())
                ret_list.append(ind)
                break
            # n = n + 1
    # ret_list.append(n)


def get_bb_linenum(part_path, called_funname, ret_list, bblocklist):
    """
    在区间中找被调用函数，并获取被调用函数的行号
    :param part_path: 子区间（包含一些基本块）
    :param called_funname: called函数的函数名
    :param ret_list: 返回值列表，包含行号和ccalled函数所在基本块在整个基本款列表中的索引
    :param bblocklist:基本块的name列表
    :return:无
    """
    """获取子区间中对called函数调用所在的行号"""
    for n in part_path:
        print(n.get_name())
        if n.get_name().endswith("_end") or n.get_name().endswith("_start"):
            continue
        else:
            linenum = get_bb_last_num(n, called_funname)
            if linenum > 0:
                print("target block...")
                print(n)
                print(linenum)
                print(ret_list)

                ret_list.append(linenum)
                ind = bblocklist.index(n.get_name())
                ret_list.append(ind)
                print(ret_list)
                break


def isincludefuncall1(l, nextfunname, rdic, depth, linenum, parent_node):
    """
    根据called函数名和行号判断对应于每一条语句的ast中是否包含被调用函数，
    如果存在，保存这条语句的父节点，当前语句的索引，类型，以及所找到函数的实参到rdic列表中
    :param l: c语句对应的ast
    :param nextfunname: 被调用函数的函数名
    :param rdic: 返回值列表（父节点，called函数所在的节点在父节点中的索引，called函数的类型（basic，ifcond），实参列表）
    :param depth: 递归深度
    :param linenum: 被调用函数所在的行号
    :param parent_node: 参数l的父节点
    :return:无
    """
    """为了得到每一种语句的父节点"""
    depth = depth + 1
    statetype = type(l)
    if statetype == c_ast.If:
        cond = l.cond
        funlist = []
        is_have_funcall(nextfunname, cond, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("ifcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('ifcond')
                get_actual_parm(funcall, rdic)
                return

        iftrue = l.iftrue
        if iftrue is not None:
            if type(iftrue) == c_ast.Compound:
                pass
            else:
                l.iftrue = c_ast.Compound(block_items=[iftrue])
            if l.iftrue.block_items is None:
                pass
            else:
                for ele in l.iftrue.block_items:
                    eletype = type(ele)
                    if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                        isincludefuncall1(ele, nextfunname, rdic, depth, linenum, l.iftrue.block_items)
                    else:
                        funlist = []
                        is_have_funcall(nextfunname, ele, linenum, funlist)
                        if len(funlist) > 0:
                            funcall = funlist[1]
                            rdic.append(l.iftrue.block_items)
                            ind = l.iftrue.block_items.index(ele)
                            rdic.append(ind)
                            rdic.append('basic')
                            get_actual_parm(funcall, rdic)
                            return
        else:
            pass

        iffalse = l.iffalse
        if iffalse is None:
            pass
        else:
            iffalsetype = type(iffalse)
            if iffalsetype == c_ast.Compound:
                pass
            else:
                l.iffalse = c_ast.Compound(block_items=[iffalse])
            if l.iffalse.block_items is None:
                pass
            else:
                for ele in l.iffalse.block_items:
                    eletype = type(ele)
                    if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                        isincludefuncall1(ele, nextfunname, rdic, depth, linenum, l.iffalse.block_items)
                    else:
                        funlist = []
                        is_have_funcall(nextfunname, ele, linenum, funlist)
                        if len(funlist) > 0:
                            funcall = funlist[1]
                            rdic.append(l.iffalse.block_items)
                            ind = l.iffalse.block_items.index(ele)
                            rdic.append(ind)
                            rdic.append('basic')
                            get_actual_parm(funcall, rdic)
                            return

    elif statetype == c_ast.For:
        init = l.init
        funlist = []
        is_have_funcall(nextfunname, init, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("loopcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('loopcond')
                get_actual_parm(funcall, rdic)
                return

        cond = l.cond
        funlist = []
        is_have_funcall(nextfunname, cond, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("loopcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('loopcond')
                get_actual_parm(funcall, rdic)
                return

        next = l.next
        funlist = []
        is_have_funcall(nextfunname, next, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("loopcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('loopcond')
                get_actual_parm(funcall, rdic)
                return

        stmt = l.stmt
        if type(stmt) == c_ast.Compound:
            pass
        else:
            l.stmt = c_ast.Compound(block_items=[stmt])
        for ele in l.stmt.block_items:
            eletype = type(ele)
            if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                isincludefuncall1(ele, nextfunname, rdic, depth, linenum, l.stmt.block_items)
            else:
                funlist = []
                is_have_funcall(nextfunname, ele, linenum, funlist)
                if len(funlist) > 0:
                    funcall = funlist[1]
                    rdic.append(l.stmt.block_items)
                    ind = l.stmt.block_items.index(ele)
                    rdic.append(ind)
                    rdic.append("basic")
                    get_actual_parm(funcall, rdic)
                    return

    elif statetype == c_ast.Compound:
        for ele in l.block_items:
            eletype = type(ele)
            if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                isincludefuncall1(ele, nextfunname, rdic, depth, linenum, l.block_items)
            else:
                funlist = []
                is_have_funcall(nextfunname, ele, linenum, funlist)
                if len(funlist) > 0:
                    funcall = funlist[1]
                    rdic.append(l.block_items)
                    ind = l.block_items.index(ele)
                    rdic.append(ind)
                    rdic.append("basic")
                    get_actual_parm(funcall, rdic)
                    return
    elif statetype == c_ast.While or statetype == c_ast.DoWhile:
        cond = l.cond
        funlist = []
        is_have_funcall(nextfunname, cond, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("loopcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('loopcond')
                get_actual_parm(funcall, rdic)
                return

        stmt = l.stmt
        if type(stmt) == c_ast.Compound:
            pass
        else:
            l.stmt = c_ast.Compound(block_items=[stmt])
        for ele in l.stmt.block_items:
            eletype = type(ele)
            if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                isincludefuncall1(ele, nextfunname, rdic, depth, linenum, l.stmt.block_items)
            else:
                funlist = []
                is_have_funcall(nextfunname, ele, linenum, funlist)
                if len(funlist) > 0:
                    funcall = funlist[1]
                    rdic.append(l.stmt.block_items)
                    ind = l.stmt.block_items.index(ele)
                    rdic.append(ind)
                    rdic.append("basic")

                    get_actual_parm(funcall, rdic)
                    return

    elif statetype == c_ast.Switch:
        cond = l.cond
        funlist = []
        is_have_funcall(nextfunname, cond, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("ifcond")
                get_actual_parm(funcall, rdic)
                return
            else:
                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('ifcond')
                get_actual_parm(funcall, rdic)
                return

        stmt = l.stmt
        for ele in stmt.block_items:
            eletype = type(ele)
            if eletype == c_ast.Case or eletype == c_ast.Default:
                for caseele in ele.stmts:
                    eletype = type(caseele)
                    if eletype == c_ast.If or eletype == c_ast.For or eletype == c_ast.While or eletype == c_ast.DoWhile or eletype == c_ast.Switch or eletype == c_ast.Compound:
                        isincludefuncall1(caseele, nextfunname, rdic, depth, linenum, ele.stmts)
                    else:
                        funlist = []
                        is_have_funcall(nextfunname, caseele, linenum, funlist)
                        if len(funlist) > 0:
                            funcall = funlist[1]
                            rdic.append(ele.stmts)
                            ind = ele.stmts.index(caseele)
                            rdic.append(ind)
                            rdic.append('basic')
                            get_actual_parm(funcall, rdic)
                            return
    else:
        funlist = []
        is_have_funcall(nextfunname, l, linenum, funlist)
        if len(funlist) > 0:
            funcall = funlist[1]
            if depth == 1:
                rdic.append('null')
                rdic.append('null')
                rdic.append("basic")
                get_actual_parm(funcall, rdic)
                return
            else:

                rdic.append(parent_node)
                ind = parent_node.index(l)
                rdic.append(ind)
                rdic.append('basic')
                print("parent and child.....6")
                print("parent and child.....6")
                get_actual_parm(funcall, rdic)
                return



def judge_path(flist):
    """
    判断一条路径是否合理（是否是按照_end节点在前，_start节点在后的规律）
    :param flist: 一条合并后的路径
    :return: bool值（代表路径是否正确）
    """
    flag = False
    for p in flist:
        tempname = p.get_name()
        if flag is False and tempname.endswith("_start"):
            flag = True
        elif flag is True and tempname.endswith("_end"):
            flag = False
    return True

def get_blocknamelist():
    """
    根据control flow pathflist
    获得对应的基本块nodename列表
    """
    for i in flist:
        bbname = i.get_name()
        if bbname in blocknamelist:
            continue
        else:
            blocknamelist.append(bbname)

def get_fileinfo():
    """获得觉得路径文件名和绝对路径"""
    funlist=[]
    for ele in flist:
        funname = getfunname(ele)
        if ele.get_name().endswith("_start") or ele.get_name().endswith("_end"):
            continue
        if funname in funlist:
            continue
        funlist.append(funname)
        startline = get_first_lineinfo(ele)  # 取第一行
        print(ele)
        rindex = startline.rfind(":")
        rslash = startline.rfind("/")
        #filename = startline[rslash + 1:rindex]  # 相对路径filename
        absfilename= startline[:rindex]  # 绝对路径filename
        absfpath = startline[:rslash]
        # if "./" in absfilename:
        #     continue
        absfilenam_abspath_map[absfilename]=absfpath

def get_all_linenum():
    """获得行号信息linenumdic{funname：[linenumset]}"""
    for ele in flist:
        lineinfolist=get_lineinfo_sort(ele)
        funname=getfunname(ele)
        if funname not in funname_lineset_map.keys():
            funname_lineset_map[funname]=[]
        if len(lineinfolist)>0:
            for line in lineinfolist:
                linenum=get_per_linenum(line)
                if linenum not in funname_lineset_map[funname]:
                    funname_lineset_map[funname].append(linenum)


def get_desend_chain():
    for ele in flist:
        funname=getfunname(ele)
        if ele.get_name().endswith("_start"):
            break
        if funname not in desend_chain:
            desend_chain.append(funname)
    #desend_chain.reverse()

def get_increase_chain():
    rflist=copy.deepcopy(flist)
    rflist.reverse()
    for ele in rflist:
        funname=getfunname(ele)
        if ele.get_name().endswith("_end"):
            break
        if funname not in increase_chain:
            increase_chain.append(funname)
    #increase_chain.reverse()

def get_fileast():

    for key in absfilenam_abspath_map.keys():
        absfilename=key
        if "/./" in absfilename:
            continue
        abspath=absfilenam_abspath_map[key]
        if abspath.startswith("."):
            abspath=sys.argv[2]+"/source_code"
        fake_include = "../../utils/fake_libc_include"
        abs_fake_include = os.path.abspath(fake_include)
        if key not in absfilename_fileast_map.keys():
            command1 = "cd " + abspath + ";gcc -E -DINCLUDEMAIN " + absfilename + " " + sys.argv[3] + " -I" + abs_fake_include + " " + \
                       sys.argv[4] + " >fun1"
            print(command1)
            (status, output) = subprocess.getstatusoutput(command1)
            tempast = parse_file(abspath + '/fun1', use_cpp=True)
            # print("parse fileast...")
            # print(generator.visit(tempast))
            absfilename_fileast_map[absfilename]=tempast

def get_function_filename_map():
    for ele in flist:
        if ele.get_name().endswith("_start") or ele.get_name().endswith("_end"):
            continue
        funname = getfunname(ele)
        if funname not in fun_file_map.keys():
            startline = get_first_lineinfo(ele)  # 取第一行
            rindex = startline.rfind(":")
            absfilename = startline[:rindex]  # 绝对路径filename
            # if "./" in absfilename:
            #     continue
            fun_file_map[funname] = absfilename

def get_fun_funast_map():
    for funname in funsig_funnamelist:
        if funname in fun_file_map:
            absfilename=fun_file_map[funname]
            if "/./" not in absfilename:
                # continue
                fileast=absfilename_fileast_map[absfilename]
                for subast in fileast.ext:
                    if type(subast) == c_ast.FuncDef and subast.decl.name == funname:
                        funast = copy.deepcopy(subast)
                        fun_funast_map[funname]=funast
                        break
            else:
                for key in fun_file_map.keys():
                    absfilename = fun_file_map[key]
                    if absfilename not in absfilename_fileast_map.keys():
                        continue
                    fileast = absfilename_fileast_map[absfilename]
                    isfind=False
                    for subast in fileast.ext:
                        if type(subast) == c_ast.FuncDef and subast.decl.name == funname:
                            funast = copy.deepcopy(subast)
                            fun_funast_map[funname] = funast
                            isfind=True
                            break
                    if isfind:
                        break

def get_global_var_declast_map():
   for filename in absfilename_fileast_map:
       fileast=absfilename_fileast_map[filename]
       for func in fileast.ext:
        if type(func) == c_ast.Decl and type(func.type) != c_ast.FuncDecl and func.name not in global_vaname_declast_map.keys():
            global_vaname_declast_map[func.name]=func
            globalv_list.append(func.name)

def modify_sta(sta,fsta,raw_mod_var_map,funname):
    """
    修改sta中的def和use为新的变量名
    改版：将sta的父节点也作为参数，当sta为一条完整的语句是，父节点为None
    :param sta: 待进行ssa修改的ast子句
    :param fsta sta子句的上一级ast子句（可能是完整的）
    :param raw_mod_var_map:函数中原始变量名要要修改的变量名的映射
    :param funname:
    :return:
    """
    i=sta
    if type(i) == type(3) or i is None:
        return
    elif type(i) == c_ast.Decl:
        #声明语句类型要修改其定义和初始化，根据声明类型的不同对子结构的处理不同，所有需要分类讨论

        print("vardecl..")
        print(sta)
        if i.name not in raw_mod_var_map.keys():
            return
        oldname = i.name
        newname = raw_mod_var_map[i.name]
        i.name = newname
        if type(i.type) == c_ast.PtrDecl: #对指针类型的修改
            if type(i.type.type) == c_ast.FuncDecl: #函数指针类型
                i.type.type.type.declname = newname
            elif type(i.type.type) == c_ast.PtrDecl: #二级指针
                i.type.type.type.declname = newname
            else: #一级普通指针
                 i.type.type.declname = newname
        elif type(i.type) == c_ast.ArrayDecl: #数组声明类型
            if type(i.type.type) == c_ast.PtrDecl: #指针数组类型
                i.type.type.type.declname = newname
            else: #标注数组
                 i.type.type.declname = newname
            if type(i.type.dim)!=c_ast.Constant: #当数组大小不为常量的时候对子语句进行修改
                modify_sta(i.type.dim,i.type, raw_mod_var_map, funname)
        elif type(i.type) == c_ast.FuncDecl: #函数声明类型
            i.type.type.type.declname = newname
        else:
            i.type.declname = newname
        ###以下部分为对初始化部分的修改
        if type(i.init) == c_ast.FuncCall:
            modify_sta(i.init, i, raw_mod_var_map,funname)
        elif type(i.init) == c_ast.ID:
            #以下if和elif部分的代码无效，不会被执行
            if type(i) == c_ast.FuncCall: #当是函数调用是不修改
                return
            elif type(i) == c_ast.StructRef: #当是结构体使用的时候
                oldname = i.init.name
                if oldname in raw_mod_var_map.keys():
                    if oldname == i.name.name:
                        newname = raw_mod_var_map[oldname]
                        i.init.name = newname
                    elif oldname == i.field.name:
                        pass
            else:
                oldname = i.init.name
                if oldname in raw_mod_var_map.keys():
                    newname = raw_mod_var_map[oldname]
                    i.init.name = newname
                    return
                else:
                    return
        elif type(i.init) == c_ast.StructRef:
            tempnode = i.init
            if type(tempnode.name) == c_ast.StructRef:
                modify_sta(tempnode,i,raw_mod_var_map,funname)
                return
            oldname = i.init.name.name
            if oldname in raw_mod_var_map.keys():
                if oldname == i.init.name.name:
                    newname = raw_mod_var_map[oldname]
                    i.init.name.name = newname
                elif oldname == i.init.field.name:
                    pass
                return
        elif type(i.init) == c_ast.BinaryOp:
            modify_sta(i.init.left, i.init,raw_mod_var_map,funname)
            modify_sta(i.init.right,i.init, raw_mod_var_map,funname)
        elif type(i.init) == c_ast.UnaryOp:
            if type(i.init.expr) == c_ast.Constant:
                return
            elif type(i.init.expr) == c_ast.StructRef or type(i.init.expr) == c_ast.ArrayRef or type(i.init.expr) == c_ast.Cast or type(i.init.expr) == c_ast.UnaryOp:
                modify_sta(i.init.expr,i.init, raw_mod_var_map,funname)
                return
            oldname = i.init.expr.name
            if oldname in raw_mod_var_map.keys():
                newname = raw_mod_var_map[oldname]
                i.init.expr.name = newname
            return
        elif type(i.init) == c_ast.Cast:
            modify_sta(i.init,i, raw_mod_var_map,funname)
            return
        elif type(i.init) == c_ast.ArrayRef:
            if type(i.init.name) == c_ast.StructRef:
                modify_sta(i.init.name,i.init, raw_mod_var_map,funname)
                return
            oldname = i.init.name.name
            if oldname in raw_mod_var_map.keys():
                newname = raw_mod_var_map[oldname]
                i.init.name.name = newname
            if type(i.init.subscript) !=c_ast.Constant:
                if type(i.init.subscript) == c_ast.UnaryOp:
                    oldname = i.init.subscript.expr.name
                    if oldname in raw_mod_var_map.keys():
                        newname = raw_mod_var_map[oldname]
                        i.init.subscript.expr.name = newname
                else:
                    oldname = i.init.subscript.name
                    if oldname in raw_mod_var_map.keys():
                        newname = raw_mod_var_map[oldname]
                        i.init.subscript.name = newname
            return
        else:
            return
    elif type(i)==c_ast.Goto:
        sta.name==funname+"_"+sta.name
        return
    elif type(i) == c_ast.ID:
        if i.name in raw_mod_var_map.keys():
            if type(sta) == c_ast.FuncCall:
                return
            elif type(fsta)==c_ast.StructRef and i.name==fsta.field.name: #不对结构体的成员变量进行修改
                return
            elif type(sta) == c_ast.StructRef:
                oldname = i.name
                if oldname == sta.name.name:
                    newname = raw_mod_var_map[oldname]
                    i.name = newname
                elif oldname == sta.field.name:
                    pass
            else:
                oldname = i.name
                newname = raw_mod_var_map[oldname]
                i.name = newname
                return
        else:
            if type(sta) == c_ast.FuncCall and i.name.startswith("__builtin_"):
                oldname = i.name
                newname = oldname.replace("__builtin_", "")
                i.name = newname
    else:
        for st in i:
            modify_sta(st, i, raw_mod_var_map,funname)

def do_compoundSSA(compast,raw_mod_var_map,funname,raw_modcount_map):
    """

    :param compast: 符合语句中的c_ast.Compound ast
    :param raw_mod_var_map: 函数的原始变量与ssa修改过后的变量的映射
    :param funname: 函数名
    :param raw_modcount_map: 原始变量与修改变量的use时应该添加的后缀自然数n值的映射，用于在对变量修改时添加到变量之后以区分函数中的同名局部变量
    :return:
    """
    print(compast)
    raw_mod_var_map_new=copy.deepcopy(raw_mod_var_map) #递归函数在底层递归中修改list会影响到上层的list，当对复合语句中的同名局部变量进行修改的时候会影响到上一层中结果，所以进行拷贝防止对此list中的值进行修改
    if type(compast)==c_ast.Case or type(compast)==c_ast.Default:
        recompast=compast.stmts
    else:
        recompast=compast.block_items

    if recompast is None:
        return
    for sta in recompast:
        typesta=type(sta)
        stalinenum=get_sta_first_linenum(sta)
        if typesta == c_ast.Decl:
            oldname=sta.name
            if oldname not in raw_mod_var_map_new.keys():
                newname = "_" + funname + "_" + oldname + "_0"
                raw_mod_var_map_new[oldname] = newname
                raw_modcount_map[oldname]=0
            else:
                count=raw_modcount_map[oldname]
                raw_modcount_map[oldname]=count+1 #当遇到函数中同名变量的时候将count加1
                newname = "_" + funname + "_" + oldname + "_"+str(count+1)
                raw_mod_var_map_new[oldname] =newname
            fun_localval_delast_map[newname] =sta
            modify_sta(sta,None,raw_mod_var_map_new,funname)
            # if stalinenum==startline and funname==desend_chain[0]:
            #     source_var_ast_list.append(sta)
        elif typesta==c_ast.Compound:
            do_compoundSSA(sta,raw_mod_var_map_new,funname,raw_modcount_map)
        elif typesta == c_ast.For:
            forinit = sta.init
            if type(forinit)==c_ast.Decl:
                oldname = forinit.name
                if oldname not in raw_mod_var_map_new.keys():
                    newname = "_" + funname + "_" + oldname + "_0"
                    raw_mod_var_map_new[oldname] = newname
                    raw_modcount_map[oldname] = 0
                else:
                    count = raw_modcount_map[oldname]
                    raw_modcount_map[oldname] = count + 1
                    newname = "_" + funname + "_" + oldname + "_" + str(count + 1)
                    raw_mod_var_map_new[oldname] = newname
                fun_localval_delast_map[newname] =forinit
            modify_sta(forinit,sta, raw_mod_var_map_new,funname)
            forcond = sta.cond
            modify_sta(forcond,sta, raw_mod_var_map_new,funname)
            # if stalinenum == endline and funname == increase_chain[0]:
            #     idlist = []
            #     get_sta_decl_ID(forcond, idlist)
            #     for idname in idlist:
            #         sinkast = fun_localval_delast_map[idname]
            #         sink_var_ast_list.append(sinkast)
            fornext = sta.next
            modify_sta(fornext, sta,raw_mod_var_map_new,funname)
            forstmt = sta.stmt
            if type(forstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=forstmt)
            newforstmt = sta.stmt
            do_compoundSSA(newforstmt, raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta == c_ast.While or typesta == c_ast.DoWhile:
            whcond=sta.cond
            modify_sta(whcond,sta,raw_mod_var_map_new,funname)
            whstmt = sta.stmt
            if type(whstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=whstmt)
            newwhstmt = sta.stmt
            do_compoundSSA(newwhstmt, raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta == c_ast.If:
            ifcond=sta.cond

            modify_sta(ifcond,sta,raw_mod_var_map_new,funname)
            # if stalinenum==startline and funname==desend_chain[0]:
            #     if type(ifcond) == c_ast.BinaryOp and type(ifcond.left) == c_ast.FuncCall and source_funname in generator.visit(ifcond):
            #         arg = ifcond.left.args.exprs[source_argnum - 1]
            #         if type(arg) == c_ast.Constant:
            #             srcast = c_ast.Decl(name='__src__secret',
            #                                 type=c_ast.PtrDecl(quals=[],
            #                                                    type=c_ast.TypeDecl(declname='__src__secret',
            #                                                                        quals=[],
            #                                                                        type=c_ast.IdentifierType(
            #                                                                            names=['char']))),
            #                                 init=None, quals=[], bitsize=None, storage=[], funcspec=[])
            #             ifcond.left.args.exprs[source_argnum - 1] = c_ast.ID(name='__src__secret')
            #             source_var_ast_list.append(srcast)
            #         elif type(arg)==c_ast.BinaryOp:
            #             srcname=arg.left.name
            #             if srcname in fun_localval_delast_map.keys():
            #                 srcast = fun_localval_delast_map[srcname]
            #                 source_var_ast_list.append(srcast)
            #                 pass
            #         elif type(arg)==c_ast.ID:
            #             srcname=arg.name
            #             if srcname in fun_localval_delast_map.keys():
            #                 srcast = fun_localval_delast_map[srcname]
            #                 source_var_ast_list.append(srcast)
            #                 pass
            #         srcsta=generator.visit(ifcond)
            #         source_stament_list.append(srcsta)
            iftrue = sta.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    sta.iftrue = c_ast.Compound(block_items=[iftrue])
                newiftrue=sta.iftrue
                do_compoundSSA(newiftrue, raw_mod_var_map_new, funname, raw_modcount_map)
            iffalse = sta.iffalse
            if iffalse is not None:
                iffalsetype = type(iffalse)
                if iffalsetype != c_ast.Compound:
                    sta.iffalse = c_ast.Compound(block_items=[iffalse])
                newiffalse=sta.iffalse
                do_compoundSSA(newiffalse, raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta == c_ast.Switch:
            swicond=sta.cond
            modify_sta(swicond,sta,raw_mod_var_map_new,funname)
            switchstmt = sta.stmt
            if type(switchstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=[switchstmt])
            newswitchstmt = sta.stmt
            do_compoundSSA(newswitchstmt, raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta==c_ast.Case or typesta==c_ast.Default:
            if typesta==c_ast.Case:
                modify_sta(sta.expr, sta,raw_mod_var_map_new, funname)
            do_compoundSSA(sta, raw_mod_var_map_new, funname, raw_modcount_map)
        # elif (typesta==c_ast.Case or typesta==c_ast.Default ) and len(sta.stmts)>0 and type(sta.stmts[0])==c_ast.Compound:
        #     print(sta)
        #     casestmts=sta.stmts
        #     do_compoundSSA(sta.stmts[0], raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta == c_ast.Label:
            sta.name=funname+"_"+sta.name
            labelstmt = sta.stmt
            if type(labelstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=[labelstmt])
            newlabelstmt = sta.stmt
            do_compoundSSA(newlabelstmt, raw_mod_var_map_new, funname, raw_modcount_map)
        elif typesta==c_ast.Goto:
            sta.name=funname+"_"+sta.name
        else:
            modify_sta(sta,None, raw_mod_var_map_new,funname)
            # if stalinenum==startline and funname==desend_chain[0]:
            #     if type(sta)==c_ast.FuncCall and source_funname in generator.visit(sta.name):
            #         arg=sta.args.exprs[source_argnum-1]
            #         if type(arg)==c_ast.Constant:
            #             srcast=c_ast.Decl(name='__src__secret',
            #                               type=c_ast.PtrDecl(quals=[],
            #                                                  type=c_ast.TypeDecl(declname='__src__secret',
            #                                                                      quals=[],
            #                                                                      type=c_ast.IdentifierType(names= ['char']))),
            #                              init=None,quals=[],bitsize=None,storage=[],funcspec=[] )
            #             sta.args.exprs[source_argnum-1]=c_ast.ID(name='__src__secret')
            #             source_var_ast_list.append(srcast)
            #         elif type(arg)==c_ast.UnaryOp:
            #             argname=arg.expr.name
            #             arcast = fun_localval_delast_map[argname]
            #             source_var_ast_list.append(arcast)
            #         elif type(arg)==c_ast.ID:
            #             argname = arg.name
            #             arcast = fun_localval_delast_map[argname]
            #             source_var_ast_list.append(arcast)
            #     elif type(sta)==c_ast.Decl and source_argnum==0:
            #         source_var_ast_list.append(sta)
            #     elif type(sta)==c_ast.Assignment:
            #         if source_argnum==0:
            #             pass
            #         else:
            #             rvalue=sta.rvalue
            #             if type(rvalue)==c_ast.FuncCall:
            #                 arg = rvalue.args.exprs[source_argnum - 1]
            #                 if type(arg) == c_ast.Constant:
            #                     srcast = c_ast.Decl(name='__src__secret',
            #                                         type=c_ast.PtrDecl(quals=[],
            #                                                            type=c_ast.TypeDecl(declname='__src__secret',
            #                                                                                quals=[],
            #                                                                                type=c_ast.IdentifierType(
            #                                                                                    names=['char']))),
            #                                         init=None, quals=[], bitsize=None, storage=[], funcspec=[])
            #                     sta.args.exprs[source_argnum - 1] = c_ast.ID(name='__src__secret')
            #                     source_var_ast_list.append(srcast)
            #                 elif type(arg)==c_ast.Cast and type(arg.expr)==c_ast.BinaryOp:
            #                     argname = arg.expr.left.name
            #                     arcast = fun_localval_delast_map[argname]
            #                     source_var_ast_list.append(arcast)
            #                 else:
            #                     print("argname...")
            #                     print(arg)
            #                     argname=arg.name
            #                     arcast=fun_localval_delast_map[argname]
            #                     source_var_ast_list.append(arcast)
            #                     pass
            #     srcsta=generator.visit(sta)
            #     source_stament_list.append(srcsta)





def do_funSSA():
    """
    遍历fun_funast_map中的funast,对每一个函数的变量进行SSA(包括参数变量局部变量的def和use。)
    :return:
    """
    for funname in fun_funast_map:

        print("dofunssa...")
        print(funname)
        funast=fun_funast_map[funname]
        # fun_localval_delast_map[funname]={}
        raw_mod_var_map={}  #原始局部变量名和修改后的变量名的映射，key值为old variable name，value为new variable name
        raw_modcount_map={}  #原始变量名和修改次数的映射，从0开始，key值为lod variable name，value为自然数n,当遇到一个新的声明的时候n递增，生时候递减？
        if funast.decl.type.args is not None:
            for i in funast.decl.type.args.params:
                if type(i)==c_ast.Decl:
                    if i.name not in raw_mod_var_map.keys():
                        oldname=i.name
                        newname="_"+funname+"_"+oldname+"_0"
                        fun_localval_delast_map[newname] = i
                        raw_mod_var_map[oldname]=newname
                        raw_modcount_map[oldname]=0
            modify_sta(funast.decl.type.args,funast.decl.type,raw_mod_var_map,funname)
        do_compoundSSA(funast.body,raw_mod_var_map,funname,raw_modcount_map)
        print("dofunssa after")
        print(generator.visit(funast))



def do_all_return_one():
    for funname in fun_funast_map:
        funast=fun_funast_map[funname]
        deal_return(funast,funname,return_val)
        print(generator.visit(funast))

def find_fun_loop_if_infunast(funast, funname):
    """
    识别出函数中所有的loop，并记录每个loop的起始行号和结束行号
    :param fst: c_ast.FileAST(函数所在的c文件的翻译单元对应的ast)
    :param funname: 字符串（函数名）
    :return: 将识别出的loop添加到全局变量fun_loop字典中
    """
    child = funast.body
    fun_loop[funname] = []
    for sta in child.block_items:
        statype = type(sta)
        if statype == c_ast.For or statype == c_ast.While or statype == c_ast.DoWhile \
                or type(sta) == c_ast.If or type(sta) == c_ast.Switch or type(sta)==c_ast.Label or type(sta)==c_ast.Compound:
            if sta.coord is None:
                continue
            startline = int(str(sta.coord).split(":")[1])
            last_num = -1
            line_list = []
            get_last_linenum(sta, last_num, line_list)
            lastline = line_list[0]
            keyname = str(startline) + ":" + str(lastline)
            tempdic = {keyname: sta}
            fun_loop[funname].append(tempdic)
        elif statype == c_ast.Compound:
            find_loop_if(sta,funname)
        else:
            pass

def find_fun_loopif_map():
    for funname in funsig_funnamelist:
        funast=fun_funast_map[funname]
        find_fun_loop_if_infunast(funast,funname)

def get_desend_fun_loopif_map():
    """对于下降chain获得从source处（call处）到函数出口的行号
    主调函数特殊处理"""
    for funname in desend_chain:
        lineset=funname_lineset_map[funname]
        firstline=lineset[0]
        loop_list=[]
        isloop = judge_line_inloop(funname, firstline, loop_list)
        if isloop:
            loop_range = loop_list[1]
            loop_start = int(loop_range[0])
            # loop_end = int(loop_range[1])
            if funname==desend_chain[-1]:#特殊处理主调函数
                loop_end = int(loop_range[1])
            else:
                loop_end=int( per_fun_all_lineset_map[funname][1])
            int_loop_range = list(range(loop_start, loop_end + 1))
            desend_fun_loopif_map[funname]=int_loop_range
        else:
            loop_start=firstline
            if funname == desend_chain[-1]:  # 特殊处理主调函数
                loop_end=lineset[-1]
            else:
                loop_end=int( per_fun_all_lineset_map[funname][1])
            int_loop_range = list(range(loop_start, loop_end + 1))
            desend_fun_loopif_map[funname] = int_loop_range

def get_increase_fun_loopin_map():
    """对于上升chain获得从函数入口处到sinkcall处)的行号
        主调函数特殊处理"""
    for funname in increase_chain:
        lineset=funname_lineset_map[funname]
        lasttline=lineset[-1]
        loop_list=[]
        isloop = judge_line_inloop(funname, lasttline, loop_list)
        if isloop:
            loop_range = loop_list[1]
            if funname==increase_chain[-1]:# 特殊处理主调函数
                loop_start = int(loop_range[0])
            else:
                loop_start=int(per_fun_all_lineset_map[funname][0])
            loop_end = int(loop_range[1])
            int_loop_range = list(range(loop_start, loop_end + 1))
            increase_fun_loopif_map[funname]=int_loop_range
        else:
            if funname==increase_chain[-1]:# 特殊处理主调函数
                loop_start = lineset[0]
            else:
                loop_start = int(per_fun_all_lineset_map[funname][0])
            loop_end=lasttline
            int_loop_range = list(range(loop_start, loop_end + 1))
            increase_fun_loopif_map[funname] = int_loop_range

def inline_two_fun_v1(callerbody,calleeast,callerfunname,calleefuname):
    parentnode=callerbody.block_items
    callerfun_lineset=funname_lineset_map[callerfunname]
    if callerfunname in desend_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+desend_fun_loopif_map[callerfunname]
    if callerfunname in increase_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+increase_fun_loopif_map[callerfunname]
    ret_name = calleefuname + "_return_"
    ind=0
    for ele in parentnode:
        eletype=type(ele)
        if eletype==c_ast.For:
            forinit=ele.init
            if calleefuname in generator.visit(forinit):
                print("callee function:" +calleefuname +" in init of for statement.")
            forcond=ele.cond
            if calleefuname in generator.visit(forcond):
                print("callee function:" +calleefuname +" in condition of for statement.")
            fornext=ele.next
            if calleefuname in generator.visit(fornext):
                print("callee function:" +calleefuname +" in self_increase of for statement.")
            forstmt=ele.stmt
            if type(forstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[forstmt])
            newforstmt = ele.stmt
            if calleefuname in generator.visit(newforstmt):
                linenum=get_sta_first_linenum(ele)
                if linenum in callerfun_lineset:
                    inline_two_fun(newforstmt,calleeast,callerfunname,calleefuname)
        elif eletype==c_ast.While or eletype==c_ast.DoWhile:
            whcond=ele.cond
            if calleefuname in generator.visit(whcond):
                print("callee function:" +calleefuname +" in condition of while or do while statement.")
            whstmt=ele.stmt
            if type(whstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[whstmt])
            newwhstmt = ele.stmt
            if calleefuname in generator.visit(newwhstmt):
                linenum=get_sta_first_linenum(ele)
                if linenum in callerfun_lineset:
                    inline_two_fun(newwhstmt,calleeast,callerfunname,calleefuname)
        elif eletype==c_ast.If:
            ifcond=ele.cond
            tempsta = ele
            funcallastlist = []
            get_sta_funcallast(calleefuname, ifcond, funcallastlist)
            if len(funcallastlist)>0:
                actual_param_list = []
                get_actual_parm(funcallastlist[0], actual_param_list)
                n = 0
                for decl in fun_formalarg_map[calleefuname]:
                    if type(decl) == c_ast.EllipsisParam:
                        continue
                    parentnode.insert(ind, decl)  # 插入形参的声明
                    # 插入形参赋值给实参的语句
                    ind = ind + 1
                    lname = decl.name
                    if type(decl.type) == c_ast.ArrayDecl:
                        destast = c_ast.ID(lname)
                        srcast = c_ast.ID(actual_param_list[n])
                        typeast = decl.type.type
                        num = decl.type.dim.value
                        assign = create_sizeof_sta(destast, srcast, typeast, num)
                    else:
                        assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(actual_param_list[n]))
                    parentnode.insert(ind, assign)
                ind = ind + 1
                for tele in calleeast.body.block_items:
                    parentnode.insert(ind, tele)
                    ind = ind + 1
                modif_ret(tempsta,calleefuname,ret_name)
            iftrue=ele.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    ele.iftrue = c_ast.Compound(block_items=[iftrue])
                newwiftrue = ele.iftrue
                if calleefuname in generator.visit(newwiftrue):
                    linenum = get_sta_first_linenum(ele)
                    if linenum in callerfun_lineset:
                        inline_two_fun(newwiftrue, calleeast, callerfunname, calleefuname)
            iffalse=ele.iffalse
            if iffalse is not None:
                if type(iffalse) != c_ast.Compound:
                    ele.iffalse = c_ast.Compound(block_items=[iffalse])
                newwiffalse = ele.iffalse
                if calleefuname in generator.visit(newwiffalse):
                    linenum = get_sta_first_linenum(ele)
                    if linenum in callerfun_lineset:
                        inline_two_fun(newwiffalse, calleeast, callerfunname, calleefuname)
        elif eletype==c_ast.Switch:
            swcond=ele.cond
            if calleefuname in generator.visit(swcond):
                print("callee function:" +calleefuname +" in condition of switch statement.")
            swstmt=ele.stmt
            if type(swstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[swstmt])
            newswstmt = ele.stmt
            if calleefuname in generator.visit(newswstmt):
                linenum = get_sta_first_linenum(ele)
                if linenum in callerfun_lineset:
                    inline_two_fun(newswstmt, calleeast, callerfunname, calleefuname)
        elif eletype==c_ast.Label:
            lastmt=ele.stmt
            if type(lastmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[lastmt])
            newlastmt = ele.stmt
            if calleefuname in generator.visit(newlastmt):
                linenum = get_sta_first_linenum(ele)
                if linenum in callerfun_lineset:
                    inline_two_fun(newlastmt, calleeast, callerfunname, calleefuname)
        elif eletype==c_ast.Compound:
            if calleefuname in generator.visit(ele):
                linenum = get_sta_first_linenum(ele)
                if linenum in callerfun_lineset:
                    inline_two_fun(ele,calleeast,callerfunname,calleefuname)
        else:
            if calleefuname in generator.visit(ele):
                tempsta=ele
                funcallastlist=[]
                get_sta_funcallast(calleefuname,ele,funcallastlist)
                if len(funcallastlist) > 0:
                    actual_param_list=[]
                    get_actual_parm(funcallastlist[0],actual_param_list)
                    n=0
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            continue
                        parentnode.insert(ind, decl)  # 插入形参的声明
                        # 插入形参赋值给实参的语句
                        ind=ind+1
                        lname = decl.name
                        if type(decl.type) == c_ast.ArrayDecl:
                            destast = c_ast.ID(lname)
                            srcast = c_ast.ID(actual_param_list[n])
                            typeast = decl.type.type
                            num = decl.type.dim.value
                            assign = create_sizeof_sta(destast, srcast, typeast, num)
                        else:
                            assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(actual_param_list[n]))
                        parentnode.insert(ind, assign)
                        ind=ind+1
                        n=n+1
                    for tele in calleeast.body.block_items:
                        parentnode.insert(ind, tele)
                        ind = ind + 1
                    if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return or type(
                            tempsta) == c_ast.Decl:
                        parentnode.remove(tempsta)
                    else:
                        tempsta.rvalue = c_ast.ID(name=ret_name)
        ind=ind+1

def find_ID(st, oldast, newast,pst):
    """
    根据newast的name修改oldast的name
    在根据实参变量修改实参变量的函数modidy_callee_variable_accoding_actual_param中进行调用
    :param st:修改的ast语句
    :param oldast: 形参的的declast
    :param newast:实参的declast
    :param pst: st的parent ast
    :return:
    """
    # print(generator.visit(st))
    # print(st)
    for i in st:
        print("new add")
        print(st)
        if (i == None):
            continue
        elif type(i) == c_ast.ID:
            print("new add")
            print(st)
            if i.name==oldast.name:
                if type(oldast.type)==c_ast.FuncDecl:
                    pst.name=newast
                elif type(st) == c_ast.ExprList:
                    ind=st.exprs.index(i)
                    st.exprs.pop(ind)
                    st.exprs.insert(ind,newast)
                elif type(st)==c_ast.BinaryOp:
                    if i.name == generator.visit(st.left):
                        st.left=newast
                    if i.name == generator.visit(st.right):
                        st.right=newast
                elif type(st)==c_ast.Assignment:
                    if i.name == generator.visit(st.lvalue):
                        st.lvalue=newast
                    if i.name == generator.visit(st.rvalue):
                        st.rvalue=newast
                elif type(st) == c_ast.UnaryOp or type(st)==c_ast.Cast:
                    st.expr=newast
                elif type(st) ==c_ast.ArrayRef or type(st)==c_ast.StructRef:
                    print("ass new")
                    print(st)
                    if st.name.name==oldast.name:
                        st.name=newast
                    if type(st)==c_ast.ArrayRef and st.subscript==i:
                        st.subscript=newast
                elif type(st)==c_ast.If:
                    st.cond=newast
                elif type(st)== c_ast.Switch:
                    st.cond=newast
                elif type(st)==c_ast.TernaryOp:
                    st.cond=newast
                else:
                    print(st)
                    print(generator.visit(st))
                    print(i)
                    print(oldast)
                    print(newast)
                    print("inline parameter") #说明实参传递给形参的时候的时候还有没解决的类型
                    print(sys.stderr)
                    exit(1)
                find_ID(i, oldast, newast,st)
        else:
            find_ID(i, oldast, newast,st)

# def modify_id(st,oldast,newast):
#     for i in st:
#         find_ID(i,oldast,newast,st)

def modify_special_callsta(st,fomalargname,):
    pass

def modidy_callee_variable_accoding_actual_param(calleebody,formalast,actualast,callerfunname):
    """
    修改被调用函数中的变量根据实参变量
    :param calleeebody:callee函数的body
    :param formalast:形参的ast,从形参的declast中可以获得要修改的ID
    :param actualast:实参的ast,可以将callee中varname与形参变量名相同的id全部替换为实参ast
    :return:
    """
    idlist=[]
    get_sta_decl_ID(actualast,idlist)
    """以下代码感觉没有用，所以注释"""
    # if len(idlist)==0:
    #     actualdeclast=None
    #     actualtype=None
    # else:
    #     actualdeclast=fun_localval_delast_map[idlist[0]]
    #     actualtype = generator.visit(actualdeclast.type)
    # formaltype = generator.visit(formalast.type)
    # # actualtype = generator.visit(actualdeclast.type)
    # print(actualdeclast)
    # print(generator.visit(actualdeclast))
    # print(formalast)
    # print(generator.visit(formalast))
    for st in calleebody.body.block_items:
        find_ID(st, formalast, actualast, st)

def modify_goto_label(ele,calleefunname):
    """
    当函数被inline的时候超过1时对callee函数中的goto和label进行修改,
    :param ele:
    :param calleefunname:
    :return:
    """
    if fun_inline_count_map[calleefunname] == 0:
        return
    eletype = type(ele)
    if eletype==c_ast.Compound:
        for subst in ele.block_items:
            modify_goto_label(subst,calleefunname)
    elif eletype == c_ast.For:
        forstmt = ele.stmt
        if type(forstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[forstmt])
        newforstmt = ele.stmt
        modify_goto_label(newforstmt,calleefunname)
    elif eletype == c_ast.While or eletype == c_ast.DoWhile:
        whstmt = ele.stmt
        if type(whstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[whstmt])
        newwhstmt = ele.stmt
        modify_goto_label(newwhstmt,calleefunname)
    elif eletype == c_ast.If:
        iftrue = ele.iftrue
        if iftrue is not None:
            if type(iftrue) != c_ast.Compound:
                ele.iftrue = c_ast.Compound(block_items=[iftrue])
            newwiftrue = ele.iftrue
            modify_goto_label(newwiftrue,calleefunname)
        iffalse = ele.iffalse
        if iffalse is not None:
            if type(iffalse) != c_ast.Compound:
                ele.iffalse = c_ast.Compound(block_items=[iffalse])
            newwiffalse = ele.iffalse
            modify_goto_label(newwiffalse,calleefunname)
    elif eletype == c_ast.Switch:
        swstmt = ele.stmt
        if type(swstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[swstmt])
        newswstmt = ele.stmt
        modify_goto_label(newswstmt,calleefunname)
    elif eletype==c_ast.Case or eletype==c_ast.Default:
        for subst in ele.stmts:
            modify_goto_label(subst,calleefunname)
    elif eletype == c_ast.Label:
        if fun_inline_count_map[calleefunname] != 0:
            countnum = fun_inline_count_map[calleefunname]
            ele.name = ele.name + str(countnum)
        lastmt = ele.stmt
        if type(lastmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[lastmt])
        newlastmt = ele.stmt
        modify_goto_label(newlastmt,calleefunname)
    elif eletype == c_ast.Goto:
        print("modify goto")
        print(ele)
        print(fun_inline_count_map)
        print(calleefunname)
        if fun_inline_count_map[calleefunname] != 0:
            countnum = fun_inline_count_map[calleefunname]
            print(countnum)
            ele.name = ele.name + str(countnum)
    else:
        print("common sta")
        print(generator.visit(ele))


def find_modify_id(st,pst, calleefunname, formal_declnamelist,new_declnamelist):
    """
    对st进行ssa
    :param st:
    :param pst:
    :param calleefunname:
    :param formal_declnamelist:
    :param new_declnamelist:
    :return:
    """
    countnum = fun_inline_count_map[calleefunname]
    typest = type(st)
    if st is None:
        return
    if typest == c_ast.Decl:
        fun_localval_delast_map[st.name + str(countnum)] = st
        new_declnamelist.append(st.name)
        st.name = st.name + str(countnum)

        print("new add..")
        print(fun_localval_delast_map)
        find_modify_id(st.type,st, calleefunname, formal_declnamelist,new_declnamelist)
        find_modify_id(st.init,st, calleefunname, formal_declnamelist,new_declnamelist)
    elif typest==c_ast.TypeDecl and st.declname is not None:
        st.declname=st.declname+str(countnum)
    elif typest==c_ast.ID:
        if st.name not  in formal_declnamelist and type(pst)!=c_ast.FuncCall and type(pst)!=c_ast.StructRef and st.name in new_declnamelist:
            st.name=st.name+str(countnum)
    else:
        for subst in st:
            find_modify_id(subst,st,calleefunname,formal_declnamelist,new_declnamelist)



def modify_local_variable(ele, calleefunname, formal_declnamelist,new_declnamelist):
    """
    当函数被inline的次数超过1时，重新对callee函数进行ssa
    :param ele:
    :param calleefunname:
    :param formal_declnamelist:
    :param new_declnamelist:
    :return:
    """
    if fun_inline_count_map[calleefunname] == 0:
        return
    eletype = type(ele)
    if eletype == c_ast.Compound:
        for subst in ele.block_items:
            modify_local_variable(subst, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.For:
        forinit=ele.init
        find_modify_id(forinit, ele, calleefunname, formal_declnamelist,new_declnamelist)
        forcond=ele.cond
        find_modify_id(forcond, ele, calleefunname, formal_declnamelist,new_declnamelist)
        fornext=ele.next
        find_modify_id(fornext, ele, calleefunname, formal_declnamelist,new_declnamelist)
        forstmt = ele.stmt
        if type(forstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[forstmt])
        newforstmt = ele.stmt
        modify_local_variable(newforstmt, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.While or eletype == c_ast.DoWhile:
        whcond=ele.cond
        find_modify_id(whcond, ele, calleefunname, formal_declnamelist,new_declnamelist)
        whstmt = ele.stmt
        if type(whstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[whstmt])
        newwhstmt = ele.stmt
        modify_local_variable(newwhstmt, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.If:
        ifcond=ele.cond
        find_modify_id(ifcond, ele, calleefunname, formal_declnamelist,new_declnamelist)
        iftrue = ele.iftrue
        if iftrue is not None:
            if type(iftrue) != c_ast.Compound:
                ele.iftrue = c_ast.Compound(block_items=[iftrue])
            newwiftrue = ele.iftrue
            modify_local_variable(newwiftrue, calleefunname,formal_declnamelist,new_declnamelist)
        iffalse = ele.iffalse
        if iffalse is not None:
            if type(iffalse) != c_ast.Compound:
                ele.iffalse = c_ast.Compound(block_items=[iffalse])
            newwiffalse = ele.iffalse
            modify_local_variable(newwiffalse, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.Switch:
        find_modify_id(ele.cond, ele, calleefunname, formal_declnamelist, new_declnamelist)
        swstmt = ele.stmt
        if type(swstmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[swstmt])
        newswstmt = ele.stmt
        modify_local_variable(newswstmt, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.Label:
        if fun_inline_count_map[calleefunname] != 0:
            countnum = fun_inline_count_map[calleefunname]
            ele.name = ele.name + str(countnum)
        lastmt = ele.stmt
        if type(lastmt) != c_ast.Compound:
            ele.stmt = c_ast.Compound(block_items=[lastmt])
        newlastmt = ele.stmt
        modify_local_variable(newlastmt, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype==c_ast.Case or eletype==c_ast.Default:
        for subst in ele.stmts:
            modify_local_variable(subst, calleefunname,formal_declnamelist,new_declnamelist)
    elif eletype == c_ast.Goto:
        print("modify goto")
        print(ele)
        print(fun_inline_count_map)
        if fun_inline_count_map[calleefunname] != 0:
            countnum = fun_inline_count_map[calleefunname]
            ele.name = ele.name + str(countnum)
    else:
        find_modify_id(ele,None,calleefunname,formal_declnamelist,new_declnamelist)
        


def inline_two_fun(callerbody,calleeast,callerfunname,calleefuname,dec_inc_flag):
    """
    内联callee函数到caller函数,根据desend_chain_fun_callloc_map与increase_chain_fun_callloc_map
    如果[desend/increase]_chain_fun_callloc_map中caller函数对callee函数的调用位置有多个，则会对caller函数的多个location都进行内联
    当一个caller对callee有多处inline，为了是变量ssa，还要对callee函数的变量名进行修改
    :param callerbody:caller函数的body ast
    :param calleeast:callee函数的ast
    :param callerfunname:caller函数的funname
    :param calleefuname:callee函数的funname
    :return:
    """

    #增加caller函数的行号集合，对整个inline过程有什么用？
    parentnode=callerbody.block_items
    callerfun_lineset=funname_lineset_map[callerfunname]
    if callerfunname in desend_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+desend_fun_loopif_map[callerfunname]
    if callerfunname in increase_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+increase_fun_loopif_map[callerfunname]
    ret_name = calleefuname + "_return_"
    ind=0
    """找到call函数位置"""
    print("callerfun lineset...")
    print(callerfunname)
    print(callerfun_lineset)

    """
    如何在callerast中找到对callee函数的调用位置：
    调用可能是间接调用，所以用判断
    遍历父节点的每一条子语句
    获得语句的所在文件名与callerfun的文件名进行比较
    """

    while ind<len(parentnode):
        ele=parentnode[ind]
        linenum = get_sta_first_linenum(ele)
        if linenum==-1:
            ind=ind+1
            continue
        abscfile=get_stacoord_absfilename(ele) #获得此元素的文件名
        curele_abscfile=fun_file_map[callerfunname]
        print(abscfile)
        print(curele_abscfile)
        if abscfile!=curele_abscfile:
            # return
            continue
        if dec_inc_flag==-1: #代表降序
            print(desend_chain_fun_callloc_map)
            callloc_list=desend_chain_fun_callloc_map[callerfunname]
        else:    #dec_inc_flag==1 代表升序
            callloc_list=increase_chain_fun_callloc_map[callerfunname]

        print("callloc list..")
        print(callerfunname)
        print(callloc_list)

        eletype=type(ele)
        if eletype==c_ast.For:
            forinit=ele.init
            if calleefuname in generator.visit(forinit):
                print("callee function:" +calleefuname +" in init of for statement.")
            forcond=ele.cond
            if calleefuname in generator.visit(forcond):
                print("callee function:" +calleefuname +" in condition of for statement.")
            fornext=ele.next
            if calleefuname in generator.visit(fornext):
                print("callee function:" +calleefuname +" in self_increase of for statement.")
            forstmt=ele.stmt
            if type(forstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[forstmt])
            newforstmt = ele.stmt
            if calleefuname in generator.visit(newforstmt):
                inline_two_fun(newforstmt, calleeast, callerfunname, calleefuname ,dec_inc_flag)
        elif eletype==c_ast.While or eletype==c_ast.DoWhile:
            whcond=ele.cond
            if calleefuname in generator.visit(whcond):
                print("callee function:" +calleefuname +" in condition of while or do while statement.")
            whstmt=ele.stmt
            if type(whstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[whstmt])
            newwhstmt = ele.stmt
            if calleefuname in generator.visit(newwhstmt):
                inline_two_fun(newwhstmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.If:
            ifcond=ele.cond
            tempsta = ele
            funcallastlist = []
            actual_param_list=[]
            if linenum in callloc_list:
                if calleefuname in fun_inline_count_map.keys():
                    fun_inline_count_map[calleefuname]=fun_inline_count_map[calleefuname]+1
                else:
                    fun_inline_count_map[calleefuname]=0
                get_sta_funcallast(calleefuname, ifcond, funcallastlist)
                """insert function"""
                print(funcallastlist)
                if len(funcallastlist) > 0:
                    get_actual_parm(funcallastlist[0],actual_param_list)
                    n=0
                    calleeastcopy=copy.deepcopy(calleeast)
                    formal_declnamelist=[]
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            continue
                        formal_declnamelist.append(decl.name)
                    new_declnamelist=[]
                    modify_local_variable(calleeastcopy.body, calleefuname, formal_declnamelist,new_declnamelist)
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            continue
                        modidy_callee_variable_accoding_actual_param(calleeastcopy,decl,actual_param_list[n],callerfunname)
                        n=n+1
                    # modify_local_variable(calleeastcopy.body,calleefuname,formal_declnamelist)
                    # modify_goto_label(calleeastcopy.body,calleefuname)
                    print(calleeast)
                    calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                    for tele in calleeastcopy.body.block_items:
                        calleecompound.block_items.append(tele)
                    parentnode.insert(ind,calleecompound)
                    ind=ind+1
                    modif_ret(tempsta, calleefuname, ret_name)
            iftrue=ele.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    ele.iftrue = c_ast.Compound(block_items=[iftrue])
                newwiftrue = ele.iftrue
                if calleefuname in generator.visit(newwiftrue):
                    inline_two_fun(newwiftrue, calleeast, callerfunname, calleefuname,dec_inc_flag)
            iffalse=ele.iffalse
            if iffalse is not None:
                if type(iffalse) != c_ast.Compound:
                    ele.iffalse = c_ast.Compound(block_items=[iffalse])
                newwiffalse = ele.iffalse
                if calleefuname in generator.visit(newwiffalse):
                    inline_two_fun(newwiffalse, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Switch:
            swcond=ele.cond
            if calleefuname in generator.visit(swcond):
                print("callee function:" +calleefuname +" in condition of switch statement.")
            swstmt=ele.stmt
            if type(swstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[swstmt])
            newswstmt = ele.stmt
            if calleefuname in generator.visit(newswstmt):
                inline_two_fun(newswstmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Label:
            lastmt=ele.stmt
            if type(lastmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[lastmt])
            newlastmt = ele.stmt
            if calleefuname in generator.visit(newlastmt):
                inline_two_fun(newlastmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Compound:
            if calleefuname in generator.visit(ele):
                inline_two_fun(ele, calleeast, callerfunname, calleefuname,dec_inc_flag)
        else:
            tempsta = ele
            funcallastlist = []
            actual_param_list = []
            if linenum in callloc_list:
                if calleefuname in fun_inline_count_map.keys():
                    fun_inline_count_map[calleefuname]=fun_inline_count_map[calleefuname]+1
                else:
                    fun_inline_count_map[calleefuname]=0
                formal_declnamelist = []
                for decl in fun_formalarg_map[calleefuname]:
                    if type(decl) == c_ast.EllipsisParam:
                        continue
                    formal_declnamelist.append(decl.name)
                calleeastcopy = copy.deepcopy(calleeast)
                new_declnamelist = []
                modify_local_variable(calleeastcopy.body, calleefuname, formal_declnamelist,new_declnamelist)
                if calleefuname in generator.visit(ele):
                    get_sta_funcallast(calleefuname,ele,funcallastlist)
                    if len(funcallastlist) > 0:
                        get_actual_parm(funcallastlist[0],actual_param_list)
                        n=0

                        for decl in fun_formalarg_map[calleefuname]:
                            if type(decl)==c_ast.EllipsisParam:
                                continue
                            modidy_callee_variable_accoding_actual_param(calleeastcopy,decl,actual_param_list[n],callerfunname)
                            n=n+1
                        print(calleeast)
                        # modify_goto_label(calleeastcopy.body,calleefuname)
                        calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                        for tele in calleeastcopy.body.block_items:
                            calleecompound.block_items.append(tele)
                        parentnode.insert(ind, calleecompound)
                        if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return:
                            parentnode.remove(tempsta)
                        elif type(tempsta)==c_ast.Decl:
                            modif_ret(tempsta,calleefuname,ret_name)
                            ind=ind+1
                        else:
                            tempsta.rvalue = c_ast.ID(name=ret_name)
                            ind=ind+1
                elif len(file_indloc_map)>0:
                    absfile=fun_file_map[callerfunname]
                    if absfile in file_indloc_map.keys():
                        lineset=file_indloc_map[absfile]
                        linenum=get_sta_first_linenum(ele)
                        if linenum in lineset and type(ele)==c_ast.FuncCall:
                            get_actual_parm(ele, actual_param_list)
                            n = 0
                            # calleeastcopy=copy.deepcopy(calleeast)
                            for decl in fun_formalarg_map[calleefuname]:
                                if type(decl) == c_ast.EllipsisParam:
                                    continue
                                modidy_callee_variable_accoding_actual_param(calleeastcopy, decl, actual_param_list[n],callerfunname)
                            calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                            # modify_goto_label(calleefuname.body,calleefuname)
                            for tele in calleeastcopy.body.block_items:
                                calleecompound.block_items.append(tele)
                            parentnode.insert(ind, calleecompound)
                            if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return or type(
                                    tempsta) == c_ast.Decl:
                                parentnode.remove(tempsta)
                            else:
                                tempsta.rvalue = c_ast.ID(name=ret_name)
                                ind=ind+1
        ind=ind+1

def inline_two_fun_v3(callerbody,calleeast,callerfunname,calleefuname,dec_inc_flag):
    """
    内联callee函数到caller函数,根据desend_chain_fun_callloc_map与increase_chain_fun_callloc_map
    如果[desend/increase]_chain_fun_callloc_map中caller函数对callee函数的调用位置有多个，则会对caller函数的多个location都进行内联
    当一个caller对callee有多处inline，为了是变量ssa，还要对callee函数的变量名进行修改
    与上一版修改的地方：
    :param callerbody:caller函数的body ast
    :param calleeast:callee函数的ast
    :param callerfunname:caller函数的funname
    :param calleefuname:callee函数的funname
    :return:
    """

    #增加caller函数的行号集合，对整个inline过程有什么用？
    if type(callerbody)==c_ast.Compound:
        parentnode=callerbody.block_items
    else: #Case语句和default语句
        parentnode=callerbody.stmts
    callerfun_lineset=funname_lineset_map[callerfunname]
    if callerfunname in desend_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+desend_fun_loopif_map[callerfunname]
    if callerfunname in increase_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+increase_fun_loopif_map[callerfunname]
    ret_name = calleefuname + "_return_"
    ind=0
    """找到call函数位置"""
    """
    如何在callerast中找到对callee函数的调用位置：
    调用可能是间接调用，所以用判断
    遍历父节点的每一条子语句
    获得语句的所在文件名与callerfun的文件名进行比较
    """

    while ind<len(parentnode):
        ele=parentnode[ind]
        linenum = get_sta_first_linenum(ele)
        if linenum==-1: #说明是if语句，callee函数不在此子语句中，所以ind+1，继续下一次循环
            ind=ind+1
            continue
        abscfile=get_stacoord_absfilename(ele) #获得此元素的文件名
        # curele_abscfile=fun_file_map[callerfunname]

        #与上一个版本不同的地方
        if type(ele)==c_ast.Compound and linenum==-2:#说明是已经被内联后的过的代码，callee不在此复合语句中，继续下一次循环
            ind=ind+1
            continue

        # if abscfile!=curele_abscfile: #这条判断语句应该永远不会被满足，因为已经被上一个判断所取代
        #     return

        #callloc_list代表caller对callee的调用位置行号集合
        if dec_inc_flag==-1: #代表降序
            callloc_list=desend_chain_fun_callloc_map[callerfunname]
        else:    #dec_inc_flag==1 代表升序
            callloc_list=increase_chain_fun_callloc_map[callerfunname]

        #根据语句类型分别判断其是否属于调用语句
        eletype=type(ele)
        if eletype==c_ast.For:
            #for循环的初始语句，条件语句，条件自增语句一般都不会包含调用函数
            forinit=ele.init
            if calleefuname in generator.visit(forinit):
                print("callee function:" +calleefuname +" in init of for statement.")
            forcond=ele.cond
            if calleefuname in generator.visit(forcond):
                print("callee function:" +calleefuname +" in condition of for statement.")
            fornext=ele.next
            if calleefuname in generator.visit(fornext):
                print("callee function:" +calleefuname +" in self_increase of for statement.")
            forstmt=ele.stmt
            if type(forstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[forstmt])
            newforstmt = ele.stmt
            if calleefuname in generator.visit(newforstmt):
                inline_two_fun_v3(newforstmt, calleeast, callerfunname, calleefuname ,dec_inc_flag)
        elif eletype==c_ast.While or eletype==c_ast.DoWhile:
            #whilie和do while语句的条件一般不会包含调用函数
            whcond=ele.cond
            if calleefuname in generator.visit(whcond):
                print("callee function:" +calleefuname +" in condition of while or do while statement.")
            whstmt=ele.stmt
            if type(whstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[whstmt])
            newwhstmt = ele.stmt
            if calleefuname in generator.visit(newwhstmt):
                inline_two_fun_v3(newwhstmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.If:
            #if语句的条件可能包含调用函数，所以要进行处理
            ifcond=ele.cond
            tempsta = ele
            funcallastlist = []
            actual_param_list=[]

            linelist=[]
            isin_calloc_list = False
            get_ast_all_linenum(ifcond,linelist)
            print(linelist)
            for perline in linelist:
                if perline in callloc_list:
                    isin_calloc_list = True
            if isin_calloc_list: #如果属于调用语句
                if calleefuname in fun_inline_count_map.keys(): #如果此函数已经被内联过，则对内联下标进行递增
                    fun_inline_count_map[calleefuname]=fun_inline_count_map[calleefuname]+1
                else:
                    fun_inline_count_map[calleefuname]=0 #没有内联过则赋值内联下标为0
                get_sta_funcallast(calleefuname, ifcond, funcallastlist) #从条件语句中提取c_ast.FuncCall的相关信息
                """insert function"""
                print(funcallastlist)
                if len(funcallastlist) > 0: #找到了c_ast.FuncCall
                    get_actual_parm(funcallastlist[0],actual_param_list) #获取实参列表

                    calleeastcopy=copy.deepcopy(calleeast)
                    formal_declnamelist=[]
                    print("formal")
                    print(fun_formalarg_map[calleefuname])
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            continue
                        formal_declnamelist.append(decl.name)
                    new_declnamelist=[]
                    modify_local_variable(calleeastcopy.body, calleefuname, formal_declnamelist,new_declnamelist) #对函数进行ssa,同时修改了goto和label
                    # modify_goto_label(calleeastcopy.body, calleefuname) #对函数中的label和goto进行ssa
                    n=0 #取实参的索引
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            n=n+1
                            continue
                        if len(actual_param_list)==0:
                            continue
                        modidy_callee_variable_accoding_actual_param(calleeastcopy,decl,actual_param_list[n],callerfunname) #根据实参修改形参的使用
                        n=n+1
                    calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                    for tele in calleeastcopy.body.block_items: #将callee函数封装到c_ast.compound中
                        calleecompound.block_items.append(tele)
                    parentnode.insert(ind,calleecompound) #将c_ast.compound结构插入父节点
                    ind=ind+1
                    modif_ret(tempsta, calleefuname, ret_name) #修改函数调用语句
            iftrue=ele.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    ele.iftrue = c_ast.Compound(block_items=[iftrue])
                newwiftrue = ele.iftrue
                if calleefuname in generator.visit(newwiftrue):
                    inline_two_fun_v3(newwiftrue, calleeast, callerfunname, calleefuname,dec_inc_flag)
            iffalse=ele.iffalse
            if iffalse is not None:
                if type(iffalse) != c_ast.Compound:
                    ele.iffalse = c_ast.Compound(block_items=[iffalse])
                newwiffalse = ele.iffalse
                if calleefuname in generator.visit(newwiffalse):
                    inline_two_fun_v3(newwiffalse, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Switch:
            swcond=ele.cond
            if calleefuname in generator.visit(swcond):
                print("callee function:" +calleefuname +" in condition of switch statement.")
            swstmt=ele.stmt
            if type(swstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[swstmt])
            newswstmt = ele.stmt
            if calleefuname in generator.visit(newswstmt):
                inline_two_fun_v3(newswstmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Case or eletype==c_ast.Default:
            inline_two_fun_v3(ele, calleeast, callerfunname, calleefuname, dec_inc_flag)

        elif eletype==c_ast.Label:
            lastmt=ele.stmt
            if type(lastmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[lastmt])
            newlastmt = ele.stmt
            if calleefuname in generator.visit(newlastmt):
                inline_two_fun_v3(newlastmt, calleeast, callerfunname, calleefuname,dec_inc_flag)
        elif eletype==c_ast.Compound:
            if calleefuname in generator.visit(ele):
                inline_two_fun_v3(ele, calleeast, callerfunname, calleefuname,dec_inc_flag)
        else:
            tempsta = ele
            funcallastlist = []
            actual_param_list = []

            linelisnt=[]
            get_ast_all_linenum(ele,linelisnt)
            #因为一条语句可能跨越多行，所以要获得所以的行号
            isin_calloc_list=False
            for perline in linelisnt:
                if perline in callloc_list:
                    isin_calloc_list = True
            # if calleefuname == "asn1_signature":
            #     print("do_svr_handshake  aaaa......")
            #     print(callloc_list)
            #     print(linelisnt)
            if isin_calloc_list: #查看此ast是否包含被展开函数的所在的行号
                if calleefuname in fun_inline_count_map.keys():
                    fun_inline_count_map[calleefuname]=fun_inline_count_map[calleefuname]+1
                else:
                    fun_inline_count_map[calleefuname]=0
                formal_declnamelist = []
                for decl in fun_formalarg_map[calleefuname]:
                    if type(decl) == c_ast.EllipsisParam:
                        continue
                    formal_declnamelist.append(decl.name)
                calleeastcopy = copy.deepcopy(calleeast)
                new_declnamelist = []
                modify_local_variable(calleeastcopy.body, calleefuname, formal_declnamelist,new_declnamelist)
                # modify_goto_label(calleeastcopy.body, calleefuname)
                if calleefuname in generator.visit(ele): #如果callee函数在此语句中，说明是直接调用，否则是间接调用
                    get_sta_funcallast(calleefuname,ele,funcallastlist) #获得call语句的ast

                    if len(funcallastlist) > 0:
                        get_actual_parm(funcallastlist[0],actual_param_list) #从call语句ast中提取实参
                        n=0

                        for decl in fun_formalarg_map[calleefuname]:
                            if type(decl)==c_ast.EllipsisParam:
                                continue
                            modidy_callee_variable_accoding_actual_param(calleeastcopy,decl,actual_param_list[n],callerfunname) #实参传递给形参，修改callee函数中的use
                            n=n+1
                        print(calleeast)

                        calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                        for tele in calleeastcopy.body.block_items: #将callee函数打包到compound结构中
                            calleecompound.block_items.append(tele)


                        parentnode.insert(ind, calleecompound)
                        if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return:
                            parentnode.remove(tempsta)
                        elif type(tempsta)==c_ast.Decl:
                            modif_ret(tempsta,calleefuname,ret_name)
                            ind=ind+1
                        else:
                            tempsta.rvalue = c_ast.ID(name=ret_name)
                            ind=ind+1
                elif len(file_indloc_map)>0: #函数指针间接调用
                    absfile=fun_file_map[callerfunname]
                    if absfile in file_indloc_map.keys():
                        lineset=file_indloc_map[absfile]
                        linenum=get_sta_first_linenum(ele)
                        if linenum in lineset and type(ele)==c_ast.FuncCall:
                            get_actual_parm(ele, actual_param_list)
                            n = 0
                            # calleeastcopy=copy.deepcopy(calleeast)
                            for decl in fun_formalarg_map[calleefuname]:
                                if type(decl) == c_ast.EllipsisParam:
                                    continue
                                modidy_callee_variable_accoding_actual_param(calleeastcopy, decl, actual_param_list[n],callerfunname)
                            calleecompound=c_ast.Compound(block_items=[],coord=calleefuname+":-2:"+str(dec_inc_flag))
                            # modify_goto_label(calleefuname.body,calleefuname)
                            for tele in calleeastcopy.body.block_items:
                                calleecompound.block_items.append(tele)
                            parentnode.insert(ind, calleecompound)
                            if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return or type(
                                    tempsta) == c_ast.Decl:
                                parentnode.remove(tempsta)
                            else:
                                tempsta.rvalue = c_ast.ID(name=ret_name)
                                ind=ind+1
        ind=ind+1


def inline_two_fun_v2(callerbody,calleeast,callerfunname,calleefuname,ind):
    """
    内联callee函数到caller函数
    :param callerbody:caller函数的body ast
    :param calleeast:callee函数的ast
    :param callerfunname:caller函数的funname
    :param calleefuname:callee函数的funname
    :return:
    """
    parentnode=callerbody.block_items
    callerfun_lineset=funname_lineset_map[callerfunname]
    if callerfunname in desend_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+desend_fun_loopif_map[callerfunname]
    if callerfunname in increase_fun_loopif_map.keys():
        callerfun_lineset=callerfun_lineset+increase_fun_loopif_map[callerfunname]
    ret_name = calleefuname + "_return_"
    ind=0
    """找到call函数位置"""
    print("callerfun lineset...")
    print(callerfun_lineset)
    for ele in parentnode:
        linenum = get_sta_first_linenum(ele)
        if linenum not in callerfun_lineset:
            continue
        eletype=type(ele)
        if eletype==c_ast.For:
            forinit=ele.init
            if calleefuname in generator.visit(forinit):
                print("callee function:" +calleefuname +" in init of for statement.")
            forcond=ele.cond
            if calleefuname in generator.visit(forcond):
                print("callee function:" +calleefuname +" in condition of for statement.")
            fornext=ele.next
            if calleefuname in generator.visit(fornext):
                print("callee function:" +calleefuname +" in self_increase of for statement.")
            forstmt=ele.stmt
            if type(forstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[forstmt])
            newforstmt = ele.stmt
            if calleefuname in generator.visit(newforstmt):
                linenum=get_sta_first_linenum(ele)
                if ind==1:
                    if linenum in callerfun_lineset:
                        inline_two_fun(newforstmt,calleeast,callerfunname,calleefuname,ind)
                else:
                    inline_two_fun(newforstmt, calleeast, callerfunname, calleefuname, ind)
        elif eletype==c_ast.While or eletype==c_ast.DoWhile:
            whcond=ele.cond
            if calleefuname in generator.visit(whcond):
                print("callee function:" +calleefuname +" in condition of while or do while statement.")
            whstmt=ele.stmt
            if type(whstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[whstmt])
            newwhstmt = ele.stmt
            if calleefuname in generator.visit(newwhstmt):
                linenum=get_sta_first_linenum(ele)
                if ind==1:
                    if linenum in callerfun_lineset:
                        inline_two_fun(newwhstmt,calleeast,callerfunname,calleefuname,ind)
                else:
                    inline_two_fun(newwhstmt, calleeast, callerfunname, calleefuname, ind)
        elif eletype==c_ast.If:
            ifcond=ele.cond
            tempsta = ele
            funcallastlist = []
            actual_param_list=[]
            get_sta_funcallast(calleefuname, ifcond, funcallastlist)
            """insert function"""
            if len(funcallastlist) > 0:
                get_actual_parm(funcallastlist[0],actual_param_list)
                n=0
                for decl in fun_formalarg_map[calleefuname]:
                    if type(decl)==c_ast.EllipsisParam:
                        continue
                    modidy_callee_variable_accoding_actual_param(calleeast,decl,actual_param_list[n],callerfunname)
                    n=n+1
                print(calleeast)
                for tele in calleeast.body.block_items:
                    parentnode.insert(ind, tele)
                    ind = ind + 1
                modif_ret(tempsta, calleefuname, ret_name)



                # n = 0
                # for decl in fun_formalarg_map[calleefuname]:
                #     if type(decl) == c_ast.EllipsisParam:
                #         continue
                #     parentnode.insert(ind, decl)  # 插入形参的声明
                #     # 插入形参赋值给实参的语句
                #     ind = ind + 1
                #     lname = decl.name
                #     # print(actual_param_list[n])
                #     if type(decl.type) == c_ast.ArrayDecl:
                #         destast = c_ast.ID(lname)
                #         srcast = c_ast.ID(actual_param_list[n])
                #         typeast = decl.type.type
                #         num = decl.type.dim.value
                #         assign = create_sizeof_sta(destast, srcast, typeast, num)
                #     else:
                #         assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(lname), rvalue=c_ast.ID(actual_param_list[n]))
                #     parentnode.insert(ind, assign)
                # ind = ind +1
                # # print(calleeast)
                # for tele in calleeast.body.block_items:
                #     parentnode.insert(ind, tele)
                #     ind = ind + 1
                # modif_ret(tempsta,calleefuname,ret_name)
            iftrue=ele.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    ele.iftrue = c_ast.Compound(block_items=[iftrue])
                newwiftrue = ele.iftrue
                if calleefuname in generator.visit(newwiftrue):
                    linenum = get_sta_first_linenum(ele)
                    if ind==1 and linenum in callerfun_lineset:
                        inline_two_fun(newwiftrue, calleeast, callerfunname, calleefuname,ind)
                    else:
                        inline_two_fun(newwiftrue, calleeast, callerfunname, calleefuname, ind)
            iffalse=ele.iffalse
            if iffalse is not None:
                if type(iffalse) != c_ast.Compound:
                    ele.iffalse = c_ast.Compound(block_items=[iffalse])
                newwiffalse = ele.iffalse
                if calleefuname in generator.visit(newwiffalse):
                    linenum = get_sta_first_linenum(ele)
                    if ind==1:
                        if linenum in callerfun_lineset:
                            inline_two_fun(newwiffalse, calleeast, callerfunname, calleefuname,ind)
                    else:
                        inline_two_fun(newwiffalse, calleeast, callerfunname, calleefuname,ind)
        elif eletype==c_ast.Switch:
            swcond=ele.cond
            if calleefuname in generator.visit(swcond):
                print("callee function:" +calleefuname +" in condition of switch statement.")
            swstmt=ele.stmt
            if type(swstmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[swstmt])
            newswstmt = ele.stmt
            if calleefuname in generator.visit(newswstmt):
                linenum = get_sta_first_linenum(ele)
                if ind==1:
                    if linenum in callerfun_lineset:
                        inline_two_fun(newswstmt, calleeast, callerfunname, calleefuname,ind)
                else:
                    inline_two_fun(newswstmt, calleeast, callerfunname, calleefuname, ind)
        elif eletype==c_ast.Label:
            lastmt=ele.stmt
            if type(lastmt) != c_ast.Compound:
                ele.stmt = c_ast.Compound(block_items=[lastmt])
            newlastmt = ele.stmt
            if calleefuname in generator.visit(newlastmt):
                linenum = get_sta_first_linenum(ele)
                if ind==1:
                    if linenum in callerfun_lineset:
                        inline_two_fun(newlastmt, calleeast, callerfunname, calleefuname,ind)
                else:
                    inline_two_fun(newlastmt, calleeast, callerfunname, calleefuname,ind)
        elif eletype==c_ast.Compound:
            if calleefuname in generator.visit(ele):
                linenum = get_sta_first_linenum(ele)
                if ind==1:
                    if linenum in callerfun_lineset:
                        inline_two_fun(ele,calleeast,callerfunname,calleefuname,ind)
                else:
                    inline_two_fun(ele, calleeast, callerfunname, calleefuname, ind)
        else:
            tempsta = ele
            funcallastlist = []
            actual_param_list = []
            if calleefuname in generator.visit(ele):
                get_sta_funcallast(calleefuname,ele,funcallastlist)
                if len(funcallastlist) > 0:
                    get_actual_parm(funcallastlist[0],actual_param_list)
                    n=0
                    for decl in fun_formalarg_map[calleefuname]:
                        if type(decl)==c_ast.EllipsisParam:
                            continue
                        modidy_callee_variable_accoding_actual_param(calleeast,decl,actual_param_list[n],callerfunname)
                        n=n+1
                    print(calleeast)
                    for tele in calleeast.body.block_items:
                        parentnode.insert(ind, tele)
                        ind = ind + 1
                    if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return:
                        parentnode.remove(tempsta)
                    elif type(tempsta)==c_ast.Decl:
                        modif_ret(tempsta,calleefuname,ret_name)
                    else:
                        tempsta.rvalue = c_ast.ID(name=ret_name)
            elif len(file_indloc_map)>0:
                absfile=fun_file_map[callerfunname]
                if absfile in file_indloc_map.keys():
                    lineset=file_indloc_map[absfile]
                    linenum=get_sta_first_linenum(ele)
                    if linenum in lineset and type(ele)==c_ast.FuncCall:
                        get_actual_parm(ele, actual_param_list)
                        n = 0
                        for decl in fun_formalarg_map[calleefuname]:
                            if type(decl) == c_ast.EllipsisParam:
                                continue
                            modidy_callee_variable_accoding_actual_param(calleeast, decl, actual_param_list[n],callerfunname)
                        for tele in calleeast.body.block_items:
                            parentnode.insert(ind, tele)
                            ind = ind + 1
                        if type(tempsta) == c_ast.FuncCall or type(tempsta) == c_ast.Return or type(
                                tempsta) == c_ast.Decl:
                            parentnode.remove(tempsta)
                        else:
                            tempsta.rvalue = c_ast.ID(name=ret_name)
        ind=ind+1


def get_sta_first_linenum(staast):
    if staast.coord is None:
        templine=-1
    else:
        templine = int(str(staast.coord).split(":")[1])
    return templine


def get_ast_all_linenum(staast,linelist):
    """
    获得ast结构的所有行号，行号可能是1个也可能是多个
    :param staast:
    :param linelist:
    :return:
    """
    if staast.coord is None:
        return
    else:
        templine = int(str(staast.coord).split(":")[1])
        if templine not in linelist:
            linelist.append(templine)
    for subast in staast:
        get_ast_all_linenum(subast,linelist)


def get_sta_funcallast(calleefunname, stmt, funcalllist):
    """
    一条简单语句对应的ast中是否包含被调用函数
    :param nextfunname: called函数的函数名
    :param stmt: 简单c语句对应的ast
    :param linenum: called函数所在的行号
    :param funlist: 返回列表，返回ture与called函数ast
    :return:
    """
    if stmt is None:
        return
    stype = type(stmt)
    if stype == c_ast.FuncCall:
        tempfunname = stmt.name
        funname = generator.visit(tempfunname)
        if funname == calleefunname:
            funcalllist.append(stmt)
            return
    for s in stmt:
        if s is None:
            continue
        stype = type(s)
        if stype == c_ast.FuncCall:
            tempfunname = s.name
            funname = generator.visit(tempfunname)
            if funname == calleefunname:
                funcalllist.append(s)
                return
            else:
                 get_sta_funcallast(calleefunname, s,  funcalllist)
        else:
             get_sta_funcallast(calleefunname, s,funcalllist)


def judge_two_list_samelevel(desend_chain, increase_chain):
    """
    从后往前比较两个列表中元素的重复个数
    :param desend_chain: list 降序chain
    :param increase_chain:  list 升序chain
    :return:
    """

    #深度copy两个列表并进行逆序
    desend_chain_new=copy.deepcopy(desend_chain)
    increase_chain_new=copy.deepcopy(increase_chain)
    desend_chain_new.reverse()
    increase_chain_new.reverse()
    desend_chain_len=len(desend_chain_new)
    increase_chain_len=len(increase_chain_new)
    samelevel=0

    #依次取出元素进行比较
    for ind in range(0,increase_chain_len):
        if ind < desend_chain_len:
            if desend_chain_new[ind]==increase_chain_new[ind]:
                samelevel=samelevel+1

    return samelevel

def do_fun_sig_inline_v1():
    """
    内联函数
    :return:
    """
    desend_chain_copy=copy.deepcopy(desend_chain)
    increase_chain_copy=copy.deepcopy(increase_chain)
    desend_chain_copy.reverse()
    increase_chain_copy.reverse()
    len_desend_chain=len(desend_chain)
    len_increase_chain=len(increase_chain)
    if len_desend_chain==len_increase_chain==1:
        inlineast=copy.deepcopy( fun_funast_map[desend_chain[0]])
        return  inlineast
    elif len_increase_chain==1 and len_desend_chain>1:
        ind=0
        calleeast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
        calleefunname = desend_chain[ind]
        print(calleefunname)
        ind = ind + 1
        while ind != len_desend_chain:
            callerast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
            callerfunname = desend_chain[ind]
            print("inline la.....")
            print(ind)
            print(callerfunname)
            print(desend_chain)
            inline_two_fun_v3(callerast.body, calleeast, callerfunname, calleefunname,-1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            ind = ind + 1
        return callerast
    elif len_increase_chain>1 and len_desend_chain==1:
        ind = 0
        calleeast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
        calleefunname = increase_chain[ind]
        ind = ind + 1
        while ind != len_increase_chain:
            callerast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
            callerfunname = increase_chain[ind]
            inline_two_fun_v3(callerast.body, calleeast, callerfunname, calleefunname,1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            ind = ind + 1
        return callerast

        pass
    elif len_increase_chain>1 and len_desend_chain>1:
        """从callee到caller inline
        首先对desend chain中的函数进行内联，内联到与increase chain重合的部分则停止，此时获得了一个内联后的tempcallerast
        对increase chain中的函数进行内联，此时一旦caller函数为与第一次重合的函数，则将callerast取为tempcallerast
        其他时候的callerast根据caller函数名提取
        """
        de_ind = 0
        calleeast = copy.deepcopy(fun_funast_map[desend_chain[de_ind]])
        calleefunname = desend_chain[de_ind]
        print(calleefunname)
        de_ind = de_ind + 1
        while de_ind != len_desend_chain:
            if calleefunname in increase_chain:
                break

            callerast = copy.deepcopy(fun_funast_map[desend_chain[de_ind]])
            callerfunname = desend_chain[de_ind]
            inline_two_fun_v3(callerast.body, calleeast, callerfunname, calleefunname,-1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            de_ind = de_ind + 1
            if callerfunname in increase_chain:
                break
        in_ind = 0
        samelevel = judge_two_list_samelevel(desend_chain, increase_chain)
        incalleeast = copy.deepcopy(fun_funast_map[increase_chain[in_ind]])
        calleefunname = increase_chain[in_ind]
        in_ind = in_ind + 1
        while in_ind != len_increase_chain:
            #判断callerfunname是否在desend chain中进行过inline，如果是，则取incallerast为callerast
            callerfunname = increase_chain[in_ind]
            if in_ind==len_increase_chain-samelevel and samelevel!=len_desend_chain: #意味着此函数是与desend chain中首次重合的索引
                incallerast=copy.deepcopy(callerast)
            else:
                print(increase_chain[in_ind])
                print(fun_funast_map.keys())
                incallerast = copy.deepcopy(fun_funast_map[increase_chain[in_ind]])
            inline_two_fun_v3(incallerast.body, incalleeast, callerfunname, calleefunname,1)
            incalleeast = copy.deepcopy(incallerast)
            calleefunname = callerfunname
            in_ind = in_ind + 1
        return incallerast


def do_fun_sig_inline():
    """
    内联函数
    :return:
    """
    desend_chain_copy=copy.deepcopy(desend_chain)
    increase_chain_copy=copy.deepcopy(increase_chain)
    desend_chain_copy.reverse()
    increase_chain_copy.reverse()
    len_desend_chain=len(desend_chain)
    len_increase_chain=len(increase_chain)
    if len_desend_chain==len_increase_chain==1:
        inlineast=copy.deepcopy( fun_funast_map[desend_chain[0]])
        return  inlineast
    elif len_increase_chain==1 and len_desend_chain>1:
        ind=0
        calleeast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
        calleefunname = desend_chain[ind]
        print(calleefunname)
        ind = ind + 1
        while ind != len_desend_chain:
            callerast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
            callerfunname = desend_chain[ind]
            print("inline la.....")
            print(ind)
            print(callerfunname)
            print(desend_chain)
            inline_two_fun(callerast.body, calleeast, callerfunname, calleefunname,-1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            ind = ind + 1
        return callerast
    elif len_increase_chain>1 and len_desend_chain==1:
        ind = 0
        calleeast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
        calleefunname = increase_chain[ind]
        ind = ind + 1
        while ind != len_increase_chain:
            callerast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
            callerfunname = increase_chain[ind]
            inline_two_fun(callerast.body, calleeast, callerfunname, calleefunname,1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            ind = ind + 1
        return callerast
        pass
    elif len_increase_chain>1 and len_desend_chain>1:
        """从callee到caller inline"""
        print("inline 1....1")
        ind = 0

        calleeast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
        calleefunname = desend_chain[ind]
        print(calleefunname)
        ind = ind + 1
        while ind != len_desend_chain:
            callerast = copy.deepcopy(fun_funast_map[desend_chain[ind]])
            # print(callerast)
            callerfunname = desend_chain[ind]
            print(callerfunname)
            # print(callerast)
            inline_two_fun(callerast.body, calleeast, callerfunname, calleefunname,-1)
            calleeast = copy.deepcopy(callerast)
            calleefunname = callerfunname
            ind = ind + 1
        ind = 0
        incalleeast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
        calleefunname = increase_chain[ind]
        ind = ind + 1

        samelevel=judge_two_list_samelevel(desend_chain,increase_chain)
        new_len_increase_chain= len_increase_chain-samelevel+1 #increase_chain与desend_chain只有一个重复元素
        print("compare same")
        print(new_len_increase_chain)

        while ind != new_len_increase_chain:
            #判断callerfunname是否在desend chain中进行过inline，如果是，则取incallerast为callerast

            if ind==new_len_increase_chain-1:
                incallerast=copy.deepcopy(callerast)
            else:
                incallerast = copy.deepcopy(fun_funast_map[increase_chain[ind]])
            callerfunname = increase_chain[ind]
            inline_two_fun(incallerast.body, incalleeast, callerfunname, calleefunname,1)
            incalleeast = copy.deepcopy(incallerast)
            calleefunname = callerfunname
            ind = ind + 1
        return incallerast

        # """从caller到callee inline"""
        # print("inline 1....1")
        # ind = 0
        # print(desend_chain_copy)
        # for ele in fun_file_map.keys():
        #     print(ele)
        #
        # callerast = copy.deepcopy(fun_funast_map[desend_chain_copy[ind]])
        # callerfunname = desend_chain_copy[ind]
        # print(callerfunname)
        # # print(calleeast)
        # ind = ind + 1
        # while ind != len_desend_chain:
        #     calleeast = copy.deepcopy(fun_funast_map[desend_chain_copy[ind]])
        #     # print(callerast)
        #     calleefunname = desend_chain_copy[ind]
        #     print(calleefunname)
        #     # print(callerast)
        #     inline_two_fun(callerast.body, calleeast, callerfunname, calleefunname)
        #     # callerast = copy.deepcopy(callerast)
        #     callerfunname = calleefunname
        #     ind = ind + 1
        #     # if ind==3:
        #     #     break
        # ind = 0
        # incallerast = copy.deepcopy(callerast)
        # callerfunname = increase_chain_copy[ind]
        # ind = ind + 1
        # while ind != len_increase_chain:
        #     # if ind == len_increase_chain - 1:
        #     #     incallerast = copy.deepcopy(callerast)
        #     # else:
        #     incalleeast = copy.deepcopy(fun_funast_map[increase_chain_copy[ind]])
        #     calleefunname = increase_chain_copy[ind]
        #     if calleefunname==desend_chain_copy[ind]:
        #         ind=ind+1
        #         continue
        #     inline_two_fun(incallerast.body, incalleeast, callerfunname, calleefunname)
        #     # incalleeast = copy.deepcopy(incallerast)
        #     callerfunname = calleefunname
        #     ind = ind + 1
        # return incallerast

def get_funsig_fun_formalarg_map():
    """
    ssa后
    :return:
    """
    for funname in fun_funast_map:
        funast=fun_funast_map[funname]
        fun_formalarg_map[funname] = []
        if  funast.decl.type.args != None:
            for i in funast.decl.type.args.params:
                fun_formalarg_map[funname].append(i)


def expland_code_add_in_slice(funbody,fianlly_ast_list,funlevel,endflag,endfun,inc_flag):

    for st in funbody:
        print(generator.visit(st))
        linenum=get_sta_first_linenum(st)
        filename=get_stacoord_absfilename(st)
        print("explang lint")
        print(linenum)
        print(generator.visit(st))
        if endflag[0]:
            if type(st)==c_ast.Label:
                fianlly_ast_list.append(st)
        elif linenum==-1: #c_ast.compound
            if type(st)==c_ast.Label:
                fianlly_ast_list.append(st)
            else:
                dec_inc_flang=str(st.coord).split(":")[-1]
                if int(dec_inc_flang)==1:
                    inc_flag[0]=True
                compound=c_ast.Compound(block_items=[])
                expland_code_add_in_slice(st.block_items,compound.block_items,filename,endflag,endfun,inc_flag)
                fianlly_ast_list.append(compound)

        elif linenum==-2: #if
            dec_inc_flang = str(st.coord).split(":")[-1]
            if int(dec_inc_flang) == 1:
                inc_flag[0] = True
                compound = c_ast.Compound(block_items=[])
                expland_code_add_in_slice(st.block_items, compound.block_items, filename, endflag, endfun, inc_flag)
                fianlly_ast_list.append(compound)
            else:
                fianlly_ast_list.append(st)
        else:#linenum>0
            print("llll")
            print(endfun)
            print(final_fun_lineset_map[get_stacoord_filename(st)])
            print(funlevel)
            if funlevel == endfun:
                if linenum > endline:
                    endflag[0] = True

            elif funlevel != endfun:
                print(type(increase_chain_fun_callloc_map[funlevel][0]))
                print(type(increase_chain_fun_callloc_map[funlevel][-1]))
                print(increase_chain_fun_callloc_map[funlevel])
                templist=increase_chain_fun_callloc_map[funlevel]
                print(increase_chain_fun_callloc_map[funlevel].sort())
                if len(increase_chain_fun_callloc_map[funlevel])>1:
                    funcalleelinenum = sorted(templist)[-1]
                else:
                    funcalleelinenum= increase_chain_fun_callloc_map[funlevel][-1]
                if linenum > funcalleelinenum:
                    endflag[0] = True

            if endflag[0] is False:
                print("aaa")

                if linenum in final_fun_lineset_map[get_stacoord_filename(st)]:
                    fianlly_ast_list.append(st)




def expland_code_add_in_slice_main(funast):
    funname=funast.decl.name
    finally_ast_list=[]
    endflag=[False]
    endfun=increase_chain[0]
    inc_flag=[False]
    print(generator.visit((funast)))
    expland_code_add_in_slice(funast.body.block_items,finally_ast_list,funname,endflag,endfun,inc_flag)
    return finally_ast_list


def expland_code_add_in_slice_v1(funast):
    """
    根据lineset获得切片中的代码
    :param funast:内联后的mainfun的funast
    :param final_fun_lineset_map: 行号集合(control flow path，loop and brach , or source dep）
    :return:
    """
    slice_astlist=[]
    desend_chain_copy=copy.deepcopy(desend_chain)
    desend_chain_copy.reverse()
    increase_chain_copy=copy.deepcopy(increase_chain)
    startfunname=""
    for funname in desend_chain_copy:
        if funname in desend_fun_loopif_map.keys():
            startfunname=funname
            break
    endfunname=""
    for funname in increase_chain_copy:
        if funname in increase_fun_loopif_map.keys():
            endfunname=funname
            break
    if startfunname=="":
        startfunname=desend_chain[0]
    if endfunname=="":
        endfunname=increase_chain[0]
    print(startfunname)
    print(endfunname)
    print("finally lineset....")
    print(final_fun_lineset_map)

    for st in funast.body.block_items:
        print(generator.visit(st))
        print(get_sta_first_linenum(st))
        print(get_stacoord_filename(st))
        print(endfunname)
        if (get_stacoord_absfilename(st)==fun_file_map[endfunname] and get_sta_first_linenum(st)>endline) :
            pass
        elif len(get_stacoord_filename(st)) > 0 and get_sta_first_linenum(
                st) in final_fun_lineset_map[get_stacoord_filename(st)]:
            slice_astlist.append(st)
        elif type(st)==c_ast.Label:
            slice_astlist.append(st)
        elif len(get_stacoord_filename(st))==0:
            slice_astlist.append(st)

    return slice_astlist



def get_sta_decl_ID(st,idlist):
    if type(st)==c_ast.FuncCall:
        st=st.args
     # temp=(unsigned int) (Data[a++]);只将此语句中的变量a添加到idlist中
    if type(st)==c_ast.Assignment and type(st.rvalue)==c_ast.Cast and type(st.rvalue.expr)==c_ast.ArrayRef and type(st.rvalue.expr.subscript)==c_ast.UnaryOp:
        idname=st.rvalue.expr.subscript.expr.name
        if idname not in idlist:
            idlist.append(idname)
            return
    elif type(st)==c_ast.ID:
        if st.name not in idlist:
            idlist.append(st.name)
        return

    

    if st is None:
        return
    for s in st:
        get_sta_decl_ID(s,idlist)


def do_copound_data_flow_line_dep(compast,var_ast_list,vardeclast,inclinelist):
    declname=vardeclast.name
    if compast.block_items is None:
        return
    for sta in compast.block_items:
        typesta=type(sta)
        linenum=get_sta_first_linenum(sta)
        absfile=get_stacoord_filename(sta)
        # print("linenum+....."+str(linenum))
        # if  linenum >startline and linenum not in funname_lineset_map[desend_chain[0]]:
        #     break
        if typesta == c_ast.Decl:
            if declname == sta.name:
                if absfile in inclinelist.keys() and linenum not in inclinelist[absfile] and declname != source_var_ast_list[0].name:
                    inclinelist[absfile].append(linenum)
                elif absfile not in inclinelist.keys():
                    inclinelist[absfile] = [linenum]
            if sta.init is not None:
                idlist = []
                get_sta_decl_ID(sta.init, idlist)
                if len(idlist)==0:
                    continue
                idname = idlist[0]
                if idname != declname:
                    if idname in fun_localval_delast_map.keys():
                        decas = copy.deepcopy(fun_localval_delast_map[idname])
                        var_ast_list.append(decas)
                else:
                    if absfile in inclinelist.keys() and linenum not in inclinelist[absfile] :
                        inclinelist[absfile].append(linenum)
                    elif absfile not in inclinelist.keys():
                        inclinelist[absfile] = [linenum]
        if typesta == c_ast.For:
            forstmt = sta.stmt
            if type(forstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=forstmt)
            newforstmt = sta.stmt
            do_copound_data_flow_line_dep(newforstmt,var_ast_list,vardeclast,inclinelist)
        elif typesta == c_ast.While or typesta == c_ast.DoWhile:
            whstmt=sta.stmt
            if type(whstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=whstmt)
            newwhstmt = sta.stmt
            do_copound_data_flow_line_dep(newwhstmt,var_ast_list,vardeclast,inclinelist)
        elif typesta == c_ast.If:
            iftrue = sta.iftrue
            if iftrue is not None:
                if type(iftrue) != c_ast.Compound:
                    sta.iftrue = c_ast.Compound(block_items=[iftrue])
                newiftrue=sta.iftrue
                do_copound_data_flow_line_dep(newiftrue,var_ast_list,vardeclast,inclinelist)
            iffalse = sta.iffalse
            if iffalse is not None:
                iffalsetype = type(iffalse)
                if iffalsetype != c_ast.Compound:
                    sta.iffalse = c_ast.Compound(block_items=[iffalse])
                newiffalse=sta.iffalse
                do_copound_data_flow_line_dep(newiffalse, var_ast_list, vardeclast, inclinelist)
        elif typesta == c_ast.Switch:
            switchstmt = sta.stmt
            if type(switchstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=[switchstmt])
            newswitchstmt = sta.stmt
            do_copound_data_flow_line_dep(newswitchstmt, var_ast_list, vardeclast, inclinelist)
        elif typesta == c_ast.Label:
            labelstmt = sta.stmt
            if type(labelstmt) != c_ast.Compound:
                sta.stmt = c_ast.Compound(block_items=[labelstmt])
            newlabelstmt = sta.stmt
            do_copound_data_flow_line_dep(newlabelstmt, var_ast_list, vardeclast, inclinelist)
        elif typesta==c_ast.Compound:
            do_copound_data_flow_line_dep(sta, var_ast_list, vardeclast, inclinelist)
        else:
            if typesta==c_ast.Assignment:
                # print(sta)
                idlist=[]
                get_sta_decl_ID(sta.rvalue,idlist)
                if len(idlist)==0:
                    rightid=""
                else:
                    rightid=idlist[0]
                get_sta_decl_ID(sta.lvalue,idlist)
                if len(idlist)==0:
                    leftid=""
                else:
                    leftid=idlist[-1]
                if rightid==declname or leftid==declname:
                    if absfile in inclinelist.keys() and linenum not in inclinelist[absfile]:
                        inclinelist[absfile].append(linenum)
                    elif absfile not in inclinelist.keys():
                        inclinelist[absfile] = [linenum]
                if leftid!=declname and leftid in fun_localval_delast_map.keys() :
                    decas=copy.deepcopy(fun_localval_delast_map[leftid])
                    var_ast_list.append(decas)
                if rightid!=declname and rightid!="" and rightid in fun_localval_delast_map.keys():
                    decas = copy.deepcopy(fun_localval_delast_map[rightid])
                    var_ast_list.append(decas)
            elif typesta==c_ast.FuncCall and  type(sta.name)!=c_ast.UnaryOp and sta.name.name=='strncat':
                firstarg=sta.args.exprs[0]
                if type(firstarg)==c_ast.BinaryOp:
                    idname=firstarg.left.name
                    decas = copy.deepcopy(fun_localval_delast_map[idname])
                    var_ast_list.append(decas)
                # print('functioon strncat')
                # print(sta)






def source_data_flow_dep_line(mainfunast):
    """
    after ssa
    :param srcvarname:
    :return:
    """
    funname=desend_chain[0]
    # funast=fun_funast_map[funname]
    funast=mainfunast
    dealed_varnamelist=[]
    var_ast_list=[]
    inclinelist={}
    do_copound_data_flow_line_dep(funast.body,var_ast_list,source_var_ast_list[0],inclinelist)
    # print("data flow....")
    # print(var_ast_list)
    while len(var_ast_list)>0:
        tempast=var_ast_list.pop()
        if tempast.name not in dealed_varnamelist:
            dealed_varnamelist.append(tempast.name)
        declname=tempast.name
        for sta in funast.body.block_items:
            linenum=get_sta_first_linenum(sta)
            absfile = get_stacoord_filename(sta)
            if type(sta)==c_ast.Decl:
                # print('hhhh')
                # print(declname)
                # print(sta.name)
                if declname == sta.name:
                    if absfile in inclinelist.keys() and linenum not in inclinelist[absfile] and declname!=source_var_ast_list[0].name:
                        inclinelist[absfile].append(linenum)
                    elif absfile not in inclinelist.keys():
                        inclinelist[absfile]=[linenum]
                if sta.init is not None:
                    idlist = []
                    get_sta_decl_ID(sta.init, idlist)
                    if len(idlist)==0:
                        continue
                    idname = idlist[0]
                    if idname != declname:
                        if idname in fun_localval_delast_map.keys():
                            decas = copy.deepcopy(fun_localval_delast_map[idname])
                            if decas.name not in dealed_varnamelist:
                                var_ast_list.append(decas)
                    else:
                        if absfile in inclinelist.keys() and linenum not in inclinelist[absfile] :
                            inclinelist[absfile].append(linenum)
                        elif absfile not in inclinelist.keys():
                            inclinelist[absfile] = [linenum]

            elif type(sta)==c_ast.Assignment:
                idlist = []
                get_sta_decl_ID(sta.rvalue, idlist)
                if len(idlist)==0:
                    rightid=''
                else:
                    rightid = idlist[0]
                get_sta_decl_ID(sta.lvalue, idlist)
                if len(idlist)==0:
                    leftid=''
                else:
                    leftid = idlist[-1]
                if rightid == declname or leftid == declname:
                    if absfile in inclinelist.keys() and linenum not in inclinelist[absfile]:
                        inclinelist[absfile].append(linenum)
                    elif absfile not in inclinelist.keys():
                        inclinelist[absfile] = [linenum]
                if leftid != declname and leftid in fun_localval_delast_map.keys() :
                    decas = copy.deepcopy(fun_localval_delast_map[leftid])
                    if decas.name not in dealed_varnamelist:
                     var_ast_list.append(decas)
                if rightid != declname and rightid in fun_localval_delast_map.keys():
                    decas = copy.deepcopy(fun_localval_delast_map[rightid])
                    if decas.name not in dealed_varnamelist:
                        var_ast_list.append(decas)
    return  inclinelist

def get_final_fun_lineset_map(mainfunast):
    """
    获得最终的行号集合
    :param mainfunast:自合成后的主调函数ast
    :return:
    """
    if len(source_var_ast_list)>0:
        srcdep_lineset=source_data_flow_dep_line(mainfunast) ##source相关reference的行号集合
    else:
        srcdep_lineset={}
    print(srcdep_lineset)
    funlist=[]
    for funname in desend_chain:
        if funname not in funlist:
            funlist.append(funname)
    for funname in increase_chain:
        if funname not in funlist:
            funlist.append(funname)
    for funname in funlist:
        flowlineset = funname_lineset_map[funname]

        if funname in desend_fun_loopif_map.keys():
            flowlineset = flowlineset + desend_fun_loopif_map[funname]
        if funname in increase_fun_loopif_map.keys():
            flowlineset = flowlineset + increase_fun_loopif_map[funname]
        fileinfo=fun_file_map[funname]
        ind=fileinfo.rindex("/")
        absfile=fileinfo[ind+1:]
        print(absfile)
        if absfile in final_fun_lineset_map.keys():
            final_fun_lineset_map[absfile]=final_fun_lineset_map[absfile]+flowlineset
        else:
            final_fun_lineset_map[absfile]=flowlineset
        # if funname==desend_chain[0]:
        #     flowlineset=flowlineset+srcdep_lineset
        # if funname in desend_fun_loopif_map.keys():
        #     flowlineset = flowlineset + desend_fun_loopif_map[funname]
        # if funname in increase_fun_loopif_map.keys():
        #     flowlineset = flowlineset + increase_fun_loopif_map[funname]
        # final_fun_lineset_map[funname]=flowlineset
    for key in srcdep_lineset.keys():
        if len(key)==0:
            continue
        final_fun_lineset_map[key] = final_fun_lineset_map[key] + srcdep_lineset[key]

def abstract_source(firstast,sliceastlist,ind):
    """
    功能
    :param firstast: 待处理的subast
    :param sliceastlist:
    :param ind:
    :return:
    """
    sourcefunname=desend_chain[0]
    print("source")
    print(generator.visit(firstast))
    typesta=type(firstast)
    csta=generator.visit(firstast)
    if typesta == c_ast.For or  typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or  typesta == c_ast.Label :
        forstmt = firstast.stmt
        # if '_'+sourcefunname+'_' in csta:
        newind=0
        if type(forstmt)!=c_ast.EmptyStatement:
            if type(forstmt)!=c_ast.Compound:
                abstract_source(forstmt, None, newind)
            else:
                for ele in forstmt.block_items:
                    abstract_source(ele,forstmt.block_items,newind)
                    newind=newind+1
    elif typesta==c_ast.Compound:
        # if '_'+sourcefunname+'_' in csta:
        newind=0
        for ele in firstast.block_items:
            abstract_source(ele,firstast.block_items,newind)
            newind=newind+1
    elif typesta==c_ast.Case or typesta==c_ast.Default:
        newind=0
        for ele in firstast.stmts:
            abstract_source(ele, firstast.stmts, newind)
            newind = newind + 1
    elif typesta == c_ast.If:
        ifcond=firstast.cond
        linenum=get_sta_first_linenum(ifcond)
        if linenum==startline and get_stacoord_filename(firstast) == src_file:
            # strcpyast=c_ast.FuncCall(name=c_ast.ID(name='strcpy'),
            #                          args=c_ast.ExprList(exprs=[
            #                              c_ast.ID(name=source_var_ast_list[0].name),
            #                              c_ast.ID(name=source_var_ast_list[0].name+'_src')
            #                          ]))
            print(firstast)
            print(generator.visit(firstast))
            if type(firstast.cond)==c_ast.BinaryOp and source_funname in generator.visit(firstast.cond.right):
                arg=ifcond.right.left.args.exprs[source_argnum - 1]
            else:
                arg = ifcond.left.args.exprs[source_argnum - 1]
            if type(arg) == c_ast.Constant:
                srcast = c_ast.Decl(name='__src__secret',
                                    type=c_ast.PtrDecl(quals=[],
                                                       type=c_ast.TypeDecl(declname='__src__secret',
                                                                           quals=[],
                                                                           type=c_ast.IdentifierType(
                                                                               names=['char']))),
                                    init=None, quals=[], bitsize=None, storage=[], funcspec=[])
                ifcond.left.args.exprs[source_argnum - 1] = c_ast.ID(name='__src__secret')
                source_var_ast_list.append(srcast)
            elif type(arg) == c_ast.BinaryOp:
                srcname = arg.left.name
                if srcname in fun_localval_delast_map.keys():
                    srcast = fun_localval_delast_map[srcname]
                    source_var_ast_list.append(srcast)
                    pass
            elif type(arg) == c_ast.ID:
                srcname = arg.name
                if srcname in fun_localval_delast_map.keys():
                    srcast = fun_localval_delast_map[srcname]
                    source_var_ast_list.append(srcast)
                    pass
            srcsta = generator.visit(ifcond)
            source_stament_list.append(srcsta)
            return
        iftrue = firstast.iftrue
        # if iftrue is not None and '_'+sourcefunname+'_' in csta:
        if iftrue is not None:
            newind=0
            if type(iftrue) !=c_ast.Compound:
                abstract_source(iftrue, None, newind)
            else:
                if iftrue.block_items is not None:
                    for ele in iftrue.block_items:
                        abstract_source(ele,iftrue.block_items,newind)
                        newind=newind+1
        iffalse = firstast.iffalse
        # if iffalse is not None and '_'+sourcefunname+'_' in csta:
        if iffalse is not None:
            newind=0
            if type(iffalse)!=c_ast.Compound:
                abstract_source(iffalse, None, newind)
            else:
                if iffalse.block_items is not None:
                    for ele in iffalse.block_items:
                        abstract_source(ele,iffalse.block_items,newind)
                        newind=newind+1
    elif typesta==c_ast.Decl:
        linenum = get_sta_first_linenum(firstast)
        if  linenum == startline and get_stacoord_filename(firstast) == src_file:
            if source_argnum==0:
                assignast = c_ast.Assignment(op='=',lvalue=c_ast.ID(name=firstast.name), rvalue=firstast.init)
                sliceastlist.insert(ind, assignast)
                source_stament_list.append(generator.visit(assignast))
                sliceastlist.remove(firstast)
                # have_mod_source[0] = True
                source_var_ast_list.append(firstast)
            else:
                abstract_source(firstast.init, sliceastlist, ind)
    else:
        linenum = get_sta_first_linenum(firstast)
        if linenum == startline and get_stacoord_filename(firstast) == src_file:
            print("abstrct.......1")
            print(startline)
            print(linenum)
            print(src_file)
            print(get_stacoord_filename(firstast))
            print(generator.visit(firstast))
            if type(firstast) == c_ast.FuncCall:
                print("abstrct.......2")
                print(firstast)
                arg = firstast.args.exprs[source_argnum - 1]
                if type(arg) == c_ast.Constant:
                    srcast = c_ast.Decl(name='__src__secret',
                                        type=c_ast.PtrDecl(quals=[],
                                                           type=c_ast.TypeDecl(declname='__src__secret',
                                                                               quals=[],
                                                                               type=c_ast.IdentifierType(
                                                                                   names=['char']))),
                                        init=None, quals=[], bitsize=None, storage=[], funcspec=[])
                    firstast.args.exprs[source_argnum - 1] = c_ast.ID(name='__src__secret')
                    source_var_ast_list.append(srcast)
                elif type(arg) == c_ast.UnaryOp:
                    argname = arg.expr.name
                    arcast = fun_localval_delast_map[argname]
                    source_var_ast_list.append(arcast)
                elif type(arg) == c_ast.ID:
                    argname = arg.name
                    arcast = fun_localval_delast_map[argname]
                    source_var_ast_list.append(arcast)
                    print("source ast..")
                    print(arcast)
                elif type(arg)==c_ast.BinaryOp:
                    if type(arg.left)==c_ast.BinaryOp:
                        if type(arg.left.left)==c_ast.UnaryOp:
                            argname=arg.left.left.expr.name
                        else:
                            argname = arg.left.left.name
                    else:
                        argname=arg.left.name
                    arcast = fun_localval_delast_map[argname]
                    source_var_ast_list.append(arcast)
            elif type(firstast) == c_ast.Assignment:

                if source_argnum == 0:
                    if type(firstast.lvalue)==c_ast.ID:
                        arcast = fun_localval_delast_map[firstast.lvalue.name]
                        source_var_ast_list.append(arcast)
                    else:
                        print("without deal..")
                        exit(1)
                        pass
                else:
                    rvalue = firstast.rvalue
                    if type(rvalue) == c_ast.FuncCall:
                        arg = rvalue.args.exprs[source_argnum - 1]
                        if type(arg) == c_ast.Constant:
                            srcast = c_ast.Decl(name='__src__secret',
                                                type=c_ast.PtrDecl(quals=[],
                                                                   type=c_ast.TypeDecl(declname='__src__secret',
                                                                                       quals=[],
                                                                                       type=c_ast.IdentifierType(
                                                                                           names=['char']))),
                                                init=None, quals=[], bitsize=None, storage=[], funcspec=[])
                            firstast.args.exprs[source_argnum - 1] = c_ast.ID(name='__src__secret')
                            source_var_ast_list.append(srcast)
                        elif type(arg) == c_ast.Cast and type(arg.expr) == c_ast.BinaryOp:
                            argname = arg.expr.left.name
                            arcast = fun_localval_delast_map[argname]
                            source_var_ast_list.append(arcast)
                        elif type(arg) == c_ast.Cast and type(arg.expr) == c_ast.UnaryOp:
                            argname = arg.expr.expr.name
                            arcast = fun_localval_delast_map[argname]
                            source_var_ast_list.append(arcast)
                        elif type(arg)==c_ast.UnaryOp:
                            argname = arg.expr.name.name
                            arcast = fun_localval_delast_map[argname]
                            source_var_ast_list.append(arcast)
                        elif type(arg)==c_ast.BinaryOp and type(arg.left)==c_ast.StructRef:
                            # argname = arg.expr.name.name
                            # arcast = fun_localval_delast_map[argname]
                            # source_var_ast_list.append(arcast)
                            pass
                        elif type(arg)==c_ast.StructRef:
                            pass
                        else:
                            print("argname...")
                            print(arg)
                            argname = arg.name
                            arcast = fun_localval_delast_map[argname]
                            source_var_ast_list.append(arcast)
                            pass
            srcsta = generator.visit(firstast)
            source_stament_list.append(srcsta)



isabstract_sink=False
def abstract_sink(firstast,sliceastlist, ind):
    global isabstract_sink
    typesta=type(firstast)
    print('findsinkk,,,,,,')
    print(get_stacoord_filename(firstast))
    print(get_sta_first_linenum(firstast))
    if get_stacoord_filename(firstast)==sink_file and get_sta_first_linenum(firstast) ==endline:
        idlist = []
        print(firstast)
        if typesta==c_ast.For and type(firstast.cond)==c_ast.BinaryOp:
            get_sta_decl_ID(firstast.cond.right, idlist)    #
        elif typesta==c_ast.If:
            get_sta_decl_ID(firstast.cond, idlist)
        elif typesta==c_ast.Assignment and type(firstast.lvalue)==c_ast.ArrayRef:
            idlist.append(firstast.lvalue.subscript.name)
        else:
            get_sta_decl_ID(firstast, idlist)

        # print(idlist)
        if len(idlist)==0:
            print("sink in constant, no slice")
            exit(0)
        print('findsinkk,,,,,,')
        print(idlist)
        for idname in idlist:
            print("sink argnum")
            print(idname)
            if idname not in fun_localval_delast_map and idname not in global_vaname_declast_map:
                continue
            if idname == 'stdout':
                continue
            if idname in fun_localval_delast_map.keys():
                sinkast = fun_localval_delast_map[idname]
            elif idname in global_vaname_declast_map.keys():
                sinkast = global_vaname_declast_map[idname]

            if type(sinkast.type)==c_ast.ArrayDecl:
                sinkast.type=c_ast.PtrDecl(type=sinkast.type.type,quals=[])
            print(sinkast)
            if type(sinkast.type)!=c_ast.ArrayDecl:
                sink_var_ast_list.append(sinkast)

        if isFUZZ:
            print("sink location2")
            print(len(sink_var_ast_list))
            print(sink_var_ast_list)
            for ele in sink_var_ast_list:

                newdecl=copy.deepcopy(ele)
                newdecl.name=ele.name+'_sink'
                if type(ele.type)==c_ast.PtrDecl:
                    assign=c_ast.FuncCall(name=c_ast.ID(name='strcpy'),
                                          args=c_ast.ExprList(exprs=[c_ast.ID(name='_ret_val_'),
                                                                     c_ast.ID(name=ele.name)]))
                else:
                    assign = c_ast.Assignment(op='=', lvalue=c_ast.ID("_ret_val_"), rvalue=c_ast.ID(ele.name),coord=firstast.coord)
                print("add sink location")
                print(generator.visit(firstast))
                sliceastlist.insert(ind, assign)
                sliceastlist.remove(firstast)
                # mod_source_source_srcname(newdecl,ele.name,ele.name+'_sink')
                # slice_formarparam_list.append(newdecl)
                # print("sinksta....modi before")
                # print(generator.visit(firstast))
                # print(sliceastlist)
                # for sta in sliceastlist:
                #     print(generator.visit(sta))
                # fid = sliceastlist.index(firstast)

                # copyfirstast=copy.deepcopy(firstast)
                # mod_source_source_srcname(copyfirstast,ele.name,ele.name+'_sink')

                # sliceastlist.insert(ind,copyfirstast)
                # del sliceastlist[ind+1]
                # print("sinksta....modi after")
                # print(generator.visit(firstast))
                # for sta in sliceastlist:
                #     print(generator.visit(sta))
            if type(firstast)==c_ast.For:
                sinksta=firstast.cond
            else:
                sinksta=firstast
            sink_stament_list.append(generator.visit(sinksta))

        else:
            opsinkast=get_opsink_callast()
            print("opsinkast")
            print(opsinkast)
            sliceastlist.insert(ind, opsinkast)
            sliceastlist.remove(firstast)
        isabstract_sink=True
        # print(sink_var_ast_list)
        # opsinkast=get_opsink_callast()

    elif typesta == c_ast.For or  typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or  typesta == c_ast.Label:
        forstmt = firstast.stmt
        newind=0
        if type(forstmt)!=c_ast.Compound:
            return
        print(firstast)
        for ele in forstmt.block_items:
            abstract_sink(ele,forstmt.block_items,newind)
            newind=newind+1
            if isabstract_sink:
                break
    elif typesta==c_ast.Compound:
        newind = 0
        for ele in firstast.block_items:
            abstract_sink(ele, firstast.block_items, newind)
            newind = newind + 1
            if isabstract_sink:
                break
    elif typesta==c_ast.Case or typesta==c_ast.Default:
        newind = 0
        for ele in firstast.stmts:
            abstract_sink(ele, firstast.stmts, newind)
            newind = newind + 1
            if isabstract_sink:
                break
    elif typesta==c_ast.If:
        if firstast.iftrue is not None:
            forstmt = firstast.iftrue
            newind = 0
            if forstmt.block_items is not None:
                for ele in forstmt.block_items:
                    abstract_sink(ele, forstmt.block_items, newind)
                    newind = newind + 1
                    if isabstract_sink:
                        break
        if firstast.iffalse is not None:
            forstmt = firstast.iffalse
            newind = 0
            if forstmt.block_items is not None:
                for ele in forstmt.block_items:
                    abstract_sink(ele, forstmt.block_items, newind)
                    newind = newind + 1
                    if isabstract_sink:
                        break


def get_stacoord_filename(staast):
    if staast.coord is None:
        templine = ""
    else:
        temp = str(staast.coord).split(":")[0]
        if "/" in temp:
            rindex=temp.rindex('/')
            templine=temp[rindex+1:]
        else:
            templine=""
        # print('7777777')
        # print(templine)
    return templine

def get_stacoord_absfilename(staast):
    if staast.coord is None:
        templine = ""
    else:
        temp = str(staast.coord).split(":")[0]
        templine=temp
    return templine

def abstartct_source_main(sliceastlist):
    # print('start abstract....')
    # print(startline)
    ind=0
    for sta in sliceastlist:
        typesta = type(sta)
        if have_mod_source[0]:
            break
        if typesta == c_ast.For or typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or typesta == c_ast.Label or typesta == c_ast.If or typesta==c_ast.Compound:
           abstract_source(sta,sliceastlist,ind)
        elif typesta==c_ast.Decl:
            linenum = get_sta_first_linenum(sta)
            if linenum == startline and get_stacoord_filename(sta) == src_file:
                assignast=c_ast.Assignment(op='=',lvalue=c_ast.ID(name=sta.name),rvalue=sta.init)
                sliceastlist.insert(ind, assignast)
                sliceastlist.remove(sta)
                source_stament_list[0]=generator.visit(assignast)
                source_var_ast_list.append(sta)
                have_mod_source[0] = True

        # else:
        #     linenum = get_sta_first_linenum(sta)
        #     if linenum == startline and get_stacoord_filename(sta)==src_file:
        #         strcpyast = c_ast.FuncCall(name=c_ast.ID(name='strcpy'),
        #                                    args=c_ast.ExprList(exprs=[
        #                                        c_ast.ID(name=source_var_ast_list[0].name),
        #                                        c_ast.ID(name=source_var_ast_list[0].name + '_src')
        #                                    ]))
        #         sliceastlist.inset(ind, strcpyast)
        #         sliceastlist.remove(sta)
        #         have_mod_source[0]=True
        ind=ind+1

def get_opsink_callast():
    funcallsta = c_ast.FuncCall(name=c_ast.ID(name="opsink"),
                                args=c_ast.ExprList(exprs=[]))
    print("opsink function")
    print(sink_var_ast_list)
    for arg in sink_var_ast_list:
        idast=c_ast.ID(name=arg.name)
        funcallsta.args.exprs.append(idast)
    return funcallsta


#写一个函数，获得ast的所有行号
def get_sta_all_linenum(sta):
    linenumlist=[]
    if sta is None:
        return linenumlist
    if sta is not None and sta.coord is None:
        return linenumlist
    else:
        temp = str(sta.coord).split(":")[0]
        if "/" in temp:
            rindex = temp.rindex('/')
            templine = temp[rindex + 1:]
        else:
            templine = ""
        linenumlist.append(templine)
        if type(sta)==c_ast.Compound:
            for ele in sta.block_items:
                if ele is not None:
                    print(ele)
                    linenumlist.extend(get_sta_all_linenum(ele))
        elif type(sta)==c_ast.If:
            if sta.iftrue is not None:
                forstmt = sta.iftrue
                if forstmt.block_items is not None:
                    for ele1 in forstmt.block_items:
                        linenumlist.extend(get_sta_all_linenum(ele1))
            if sta.iffalse is not None:
                forstmt = sta.iffalse
                if forstmt.block_items is not None:
                    for ele2 in forstmt.block_items:
                        linenumlist.extend(get_sta_all_linenum(ele2))
        elif type(sta)==c_ast.For or type(sta)==c_ast.While or type(sta)==c_ast.DoWhile:
            forstmt=sta.stmt
            if forstmt.block_items is not None:
                for ele3 in forstmt.block_items:
                    linenumlist.extend(get_sta_all_linenum(ele3))
        elif type(sta)==c_ast.Switch:
            forstmt=sta.stmt
            if forstmt.block_items is not None:
                for ele4 in forstmt.block_items:
                    linenumlist.extend(get_sta_all_linenum(ele4))
        elif type(sta)==c_ast.Label:
            forstmt=sta.stmt
            if forstmt.block_items is not None:
                for ele5 in forstmt.block_items:
                    linenumlist.extend(get_sta_all_linenum(ele5))
        elif type(sta)==c_ast.FuncCall:
            for ele6 in sta.args.exprs:
                linenumlist.extend(get_sta_all_linenum(ele6))
        elif type(sta)==c_ast.BinaryOp:
            linenumlist.extend(get_sta_all_linenum(sta.left))
            linenumlist.extend(get_sta_all_linenum(sta.right))
        elif type(sta)==c_ast.Assignment:
            linenumlist.extend(get_sta_all_linenum(sta.lvalue))
            linenumlist.extend(get_sta_all_linenum(sta.rvalue))
        elif type(sta)==c_ast.ID:
            return linenumlist
        elif type(sta)==c_ast.IdentifierType:
            return linenumlist
        elif type(sta)==c_ast.Constant:
            return linenumlist
        elif type(sta)==c_ast.TernaryOp:
            linenumlist.extend(get_sta_all_linenum(sta.cond))
            linenumlist.extend(get_sta_all_linenum(sta.iftrue))
            linenumlist.extend(get_sta_all_linenum(sta.iffalse))
        elif type(sta)==c_ast.ArrayRef:
            linenumlist.extend(get_sta_all_linenum(sta.name))
            linenumlist.extend(get_sta_all_linenum(sta.subscript))
        elif type(sta)==c_ast.StructRef:
            linenumlist.extend(get_sta_all_linenum(sta.name))
            linenumlist.extend(get_sta_all_linenum(sta.field))
        elif type(sta)==c_ast.UnaryOp:
            linenumlist.extend(get_sta_all_linenum(sta.expr))
        elif type(sta)==c_ast.Typename:
            linenumlist.extend(get_sta_all_linenum(sta.type))
        elif type(sta)==c_ast.Cast:
            linenumlist.extend(get_sta_all_linenum(sta.expr))
        elif type(sta)==c_ast.ArrayDecl:
            linenumlist.extend(get_sta_all_linenum(sta.type))
            linenumlist.extend(get_sta_all_linenum(sta.dim))
        elif type(sta)==c_ast.PtrDecl:
            linenumlist.extend(get_sta_all_linenum(sta.type))
        elif type(sta)==c_ast.TypeDecl:
            return linenumlist
            # if sta.type is not None:
            #     linenumlist.extend(get_sta_all_linenum(sta.type))
        elif type(sta)==c_ast.Decl:
            if sta.type is not None:
               
                linenumlist.extend(get_sta_all_linenum(sta.type))
            linenumlist.extend(get_sta_all_linenum(sta.init))
        elif type(sta)==c_ast.FuncDecl:
            linenumlist.extend(get_sta_all_linenum(sta.args))
            linenumlist.extend(get_sta_all_linenum(sta.type))
        elif type(sta)==c_ast.ParamList:
            for ele7 in sta.params:
                linenumlist.extend(get_sta_all_linenum(ele7))
        elif type(sta)==c_ast.FuncDef:
            linenumlist.extend(get_sta_all_linenum(sta.decl))
            linenumlist.extend(get_sta_all_linenum(sta.body))
        elif type(sta)==c_ast.FileAST:
            for ele8 in sta.ext:
                linenumlist.extend(get_sta_all_linenum(ele8))
        elif type(sta)==c_ast.CompoundLiteral:
            linenumlist.extend(get_sta_all_linenum(sta.type))
            linenumlist.extend(get_sta_all_linenum(sta.init))
        elif type(sta)==c_ast.InitList:
            for ele9 in sta.exprs:
                linenumlist.extend(get_sta_all_linenum(ele9))
        elif type(sta)==c_ast.InitList:
            for ele10 in sta.exprs:
                linenumlist.extend(get_sta_all_linenum(ele10))
        elif type(sta)==c_ast.FuncCall:
            for ele11 in sta.args.exprs:
                linenumlist.extend(get_sta_all_linenum(ele11))

#获得astnode的所有行号
def get_sta_all_linenum(c):
    linenumlist=[]
    if c.coord is not None:
        linenumlist.append(int(str(c.coord).split(":")[1]))
    for child in c:
        if child is None:
            continue
        else:
            if child.coord is not None:
                linenumlist.append(int(str(child.coord).split(":")[1]))
            linenumlist.extend(get_sta_all_linenum(child))
    return linenumlist
        


def get_all_sink_linenum(c, last_num, inc_linenum):
    if c.coord is not None:
        templine = int(str(c.coord).split(":")[1])
        if templine > last_num:
            last_num = templine
            if len(inc_linenum) == 0:
                inc_linenum.append(last_num)
            else:
                if last_num not in inc_linenum:
                    inc_linenum.append(last_num)
                # inc_linenum[0] = last_num
    for child in c:
        if child is None:
            continue
        else:
            if child.coord is not None:
                templine = int(str(child.coord).split(":")[1])
                if templine > last_num:
                    last_num = templine
                    if len(inc_linenum) == 0:
                        inc_linenum.append(last_num)
                    else:
                        inc_linenum[0] = last_num
            get_all_sink_linenum(child, last_num, inc_linenum)


def abstract_sink_main(sliceastlist):
    global isabstract_sink
    """
    对sink进行抽象并提取sink变量
    :param sliceastlist: 经过代码expand之后的ast集合
    :return:
    """
    ind=len(sliceastlist)
    """
    因为slice的end处可能包含多个label语句，所以sink语句可能不在倒数第二个ast
    逆序找到第一个类型不为c_ast.Label类型的ast
    """

    #记录一下sink在sliceastlist中的索引
    count=len(sliceastlist)-1   #倒数第一个ast的索引
    for ele in sliceastlist[::-1]: #逆序遍历列表

        #如果label中的语句数量大于1，那么就是多个label语句，需要递归遍历
        if type(ele)==c_ast.Label:
            # lineelist=(ele.stmt)
            # lineelist=[]
            last_num=-1
            # get_all_sink_linenum(ele.stmt,last_num,lineelist)
            linelist=get_sta_all_linenum(ele)
            print("sink astast")
            print(linelist)
            print(ele)

            #判断是否sinkline在lineelist中
            if endline in linelist:
                
                lastast=ele
                break

            # if len(ele.stmt.block_items)>1:
            #     lastast=ele
            #     break
            # else:
            #     if type(ele.stmt.block_items[0])!=c_ast.EmptyStatement:
            #         lastast=ele
            #         break

        elif type(ele)!=c_ast.Label:
            lastast=ele
            break
        count=count-1
    # lastast=sliceastlist[-2] #sink在倒数第二个ast，倒数第一个ast是主调函数的label语句
    typesta = type(lastast)
    print("sink location")
    print(typesta)
    print(generator.visit(lastast))
    if get_stacoord_filename(lastast)==sink_file and get_sta_first_linenum(lastast) ==endline:
        idlist = []
        if typesta==c_ast.For and type(lastast.cond)==c_ast.BinaryOp:
            get_sta_decl_ID(lastast.cond.right)
        # elif typesta==c_ast.If
        else:
            get_sta_decl_ID(lastast, idlist)
        for idname in idlist:
            print("sink argname")
            print(idname)
            if idname == 'stdout':
                continue
            if idname in fun_localval_delast_map.keys():
                sinkast = fun_localval_delast_map[idname]
            else:
                sinkast = global_vaname_declast_map[idname]


            #如果sinkast的类型是c_ast.ArrayDecl，将此节点转换为c_ast.PtrDecl
            if type(sinkast.type)==c_ast.ArrayDecl:
                sinkast.type=c_ast.PtrDecl(type=sinkast.type.type,quals=[])
            print(sinkast)
            print(type(sinkast))
            if type(sinkast.type)!=c_ast.ArrayDecl:
                sink_var_ast_list.append(sinkast)

        if isFUZZ:
            print("sink location1")
            print(sink_var_ast_list)
            for ele in sink_var_ast_list:
                # newdecl.name=ele.name+'_sink'
                if type(ele.type)==c_ast.PtrDecl:
                    assign=c_ast.FuncCall(name=c_ast.ID(name='strcpy'),
                                          args=c_ast.ExprList(exprs=[c_ast.ID(name='_ret_val_'),
                                                                     c_ast.ID(name=ele.name)]))
                else:
                    assign = c_ast.Assignment(op='=', lvalue=c_ast.ID("_ret_val_"), rvalue=c_ast.ID(ele.name),coord=lastast.coord)
                sliceastlist.pop()
                sliceastlist.append(assign)

                # mod_source_source_srcname(newdecl,ele.name,ele.name+'_sink')
                # slice_formarparam_list.append(newdecl)
                # mod_source_source_srcname(lastast,ele.name,ele.name+'_sink')
            if type(lastast)==c_ast.For:
                sinkast=lastast.cond
            else:
                sinkast=lastast
            sink_stament_list.append(generator.visit(sinkast))
        else:
            opsinkast=get_opsink_callast()
            print("opsinkast")
            print(opsinkast)
            sliceastlist.pop()
            sliceastlist.append(opsinkast)
        print("sinksta....modi after")
        print(generator.visit(lastast))
    elif typesta == c_ast.For or typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or typesta == c_ast.Label:
        forstmt = lastast.stmt
        newind = 0
        for ele in forstmt.block_items:
            abstract_sink(ele, forstmt.block_items, newind)
            newind = newind + 1
            if isabstract_sink:
                break
    elif typesta==c_ast.Compound:
        print("hhhhhhhh")
        newind = 0
        for ele in lastast.block_items:
            abstract_sink(ele, lastast.block_items, newind)
            newind = newind + 1
            if isabstract_sink:
                break
    elif typesta==c_ast.Case or typesta==c_ast.Default:
        newind = 0
        for ele in lastast.stmts:
            abstract_sink(ele, lastast.stmts, newind)
            newind = newind + 1
            if isabstract_sink:
                break
    elif typesta==c_ast.If:
        if lastast.iftrue is not None:
            forstmt = lastast.iftrue
            newind = 0
            for ele in forstmt.block_items:
                abstract_sink(ele, forstmt.block_items, newind)
                newind = newind + 1
                if isabstract_sink:
                    break
        if lastast.iffalse is not None:
            forstmt = lastast.iffalse
            newind = 0
            for ele in forstmt.block_items:
                abstract_sink(ele, forstmt.block_items, newind)
                newind = newind + 1
                if isabstract_sink:
                    break

def get_fun_sig_funnamelist():
    for ele in flist:
        funname =getfunname(ele)
        if funname not in funsig_funnamelist:
            funsig_funnamelist.append(funname)

def get_funname_from_modid(idname):
    for funname in funsig_funnamelist:
        if '_'+funname+'_' in idname:
            return funname


def get_slice_formal_parmlist(sliceastlist):
    globallist = []
    locallist = []
    decllist = []
    for sta in sliceastlist:
        idlist=[]
        print("formal stament...")
        print(generator.visit(sta))
        find_loopid(sta,idlist,decllist)
        print(idlist)
        if len(idlist)>0:
            for idname in idlist:
                if idname.endswith("_src") or idname=='stdout' :
                    continue
                elif idname in globallist or idname in locallist:
                    continue
                if idname in global_vaname_declast_map.keys():
                    slice_global_varible_list.append(global_vaname_declast_map[idname])
                    globallist.append(idname)
                else:
                    # print("formal arg......")
                    # print(idname)
                    funname =get_funname_from_modid(idname)
                    if funname is None and not idname.endswith("_return_"):
                        continue
                    # print(funname)
                    if idname.endswith("_return_"):
                        for eleast in return_val:
                            if eleast.name==idname:
                                iddeclast=eleast
                    else:
                        iddeclast=fun_localval_delast_map[idname]
                    slice_formarparam_list.append(iddeclast)
                    locallist.append(idname)

def create_funptr_opsink():
    funptrast = c_ast.Decl(name="opsink",
                           type=c_ast.PtrDecl(type=c_ast.FuncDecl(args=c_ast.ParamList(params=[]),
                                                                  type=c_ast.TypeDecl(declname="opsink",
                                                                                      quals=[],
                                                                                      type=c_ast.IdentifierType(
                                                                                          names=["void"]))),
                                              quals=[]),
                           quals=[],
                           storage=[],
                           funcspec=[],
                           bitsize=None,
                           init=None
                           )
    for arg in sink_var_ast_list:
        tempast=c_ast.Typename(name=None,
                       quals=[],
                       type=arg.type)
        funptrast.type.type.args.params.append(tempast)
    return funptrast

def mod_source_source_srcname(srcast,oldname,newname):
    print("mode action..")
    print(srcast)
    if type(srcast)==c_ast.TypeDecl and srcast.declname==oldname:
        srcast.declname=newname
    elif type(srcast)==c_ast.ID and srcast.name==oldname:
        srcast.name = newname
    else:
        for s in srcast:
            mod_source_source_srcname(s,oldname,newname)

def gen_in_out_xml():
    outvarnamelist=[]
    out_var_list=[]
    in_var_list=[]
    for p in sink_var_ast_list:
        if p.name in global_vaname_declast_map.keys():
            varname=p.name
        else:
            varname = strip_varname(p.name)
        if varname in outvarnamelist:
            continue
        outvarnamelist.append(varname)
        retlist = judge_decl(p)
        if len(retlist) == 0:
            print("unknow param type")
            print(p)
            exit(1)
        kind = retlist[0]
        decltype = retlist[1]
        dim = "null"
        if len(retlist) == 3:
            dim = retlist[2]
        vartype = varname + ":" + p.name +":" + kind + ":" + decltype + ":" + str(dim)
        out_var_list.append(vartype)

    for p in source_var_ast_list:
        print(p)
        if p.name in global_vaname_declast_map.keys() or p.name.startswith("__src__"):
            varname=p.name
        else:
            print("fff")
            varname = strip_varname(p.name)
            print(varname)

        retlist = judge_decl(p)
        if len(retlist) == 0:
            print("unknow param type")
            print(p)
            exit(1)
        kind = retlist[0]
        decltype = retlist[1]
        dim = "null"
        if len(retlist) == 3:
            dim = retlist[2]
        # vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
        vartype =  varname + ":" + p.name + ":" + kind + ":" + decltype + ":" + str(dim)
        in_var_list.append(vartype)


    doc = Document()
    root = doc.createElement("root")
    doc.appendChild(root)
    sinline_node = doc.createElement("in_line")
    sinline_node.setAttribute('value', str(startline))
    root.appendChild(sinline_node)
    sinfun_node=doc.createElement("in_funname")
    slice_in_funname=getfunname(flist[0])
    sinfun_node.setAttribute("value",slice_in_funname)
    root.appendChild(sinfun_node)
    slice_funname_node=doc.createElement("slicefun")
    slice_funname_node.setAttribute("funname",gen_funname1)
    root.appendChild(slice_funname_node)
    srcfunnode=doc.createElement("srcfun")
    srcfunnode.setAttribute("funname",source_funname)
    root.appendChild(srcfunnode)
    soutline_node = doc.createElement("out_line")
    soutline_node.setAttribute("value", str(endline))
    root.appendChild(soutline_node)
    soutfun_node = doc.createElement("out_funname")
    slice_out_funname=getfunname(flist[-1])
    soutfun_node.setAttribute("value", slice_out_funname)
    root.appendChild(soutfun_node)
    sinfile_node = doc.createElement("in_file")
    in_file=src_file
    sinfile_node.setAttribute("value", in_file)
    root.appendChild(sinfile_node)
    soutfile_node = doc.createElement("out_file")


    source_sta_node=doc.createElement("src_sta")
    source_sta_node.setAttribute("value",source_stament_list[0])
    root.appendChild(source_sta_node)
    if isFUZZ:
        sink_sta_node = doc.createElement("sink_sta")
        sink_sta_node.setAttribute("value", sink_stament_list[0])
        root.appendChild(sink_sta_node)
    out_file=sink_file
    soutfile_node.setAttribute("value", out_file)
    root.appendChild(soutfile_node)
    sin_vars_node = doc.createElement("in_vars")
    for v in in_var_list:
        vallist = v.split(":")
        invar_node = doc.createElement("in_var")
        invar_node.setAttribute("rawname", vallist[0])
        invar_node.setAttribute("newname", vallist[1])
        # invar_node.setAttribute("line", vallist[0])
        invar_node.setAttribute("kind", vallist[2])
        invar_node.setAttribute("type", vallist[3])
        if vallist[4] != "null":
            invar_node.setAttribute("dim", vallist[4])
        sin_vars_node.appendChild(invar_node)
        break
    root.appendChild(sin_vars_node)
    soutvars_node = doc.createElement("out_vars")
    for v in out_var_list:
        vallist = v.split(":")
        outvar_node = doc.createElement("out_var")
        outvar_node.setAttribute("name", vallist[0])
        outvar_node.setAttribute("newname", vallist[1])
        outvar_node.setAttribute("kind", vallist[2])
        outvar_node.setAttribute("type", vallist[3])
        if vallist[4] != "null":
            outvar_node.setAttribute("dim", vallist[4])
        soutvars_node.appendChild(outvar_node)
    root.appendChild(soutvars_node)
    genfunnode = doc.createElement("gen_fun")
    genfunnode.setAttribute("value", gen_funname1)
    root.appendChild(genfunnode)
    genfunparmas_node = doc.createElement("gen_fun_params")
    for v in genfun_param_list:
        vallist = v.split(":")
        param_node = doc.createElement("param")
        param_node.setAttribute("name", vallist[0])
        param_node.setAttribute("kind", vallist[1])
        param_node.setAttribute("type", vallist[2])
        if vallist[3] != "null":
            param_node.setAttribute("dim", vallist[3])
        genfunparmas_node.appendChild(param_node)
    root.appendChild(genfunparmas_node)
    funsig_node=doc.createElement("funsig")
    for funname in fun_file_map.keys():
        funnode=doc.createElement("fun")
        funnode.setAttribute("funname",funname)
        funnode.setAttribute("file",fun_file_map[funname])
        funsig_node.appendChild(funnode)
    root.appendChild(funsig_node)
    globalvars_node=doc.createElement("Gvars")
    for i in slice_global_varible_list:
        gvarnode=doc.createElement("gvar")
        gvarnode.setAttribute("name",i.name)
        globalvars_node.appendChild(gvarnode)
    root.appendChild(globalvars_node)
    if len(randfilelist) > 0:
        randfilenode = doc.createElement("rand_file")
        randfilenode.setAttribute("value", randfilelist[0])
        root.appendChild(randfilenode)
        randlinelistnode = doc.createElement("randlines")
        for ele in randlinelist:
            randlinenode = doc.createElement("randline")
            randlinenode.setAttribute("value", str(ele))
            randlinelistnode.appendChild(randlinenode)
        root.appendChild(randlinelistnode)
    in_out_dir = sys.argv[2] + '/slice_in_out_info/'
    if not os.path.exists(in_out_dir):
        os.makedirs(in_out_dir)
    filename = in_out_dir + "/" + gen_funname1 + "_in_out.xml"
    with open(filename, 'w') as f:
        f.write(doc.toprettyxml(indent=' '))
        f.close()

def add_comment(astnode):
    if isinstance(astnode, c_ast.Decl) or isinstance(astnode, c_ast.Assignment) or isinstance(astnode,c_ast.Break) or isinstance(astnode, c_ast.Case) or \
        isinstance(astnode,c_ast.Continue) or isinstance(astnode, c_ast.Default) or isinstance(astnode, c_ast.DoWhile) or isinstance(astnode, c_ast.For) \
        or isinstance(astnode, c_ast.Goto) or isinstance(astnode, c_ast.If) or isinstance(astnode, c_ast.Switch) or isinstance(astnode, c_ast.While) or \
        isinstance(astnode, c_ast.FuncCall) or isinstance(astnode, c_ast.DeclList) or isinstance(astnode, c_ast.EmptyStatement):
        if astnode.coord:
            astnode.comment = str(astnode.coord)
    if isinstance(astnode,c_ast.If) or isinstance(astnode, c_ast.Compound) or isinstance(astnode,c_ast.While) or isinstance(astnode,c_ast.For) or isinstance(astnode,c_ast.DoWhile) \
        or isinstance(astnode, c_ast.Switch) or isinstance(astnode, c_ast.Label) or isinstance(astnode, c_ast.Case) or isinstance(astnode, c_ast.Default) \
            or isinstance(astnode, c_ast.FileAST) or isinstance(astnode, c_ast.FuncDef):
        for child in astnode:
            add_comment(child)

def output_slice_code(sliceastlist):
    fundef = getfundef()
    if isFUZZ:
        sinktype = copy.deepcopy(sink_var_ast_list[0])
        fundef.ext[0].decl.type.type = sinktype.type
        mod_source_source_srcname(fundef.ext[0].decl.type.type, sinktype.name, gen_funname1)
    else:
        fundef.ext[0].decl.type.type.declname = gen_funname1
    fundef.ext[0].decl.name = gen_funname1
    print("function header")
    # mod_source_source_srcname(fundef.ext[0].decl.type, sinktype.name, gen_funname1)

    funparam = fundef.ext[0].decl.type.args.params
    fundef.ext[0].body.block_items = []
    if isFUZZ:
        sinkdecl=copy.deepcopy(sink_var_ast_list[0])
        sinkdecl.init=None
        mod_source_source_srcname(sinkdecl,sinkdecl.name,"_ret_val_")
        if type(sinkdecl.type) == c_ast.PtrDecl:
            sinkdecl.init=c_ast.Cast(to_type=c_ast.Typename(name=None,quals=[],type=c_ast.PtrDecl(quals=[],type=c_ast.TypeDecl(declname=None,quals=[],
                                                                                                                               type=c_ast.IdentifierType(names=['char'])))),
                                     expr=c_ast.FuncCall(name=c_ast.ID(name='malloc'),
                                                         args=c_ast.ExprList(exprs=[c_ast.BinaryOp(op='*',
                                                                                                   left=c_ast.Constant(type='int',value='100'),
                                                                                                   right=c_ast.UnaryOp(op='sizeof',
                                                                                                                       expr=c_ast.Typename(name=None,quals=[],
                                                                                                                                           type=c_ast.TypeDecl(declname=None,
                                                                                                                                                               quals=[],
                                                                                                                                                               type=c_ast.IdentifierType(names=['char'])))))])))
        fundef.ext[0].body.block_items.append(sinkdecl)

    for sta in sliceastlist:
        fundef.ext[0].body.block_items.append(sta)
    funparam.pop()
    parmanamelist=[]

    if len(source_var_ast_list) > 0:
        srcdeclast = copy.deepcopy(source_var_ast_list[0])
        srcdeclast.init = None
        if type(srcdeclast.type) == c_ast.ArrayDecl:
            newsrcdeclast = c_ast.Decl(name=srcdeclast.name, type=c_ast.PtrDecl(type=srcdeclast.type.type, quals=[]),
                                    quals=[], storage=[], funcspec=[], init=None, bitsize=None)
            print(newsrcdeclast)
            print("srcdeclast.....")
        else:
            newsrcdeclast = srcdeclast

        if srcdeclast.name not in parmanamelist:
            funparam.append(newsrcdeclast)

            varname = srcdeclast.name
            retlist = judge_decl(srcdeclast)
            if len(retlist) == 0:
                print("unknow param type")
                print(srcdeclast)
                exit(1)
            kind = retlist[0]
            decltype = retlist[1]
            dim = "null"
            if len(retlist) == 3:
                dim = retlist[2]
            vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
            genfun_param_list.append(vartype)
            parmanamelist.append(srcdeclast.name)
    for p in slice_formarparam_list:
        if type(p.type) == c_ast.ArrayDecl:
            if type(p.type.dim) != c_ast.Constant:
                p.type.dim = None
        p.storage = []
        p.init = None
        if p.name not in parmanamelist:
            funparam.append(p)
            parmanamelist.append(p.name)
            varname = p.name
            retlist = judge_decl(p)
            if len(retlist) == 0:
                print("unknow param type")
                print(srcdeclast)
                exit(1)
            kind = retlist[0]
            decltype = retlist[1]
            dim = "null"
            if len(retlist) == 3:
                dim = retlist[2]
            vartype = varname + ":" + kind + ":" + decltype + ":" + str(dim)
            genfun_param_list.append(vartype)

    if isFUZZ:
        returnast = c_ast.Return(expr=c_ast.ID("_ret_val_"))
        fundef.ext[0].body.block_items.append(returnast)
    else:
        funptropsink=create_funptr_opsink()
        funparam.append(funptropsink)


    print("finally function")
    for ele  in fundef.ext[0].body.block_items:
        print(ele)
        print(generator.visit(ele))

    sizecount = generator.visit(fundef).count("globalReturnsTrueOrFalse()")
    if sizecount > 0:
        replaynum = 0
        for i in itertools.product('01', repeat=sizecount):  # 获得0,1的排列组合
            num = 0
            newfundef = copy.deepcopy(fundef)
            newfundef.ext[0].decl.name = gen_funname1 + "_" + str(replaynum)
            mod_source_source_srcname(newfundef.ext[0].decl.type.type,gen_funname1,gen_funname1 + "_" + str(replaynum))
            # newfundef.ext[0].decl.type.type.declname = gen_funname1 + "_" + str(replaynum)
            block1 = newfundef.ext[0].body.block_items
            for st in block1:
                if type(st) == c_ast.If and type(st.cond) == c_ast.FuncCall and st.cond.name.name == "globalReturnsTrueOrFalse":
                    randlinenum = get_linenum_from_coord(str(st.coord))
                    randfilename = get_filename_from_coord(str(st.coord))
                    if replaynum == 0:
                        randfilelist.append(randfilename)
                        randlinelist.append(randlinenum)
                    const = c_ast.Constant(type="int", value=i[num])
                    num = num + 1
                    st.cond = const

                #处理type(st) == c_ast.Compound的情况
                elif type(st) == c_ast.Compound:
                    block2 = st.block_items
                    for st2 in block2:
                        if type(st2) == c_ast.If and type(st2.cond) == c_ast.FuncCall and st2.cond.name.name == "globalReturnsTrueOrFalse":
                            randlinenum = get_linenum_from_coord(str(st2.coord))
                            randfilename = get_filename_from_coord(str(st2.coord))
                            if replaynum == 0:
                                randfilelist.append(randfilename)
                                randlinelist.append(randlinenum)
                            const = c_ast.Constant(type="int", value=i[num])
                            num = num + 1
                            st2.cond = const

            reoutfile = outfile_1[:-2] + "_" + str(replaynum) + ".c"
            replaynum = replaynum + 1
            for i in slice_global_varible_list:
                i.storage = ['extern']
                i.init = None
                newfundef.ext.insert(0, i)
            c_file = open(reoutfile, "w")
            c_file.write('#include "_costom_header_.h"\n')
            c_file.write('#include "_slice_header_.h"\n')
            c_file.write(generator.visit(newfundef))
            open_header_file.write(generator.visit(newfundef.ext[-1].decl) + ";\n")
            c_file.close()
    else:
        # if isFUZZ:
        #     for i in slice_global_varible_list:
        #         i.storage=[]
        #         i.init=None
        #         # fundef.ext.insert(0,i)
        #         funparam.append(i)
        # else:
        #     for i in slice_global_varible_list:
        #         i.storage=['extern']
        #         i.init=None
        #         fundef.ext.insert(0,i)
        for i in slice_global_varible_list:
            i.storage=['extern']
            i.init=None
            fundef.ext.insert(0,i)

        #给fundef中的语句添加注释
        add_comment(fundef)


        c_file = open(outfile_1, "w")
        c_file.write('#include "_costom_header_.h"\n')
        c_file.write('#include "_slice_header_.h"\n')
        c_file.write(generator.visit(fundef))
        print("fiannly output")
        print(generator.visit(fundef))
        open_header_file.write(generator.visit(fundef.ext[-1].decl) + ";\n")
        c_file.close()


def output_mod_sink_xml(): #输出mod_sink.xml
    modsinkdir = sys.argv[2] + "/mod_sink"
    if not os.path.exists(modsinkdir):
        os.makedirs(modsinkdir)
    modsink_xml = modsinkdir + "/" + gen_funname1 + "mod_sink.xml"
    curdoc = Document()
    curroot = curdoc.createElement("root")
    curdoc.appendChild(curroot)
    out_var_list = []
    for p in sink_var_ast_list: #输出sink的参数
        if p.name in global_vaname_declast_map.keys(): #如果是全局变量
            varname = p.name
        else:
            varname = strip_varname(p.name)
        retlist = judge_decl(p)
        if len(retlist) == 0:
            print("unknow param type")
            print(p)
            exit(1)
        kind = retlist[0]
        decltype = retlist[1]
        dim = "null"
        if len(retlist) == 3:
            dim = retlist[2]
        vartype = varname + ":" + p.name + ":" + kind + ":" + decltype + ":" + str(dim) #varname:varname:kind:decltype:dim
        out_var_list.append(vartype)
        # sinkargnode = curdoc.createElement("sinkarg")
        # curroot.appendChild(sinkargnode)
    sink_global_val_list=[]
    for p in slice_global_varible_list:
        varname = p.name
        retlist = judge_decl(p) #判断变量类型
        if len(retlist) == 0:
            print("unknow param type")
            print(p)
            exit(1)
        kind = retlist[0] 
        decltype = retlist[1]
        dim = "null"
        if len(retlist) == 3:
            dim = retlist[2]
        vartype = varname + ":" + p.name + ":" + kind + ":" + decltype + ":" + str(dim) #varname:varname:kind:decltype:dim
        sink_global_val_list.append(vartype)

    print(len(out_var_list))
    for v in out_var_list:
        print("vvvvvvv")
        print(v)
        vallist = v.split(":")
        outvar_node = curdoc.createElement("sinkarg")
        outvar_node.setAttribute("name", vallist[0])
        outvar_node.setAttribute("newname", vallist[1])
        outvar_node.setAttribute("kind", vallist[2])
        outvar_node.setAttribute("type", vallist[3])
        if vallist[4] != "null":
            outvar_node.setAttribute("dim", vallist[4])
        curroot.appendChild(outvar_node)

    for v in sink_global_val_list:
        vallist = v.split(":")
        outvar_node = curdoc.createElement("global")
        outvar_node.setAttribute("name", vallist[0])
        outvar_node.setAttribute("newname", vallist[1])
        outvar_node.setAttribute("kind", vallist[2])
        outvar_node.setAttribute("type", vallist[3])
        if vallist[4] != "null":
            outvar_node.setAttribute("dim", vallist[4]) #dim是数组的维度
        curroot.appendChild(outvar_node)

    # for t in sink_var_ast_list:
    #     print(t)
    #     retstr = [""]
    #     getTypeStr(t.type, retstr)
    #     print(retstr[0])
    #     sinkargnode = curdoc.createElement("sinkarg")
    #     sinkargnode.setAttribute("type", retstr[0])
    #     curroot.appendChild(sinkargnode)
    with open(modsink_xml, 'w') as f:
        f.write(curdoc.toprettyxml(indent=' '))
        f.close()


def delete_source_decl_statement_sub(firstast, sliceastlist, ind):
    """

    :param firstast:
    :param sliceastlist:
    :param ind:
    :return:
    """
    sourcefunname = desend_chain[0]
    typesta = type(firstast)
    csta = generator.visit(firstast)
    if typesta == c_ast.For or typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or typesta == c_ast.Label:
        forstmt = firstast.stmt
        if '_' + sourcefunname + '_' in csta:
            newind = 0
            if type(forstmt)!=c_ast.Compound:
                return
            for ele in forstmt.block_items:
                delete_source_decl_statement_sub(ele, forstmt.block_items, newind)
                newind = newind + 1
    elif typesta == c_ast.Compound:
        if '_' + sourcefunname + '_' in csta:
            newind = 0
            for ele in firstast.block_items:
                delete_source_decl_statement_sub(ele, firstast.block_items, newind)
                newind = newind + 1
    elif typesta==c_ast.Case or typesta==c_ast.Default:
        if '_' + sourcefunname + '_' in csta:
            newind = 0
            for ele in firstast.stmts:
                delete_source_decl_statement_sub(ele, firstast.stmts, newind)
                newind = newind + 1
    elif typesta == c_ast.If:
        ifcond = firstast.cond
        iftrue = firstast.iftrue
        if iftrue is not None and '_' + sourcefunname + '_' in csta:
            newind = 0
            if type(iftrue)!=c_ast.Compound:
                return
            if iftrue.block_items is not None:
                for ele in iftrue.block_items:
                    delete_source_decl_statement_sub(ele, iftrue.block_items, newind)
                    newind = newind + 1
        iffalse = firstast.iffalse
        if iffalse is not None and '_' + sourcefunname + '_' in csta:
            newind = 0
            if type(iffalse)!=c_ast.Compound:
                return
            if iffalse.block_items is not None:
                for ele in iffalse.block_items:
                    delete_source_decl_statement_sub(ele, iffalse.block_items, newind)
                    newind = newind + 1
    elif typesta == c_ast.Decl:
        if firstast.name==source_var_ast_list[0].name:
            if firstast.init != None and type(firstast.type)!=c_ast.ArrayDecl:
                assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(firstast.name), rvalue=firstast.init)
                sliceastlist.insert(ind, assign)
            sliceastlist.remove(firstast)




def delete_source_decl_statement(sliceastlist):
    """
    删除source声明语句
    :param sliceastlist: expland后的ast列表
    :return:
    """
    ind = 0
    for sta in sliceastlist:
        typesta = type(sta)
        if have_mod_source[0]:
            break
        if typesta == c_ast.For or typesta == c_ast.While or typesta == c_ast.DoWhile or typesta == c_ast.Switch or typesta == c_ast.Label or typesta == c_ast.If or typesta == c_ast.Compound:
            delete_source_decl_statement_sub(sta, sliceastlist, ind)
        elif typesta == c_ast.Decl:
            if sta.name==source_var_ast_list[0].name:
                if sta.init!=None:
                    assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(sta.name), rvalue=sta.init)
                    sliceastlist.insert(ind,assign)
                sliceastlist.remove(sta)
        ind=ind+1

def parse_ind_call_xml():
    src_file=sys.argv[2]+"/ind_call.xml"
    ind_callxmldoc = parse(src_file)
    in_out_root = ind_callxmldoc.documentElement
    ind_locele=in_out_root.getElementsByTagName("ind_loc")
    for ele in ind_locele:
        locinfo=ele.getAttribute("info").split(":")
        fileinfo=locinfo[0]
        line=locinfo[1]
        if fileinfo not in file_indloc_map.keys():
            file_indloc_map[fileinfo]=[int(line)]
        else:
            file_indloc_map[fileinfo].append(int(line))


def get_source_fun_num():
    for ele in flist:
        bbname=getfunname(ele)
        nnlabel = ele.get("label")[2:-2]
        if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
            pass
        if " "+source_funname+"(" in nnlabel:
            if bbname not in source_fun_num.keys():
                source_fun_num[bbname]=1
                print("source line")
                print(bbname)
    if len(source_fun_num) > 1:
        code_gened_dir = sys.argv[2] + "/code_gened"
        workfuzz_dir = sys.argv[2] + "/work_fuzz"
        if os.path.exists(code_gened_dir):
            for root,dirs,files in os.walk(code_gened_dir):
                for file in files:
                    if file.startswith(gen_funname):
                        os.remove(os.path.join(root,file))
        if os.path.exists(workfuzz_dir):
            for root,dirs,files in os.walk(workfuzz_dir):
                for dir in dirs:
                    if dir.startswith(gen_funname):
                        dirpath=os.path.join(root,dir)
                        absdirpath=os.path.abspath(dirpath)
                        shutil.rmtree(absdirpath)


def get_fun_call_loc_map(class_path):
    """

    :param class_path: path signature based分类的路径集合,此时的路径还没有进行合并和排序
    :return:
    """
    for pathlist in class_path:
        # print("loc map list")
        # for tempele in pathlist:
        #     print(tempele.get_name())
        p1 = pathlist[0]
        prenode=p1
        # prebbname = p1.get_name()
        for i in range(1, len(pathlist)):
            prebbname = prenode.get_name()
            prefunname=getfunname(prenode)
            curp = pathlist[i]
            curfunname = getfunname(curp)
            curbbname = curp.get_name()
            if prebbname.endswith("_end"):
                linenum=getbb_lastlinenum(curp)
                if curfunname in desend_chain_fun_callloc_map.keys():
                    if linenum not in desend_chain_fun_callloc_map[curfunname]:
                        desend_chain_fun_callloc_map[curfunname].append(linenum)
                else:
                    desend_chain_fun_callloc_map[curfunname]=[linenum]

            if curbbname.endswith("_start"):
                linenum = getbb_lastlinenum(prenode)
                if curfunname in increase_chain_fun_callloc_map.keys():
                    if linenum not in increase_chain_fun_callloc_map[curfunname]:
                        increase_chain_fun_callloc_map[curfunname].append(linenum)
                else:
                    increase_chain_fun_callloc_map[prefunname] = [linenum]

            prenode=curp

def get_per_fun_linesetmap():
    for funname in funsig_funnamelist:
        funast=fun_funast_map[funname]
        last_num=-1
        line_list=[]
        get_last_linenum(funast.body, last_num, line_list)
        startline=str(funast.body.coord)
        ind=startline.find(":")
        rind=startline.rfind(":")
        line=startline[ind+1:rind]
        line_list.insert(0,line)
        per_fun_all_lineset_map[funname]=line_list
    pass


if __name__ == '__main__':
    filename=sys.argv[2]+"/"+ sys.argv[5]+"_temppath"
    if not os.path.exists(filename):
        print("source to sink withont path..")
        exit(1)
    f = open(sys.argv[2]+"/"+ sys.argv[5]+"_temppath", "rb")
    pickledata = pickle.load(f)
    f.close()
    src_file=pickledata[0]
    src_line=pickledata[1]
    sink_file=pickledata[2]
    sink_line=pickledata[3]
    gen_funname=pickledata[4]
    outfile=pickledata[5]
    print("outfile...")
    print(sys.argv[3])
    print(sys.argv[4])
    print(outfile)
    Fpath=pickledata[6]

    # sourcelist=pickledata[7]
    if len(sys.argv)>1:
        if sys.argv[1]=="verif":
            isModSink=True
        elif sys.argv[1]=='fuzz':
            isFUZZ=True
    if is_gen_xml:
        # srcinfo = [src_fun, src_line, srcnode]
        pass
    else:
        srcinfo = None
    """一个source到sink可能有多种不同的路径
    对路径进行分类，按行号进行排序，合并，得到最终的路径"""

    classify_pathlist = {}
    # for path in Fpath:
    #     print("every path....")
    #     for p in path:
    #         print(p.get_name())
    # print()

    print("llllllll")


    for p in Fpath:
        key = get_classifypath_key(p)
        if key in classify_pathlist.keys():
            classify_pathlist[key].append(p)
        else:
            classify_pathlist[key] = [p]
    key_inc = 1
    print("######")
    for key in classify_pathlist.keys():


        desend_chain_fun_callloc_map={} #每个caller函数对callee函数的调用位置映射
        increase_chain_fun_callloc_map={} #升序部分每个caller函数对callee函数的调用位置映射
        class_path = classify_pathlist[key]

        print("output path-sig")
        print(key)
        print()
        get_fun_call_loc_map(class_path) #此函数获得caller函数对callee的调用位置映射
        print("caller location map")
        print(desend_chain_fun_callloc_map)
        print(increase_chain_fun_callloc_map)

        if len(class_path) > 0:
            list1 = class_path[0]
            sortlist1 = sort_deup1(list1)
            flen = len(class_path)
            flist = sortlist1
            """sort_pa是升序后的路径"""
            for pth in range(1, flen):
                list2 = class_path[pth]
                sortlist2 = sort_deup1(list2)  #对路径进行排序
                templist = merge_two_list(flist, sortlist2)
                flist = templist
            print()
            print("print finally path\n")
            for p in flist:
                print(p.get_name())
                # print(p)
            
            
            ispath_curr = judge_path(flist)
            # # 只有正确合并的路径才进行代码生成
            # gen_funname1 = gen_funname + "_" + str(key_inc)
            if ispath_curr:
                startline = int(src_line)
                endline = int(sink_line)

                final_list = []
                blocknamelist = []
                for i in flist:
                    bbname = i.get_name()
                    if bbname in blocknamelist:
                        continue
                    else:
                        blocknamelist.append(bbname)
                        final_list.append(i)
                # outfile_1 = outfile + gen_funname1 + ".c"
                # print(outfile_1)
                header_file= outfile+"_slice_header_.h"
                if not os.path.exists(header_file):
                    open_header_file = open(header_file, "a")
                    open_header_file.write('#include "_costom_header_.h"\n')
                    open_header_file.close()
                open_header_file = open(header_file, "a")
                return_val = []
                param_list = []

                genfun_param_list=[]
                goodb2g1=[]
                goodb2g2=[]
                if GET_SLICE_IN_OUT_INFO or isModSink:
                    temp_in_var_list = []
                    randfilelist=[]
                    randlinelist=[]
                # isvarfun=False
                # outfile_1 = outfile + gen_funname1 + ".c"
                genxml_dealed_file.clear()
                print("every time start...")

                randfilelist = []
                randlinelist = []



                source_fun_num={} #记录source位置的个数
                absfilenam_abspath_map={} #绝对路径文件名与绝对路径的映射 如 /temp/aa.txg:/temp
                funname_lineset_map={} #函数名与行号集合的映射，只是控制流路径上的行号
                desend_chain=[] #下降链相关的函数
                increase_chain=[] #上升chain相关的函数
                absfilename_fileast_map={} #绝对文件名与相应的文件ast的映射，如/temp/aa.c:Fileast
                fun_file_map={} #函数与所在绝对路径文件的映射
                fun_funast_map={}#函数名与函数ast的映射
                global_vaname_declast_map={} #全局变量名，与全局变量的声明ast的映射
                fun_localval_delast_map={} # 函数的经过SSA后的局部变量与其声明ast的映射，key是ssa修改过后的变量名，value是其原始变量的声明ast
                fun_loopif_map={} #函数名与函数中的控制结构的映射
                desend_fun_loopif_map={}#desend chain找那个function的第一个行号所在的loopif
                increase_fun_loopif_map={}
                fun_formalarg_map={}
                source_var_ast_list=[]# [{}] after ssa
                sink_var_ast_list=[] #after ssa
                source_funname=sys.argv[6]
                print(source_funname)
                print(sys.argv[7])
                source_argnum=int(sys.argv[7])
                per_fun_all_lineset_map={} #记录每一个slice相关行数的所有行号
                final_fun_lineset_map={}
                have_mod_source=[False]
                slice_formarparam_list=[]
                slice_global_varible_list=[]
                funsig_funnamelist=[]
                source_stament_list=[]
                sink_stament_list=[]
                file_indloc_map={}
                fun_inline_count_map={}#用于存放每一个函数被内联的次数（变量的索引）

                print("source num = 0")
                print(source_fun_num)
                get_source_fun_num() ##获得source位置的个数
                if len(source_fun_num)>1: ##如果slice中的source个数大于1，不生成slice
                    print("source num > 1")
                    print(source_fun_num)
                    continue
                get_fileinfo() #获得文件信息
                get_fun_sig_funnamelist()
                get_all_linenum()
                get_desend_chain()
                get_increase_chain()
                get_fileast() #pycparser解析相应的文件获得fileast

                parse_ind_call_xml() #解析间接调用函数xml
                get_function_filename_map()
                get_fun_funast_map() #获得function与funast的映射
                get_per_fun_linesetmap() #获得每一个函数对应的所有行号
                get_global_var_declast_map()
                find_fun_loopif_map()
                get_desend_fun_loopif_map() #获得下降chain中的相关行号
                get_increase_fun_loopin_map() #获得上升chain中的相关行号
                do_funSSA() #函数中变量名SSA，已经为所有的复合语句添加了{}

                #测试ssa过程是否正确
                print("start ssa")
                for funname in fun_funast_map.keys():
                    funast=fun_funast_map[funname]
                    print(generator.visit(funast))
                    print()
                print("end ssa")

                do_all_return_one() #函数的返回值归一化
                get_funsig_fun_formalarg_map() #
                mainfunast=do_fun_sig_inline_v1() #函数内联
                print("output mainfunast....")
                print(generator.visit(mainfunast))

                gen_funname1 = gen_funname + "_" + str(key_inc)
                outfile_1 = outfile + gen_funname1 + ".c"
                abstract_source(mainfunast.body,None,None)
                get_final_fun_lineset_map(mainfunast)
                sliceast = expland_code_add_in_slice_main(mainfunast)

                if len(source_var_ast_list)>0: #如果source变量不为空,说明source变量不是结构体的成员变量
                    delete_source_decl_statement(sliceast)
                get_slice_formal_parmlist(sliceast)
                abstract_sink_main(sliceast)
                
                output_slice_code(sliceast)
                output_mod_sink_xml()
                gen_in_out_xml()

                key_inc = key_inc + 1
                open_header_file.close()

                """以下为输出测试代码"""

                print(desend_chain)
                print(increase_chain)
               

                isabstract_sink=False

    






                # print("output expand")
                # for ele in sliceast:
                #     print(generator.visit(ele))
                #
                # print("end expand")




                # for num in range(sourcenum):
                #     gen_funname1 = gen_funname + "_" + str(key_inc)
                #     outfile_1 = outfile + gen_funname1 + ".c"
                #     mainfunastcopy=copy.deepcopy(mainfunast)
                #     abstract_source(mainfunastcopy.body, None, None)
                #     get_final_fun_lineset_map(mainfunastcopy)
                #     sliceast=expland_code_add_in_slice_main(mainfunastcopy)
                #     delete_source_decl_statement(sliceast)
                #     get_slice_formal_parmlist(sliceast)
                #     abstract_sink_main(sliceast)
                #     output_slice_code(sliceast)
                #     output_mod_sink_xml()
                #     gen_in_out_xml()
                #     key_inc = key_inc + 1





                #
                # for ele in sliceast:
                #     print(generator.visit(ele))
                # for ele in slice_global_varible_list:
                #     print(ele.name)
                # print("formal list...")
                # for ele in slice_formarparam_list:
                #     print(ele.name)
                #
                # print("return name")
                # for ele in return_val:
                #     print(ele.name)

                # gen_code_entry(final_list, startline, endline, gen_funname1,srcinfo)






