from __future__ import print_function

import copy
import sys


sys.path.extend(['.', '..'])
sys.path.append("../")

from pycparser import c_ast, c_generator

generator = c_generator.CGenerator()

global_return_sta = {}
global_return_decl={}


def get_last_linenum(c, last_num, inc_linenum):
    if c.coord is not None:
        templine = int(str(c.coord).split(":")[1])
        if templine > last_num:
            last_num = templine
            if len(inc_linenum) == 0:
                inc_linenum.append(last_num)
            else:
                inc_linenum[0] = last_num
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
            get_last_linenum(child, last_num, inc_linenum)


def find_return_for_void(st, ret_name, gotost, funnamne,pst):
    """
    为void类型修改return语句
    在每一条语句（复合语句，简单语句，语句）中递归查找所有的return语句，修改成赋值语句并添加goto语句
    find all return statement and modify it and insert new statement
    :param st: 复合语句或者简单语句对应的ast
    :param ret_name: 返回值变量名
    :param gotost: goto语句对应的ast
    :return:
    """
    if type(st) == c_ast.Label or type(st) == c_ast.For or type(st) == c_ast.While or type(st) == c_ast.DoWhile or type(
            st) == c_ast.Switch:
        for ele in st.stmt.block_items:
            find_return_for_void(ele, ret_name, gotost, funnamne, st.stmt.block_items)
    elif type(st) == c_ast.Compound:
        for ele in st.block_items:
            find_return_for_void(ele, ret_name, gotost, funnamne, st.block_items)
    elif type(st) == c_ast.If:
        if st.iftrue is not None and st.iftrue.block_items is not None:
            for ele in st.iftrue.block_items:
                find_return_for_void(ele, ret_name, gotost, funnamne, st.iftrue.block_items)
        if st.iffalse is not None and st.iffalse.block_items is not None:
            for ele in st.iffalse.block_items:
                find_return_for_void(ele, ret_name, gotost, funnamne, st.iffalse.block_items)
    elif type(st) == c_ast.Case or type(st) == c_ast.Default:
        for ele in st.stmts:
            find_return_for_void(ele, ret_name, gotost, funnamne, st.stmts)
    elif type(st) == c_ast.Return:
        # assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(name=ret_name), rvalue=st.expr, coord=st.coord)
        gotostcopy = copy.deepcopy(gotost)
        gotostcopy.coord = st.coord

        #pst直接是一个list
        pst.remove(st)
        pst.append(gotostcopy)




def find_return(st, ret_name, gotost, funnamne,pst):
    """
    在每一条语句（复合语句，简单语句，语句）中递归查找所有的return语句，修改成赋值语句并添加goto语句
    find all return statement and modify it and insert new statement
    :param st: 复合语句或者简单语句对应的ast
    :param ret_name: 返回值变量名
    :param gotost: goto语句对应的ast
    :return:
    """
    if type(st)==c_ast.Label or type(st)==c_ast.For or type(st)==c_ast.While or type(st)==c_ast.DoWhile or type(st)==c_ast.Switch :
        print(generator.visit(st))
        for ele in st.stmt.block_items:
            find_return(ele, ret_name, gotost, funnamne, st.stmt.block_items)
    elif type(st)==c_ast.Compound:
        for ele in st.block_items:
            find_return(ele, ret_name, gotost, funnamne, st.block_items)
    elif type(st)==c_ast.If:
        if st.iftrue is not None and st.iftrue.block_items is not None:
            for ele in st.iftrue.block_items:
                find_return(ele, ret_name, gotost, funnamne, st.iftrue.block_items)
        if st.iffalse is not None and st.iffalse.block_items is not None:
            for ele in st.iffalse.block_items:
                find_return(ele, ret_name, gotost, funnamne, st.iffalse.block_items)
    elif type(st)==c_ast.Case or type(st)==c_ast.Default:
        for ele in st.stmts:
            find_return(ele,ret_name,gotost,funnamne,st.stmts)
    elif type(st) == c_ast.Return:
        assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(name=ret_name), rvalue=st.expr,coord=st.coord)
        gotostcopy = copy.deepcopy(gotost)
        gotostcopy.coord = st.coord
        #pst直接是list
        pst.remove(st)
        pst.append(assign)
        pst.append(gotostcopy)


def deal_return(rast, funnamne, return_val):
    """
    进行return归一化操作，将函数中的return语句替换为赋值语句，并添加label
    :param rast: 对应于函数的ast
    :param funnamne: 函数名
    :return_val:list,存放为每个函数定义的返回值变量
    :return: 无
    """

    # rast is a funast
    print("return_name....")
    ret_name = funnamne + "_return_"
    labelname = funnamne + "_label_"
    gotost = c_ast.Goto(name=labelname)
    returntype = rast.decl.type.type
    returnname=generator.visit(returntype)
    print(returnname)
    print(returntype)
    if type(returntype) == c_ast.TypeDecl:
        temptype = c_ast.TypeDecl(declname=ret_name, quals=[], type=c_ast.IdentifierType(names=[returnname]))
    elif type(returntype) == c_ast.PtrDecl:
        temptype = c_ast.PtrDecl(quals=[], type=c_ast.TypeDecl(declname=ret_name, quals=[],
                                                               type=c_ast.IdentifierType(names=[returnname])))
    else:
        print(rast.decl)
    if returnname == 'void':
        for s in rast.body.block_items:
            if type(s) == c_ast.Return:
                #在数组block_items找到插入位置，body下第一层如果有return语句，那一定是最后一条
                index=rast.body.block_items.index(s)
                rast.body.block_items.remove(s) #移除原来的return语句
                index=index+1
                gotostcopy=copy.deepcopy(gotost)
                gotostcopy.coord=s.coord
                rast.body.block_items.insert(index,gotostcopy)
            else:
                find_return_for_void(s, ret_name, gotost, funnamne,None)
    else:
        # global_return_sta[funnamne] = {}
        #根据类型创建对应于返回值类型的返回值变量
        returnsta = c_ast.Decl(name=ret_name, quals=[], storage=[], funcspec=[], type=temptype, init=None,
                               bitsize=None)
        # 将变量添加到对应的结构中
        # global_return_decl[funnamne]=returnsta
        return_val.append(returnsta)
        # deal_last_return(rast,ret_name)
        # if type(rast.body.block_items[-1])==c_ast.Label and type(rast.body.block_items[-1].stmt)==c_ast.Return:
        #     #当最后一天语句是label且label下是一条return语句的时候
        #     find_return(rast.body.block_items[-1],ret_name,gotost,funnamne,None)
        #处理body下的第一层子就，如果直接是return则立即处理，对于嵌套结构调用find_return进行处理
        for s in rast.body.block_items:
            if type(s) == c_ast.Return:
                assign = c_ast.Assignment(op='=', lvalue=c_ast.ID(name=ret_name), rvalue=s.expr,coord=s.coord)
                # lineinfo = str(s.coord)
                # index = lineinfo.index(":")
                # rindex = lineinfo.rindex(":")
                # linenum = int(lineinfo[index + 1:rindex])
                # last_num = -1
                # inc_linenum = []
                # get_last_linenum(s, last_num, inc_linenum)
                # global_return_sta[funnamne][linenum] = [assign, inc_linenum[0]]

                #在数组block_items找到插入位置，body下第一层如果有return语句，那一定是最后一条
                index=rast.body.block_items.index(s)
                rast.body.block_items.remove(s) #移除原来的return语句
                rast.body.block_items.insert(index,assign)
                index=index+1
                gotostcopy=copy.deepcopy(gotost)
                gotostcopy.coord=s.coord
                rast.body.block_items.insert(index,gotostcopy)
            else:
                find_return(s, ret_name, gotost, funnamne,rast.body.block_items)
    """添加label"""
    labelname = funnamne + "_label_"
    labelst = c_ast.Label(name=labelname, stmt=c_ast.EmptyStatement())
    rast.body.block_items.append(labelst)
    # print(c_generator.CGenerator().visit(rast))
