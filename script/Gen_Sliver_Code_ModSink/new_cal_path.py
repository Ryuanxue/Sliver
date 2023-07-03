# -*-coding:utf-8-*-
import os
import subprocess
import sys
import pydot

from con_gen.lib_code_gen import  get_lineinfo, is_gen_xml, getfunname

sys.setrecursionlimit(1000)

Filename = []  # store all function name    ########
Fpath = []  # store all path filtered
allpathline = []  # store line number of all path

line_code_ast = []

# sys.setrecursionlimit(5)
fun_edges = {}
maxrecurdepth = 60

last_num = -1
recur_depth = 0


def get_to_edges(source):
    """
    获取当前节点的所有相邻边，将找到的边添加到列表中
    :param source: 节点的name
    :return:列表（存放有找到的所有相邻边）
    """
    edge_list = []
    if source.startswith("BB") and source.endswith("start"):
        name = source[2:-6]

    elif source.startswith('BB') and source.endswith("end"):
        name = source[2:-4]
    else:
        inde = source.index('BB')
        name = source[:inde]
    edff = fun_edges[name]

    for e in edff:
        src = e.get_source()
        if src == source:
            edge_list.append(e)
    return edge_list


def get_two_layer_node(source):
    """
    逆序获取当前节点的向上两级的相邻节点，用于判断递归或者是loop，将找到的两级节点添加到返回列表
    :param source: 当前基本块几点的name
    :return: 列表（存放当前节点的向上两级的相邻节点）
    """
    if source.startswith("BB") and source.endswith("start"):
        name = source[2:-6]
    elif source.startswith('BB') and source.endswith("end"):
        name = source[2:-4]
    else:
        inde = source.index('BB')
        name = source[:inde]
    edff = fun_edges[name]  # get all edges of this function
    srcflag = 0
    destflag = 0
    adjnode = []
    for e in edff:
        src = e.get_source()
        if src.endswith("_start") or src.endswith("end"):
            continue
        dest = e.get_destination()
        if dest == source:
            adjnode.append(src)
            for ee in edff:
                nextsrc = ee.get_source()
                if nextsrc.endswith("_start") or nextsrc.endswith("_end"):
                    continue
                nextdest = ee.get_destination()
                if nextdest == src:
                    adjnode.append(nextsrc)
    return adjnode


loop_recur_node = []


def printAllPathsUtil_v1(gra, u, d, visited, path, tempstack, n, Apath):
    """
    递归在icfg上遍历出从source点u到sink点d的所有路径
    :param gra:利用pydot解析icfg所生成的dot对象
    :param u:source节点（pydot的Node对象）
    :param d:sink节点（pydot的Node对象）
    :param visited:列表(用于标识所有节点是否被访问过）
    :param path:列表(代表一条路径），将路径append到Apath
    :param tempstack: 影子栈，用于判断called函数是否需要被展开（也即是否要记录called函数的展示节点）
    :param n: 整数，代表当前的递归深度
    :param Apath: 列表（用来存放遍历到的所有路径，其元素是一条路径列表）
    :return: 无
    """


    lineinfo = get_lineinfo(u)
    fflags = False
    if len(lineinfo) > 0:
        lastline = lineinfo[-1]
        index = lastline.rindex(":")
        line = lastline[index + 1:-2]
        adjnodes = get_two_layer_node(u.get_name())  # get src's two layer adjnode
        for adj in adjnodes:
            adjnode = gra.get_node(adj)
            adjlineinfo = get_lineinfo(adjnode[0])  # adjlineinfo maybe empty
            if (len(adjlineinfo) == 0):
                continue
            aindex = adjlineinfo[0].rindex(":")
            firstline = adjlineinfo[0][aindex + 1:-2]
            if int(firstline) > int(line):
                fflags = True
                break
    if fflags and u.get_name() in loop_recur_node:
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:
        loop_recur_node.append(u.get_name())
        pass
    else:
        visited[u.get_name()][0] = True
    n = n + 1
    if n > maxrecurdepth:
        n = n - 1
        return

    path.append(u)
    # print("entry....")
    # for p in path:
    #     print(p.get_name())
    # print()
    if u.get_name() == d.get_name():
        temp = []
        for i in path:
            temp.append(i)
        Apath.append(temp)
        # Apath.append(path.copy())
        # path.pop()
        # visited[u.get_name()][0] = False

    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination()
            dest_node = gra.get_node(dest)
            if tempstack[0]==True:
                if getfunname(dest_node[0])!=tempstack[-1][2:-4]:
                    tempstack[0]=False
                    tempstack.pop()
                else:
                    path.pop()
                    n = n - 1
                    visited[u.get_name()][0] = False
                    # print("exit111...")
                    # for p in path:
                    #     print(p.get_name())
                    # print()
                    return
            if dest.endswith("_start"):
                tempstack.append(dest[:-5] + 'end')
            if dest==tempstack[-1]:
                path.pop()
                n = n - 1
                tempstack[0]=True
                visited[u.get_name()][0] = False
                # print("exit222...")
                # for p in path:
                #     print(p.get_name())
                # print()
                return
            if not visited[dest][0]:
                printAllPathsUtil_v1(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
    path.pop()
    n=n-1
    visited[u.get_name()][0] = False
        # print("exit...")
        # for p in path:
        #     print(p.get_name())
        # print()





def printAllPathsUtil(gra, u, d, visited, path, tempstack, n, Apath):
    """
    递归在icfg上遍历出从source点u到sink点d的所有路径
    :param gra:利用pydot解析icfg所生成的dot对象
    :param u:source节点（pydot的Node对象）
    :param d:sink节点（pydot的Node对象）
    :param visited:列表(用于标识所有节点是否被访问过）
    :param path:列表(代表一条路径），将路径append到Apath
    :param tempstack: 影子栈，用于判断called函数是否需要被展开（也即是否要记录called函数的展示节点）
    :param n: 整数，代表当前的递归深度
    :param Apath: 列表（用来存放遍历到的所有路径，其元素是一条路径列表）
    :return: 无
    """


    lineinfo = get_lineinfo(u)
    fflags = False
    if len(lineinfo) > 0:
        lastline = lineinfo[-1]
        index = lastline.rindex(":")
        line = lastline[index + 1:-2]
        adjnodes = get_two_layer_node(u.get_name())  # get src's two layer adjnode
        for adj in adjnodes:
            adjnode = gra.get_node(adj)
            adjlineinfo = get_lineinfo(adjnode[0])  # adjlineinfo maybe empty
            if (len(adjlineinfo) == 0):
                continue
            aindex = adjlineinfo[0].rindex(":")
            firstline = adjlineinfo[0][aindex + 1:-2]
            if int(firstline) > int(line):
                fflags = True
                break
    if fflags and u.get_name() in loop_recur_node:
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:
        loop_recur_node.append(u.get_name())
        pass
    else:
        visited[u.get_name()][0] = True
    n = n + 1
    if n > maxrecurdepth:
        n = n - 1
        return
    if u in path:
        pass
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        temp = []
        for i in path:
            temp.append(i)
        Apath.append(temp)
    else:
        ede = get_to_edges(u.get_name())
        elen = len(ede)
        for i in ede:
            dest = i.get_destination()
            dest_node = gra.get_node(dest)
            # print("entry........")
            # for p in path:
            #     print(p.get_name())
            # print()

            if dest.endswith("_start"):
                tempstack.append(dest[:-5] + 'end')
            if dest.endswith("_end") and dest in tempstack:
                tempstack.pop()
                path.pop()
                n = n - 1
                return
            if not visited[dest][0]:

                printAllPathsUtil(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
                # # print("exit....")
                # for p in path:
                #     print(p.get_name())
                # print()
    plen = len(path)
    if plen > 0:
        path.pop()
        n = n - 1
    visited[u.get_name()][0] = False


def printAllPaths(filedot, nodes, edges, s, d, Apath):
    """
     遍历多有从source到sink的路径的入口（调用printAllPathsUtil）
    :param filedot: 利用pydot解析icfg所生成的dot对象
    :param nodes: icfg中的所有节点
    :param edges: icfg中的所有边
    :param s: source节点
    :param d: sink节点
    :param Apath: 列表（用来存放遍历到的所有路径，其元素是一条路径列表）
    :return: 无
    """
    visited = {}
    for n in nodes:
        visited[n.get_name()] = []
        visited[n.get_name()].append(False)
    path = []
    tempstack = [False]
    n = 0
    printAllPathsUtil(filedot, s, d, visited, path, tempstack, n, Apath)


def get_funname_and_funedgs(nodes, edges):
    """
    从start节点中获取函数名添加到全局列表Filename中
    将所有的边按照所属函数分类，存放到字典全局字典fun_edges{funname:[edg1,ed2]}
    :param nodes: 所有的节点
    :param edges: 所有有的边
    :return: 无
    """
    for n in nodes:
        nlabel = n.get("label")[2:-2]
        if nlabel.endswith("start"):
            Filename.append(nlabel[:-6])
    for e in edges:
        src = e.get_source()
        if src.startswith("BB") and src.endswith("start"):
            name = src[2:-6]

        elif src.startswith('BB') and src.endswith("end"):
            name = src[2:-4]
        else:
            inde = src.index('BB')
            name = src[:inde]
        if name not in fun_edges.keys():
            fun_edges[name] = []
            fun_edges[name].append(e)
        else:
            fun_edges[name].append(e)


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


def main_entry(src_fun, src_line, sink_fun, sink_line, filedot, nodes, edges, outfile, gen_funname):
    """
    程序的主入口，根据source和sink的行号信息在filedot中首先找到source节点和sink节点，然后根据source节点和sink节点
    找到所有的路径，并根据最终路径进行代码生成
    调用遍历所有路径的接口函数（printAllPaths）
    调用根据路径生成代码的总入口函数（gen_code_entry）
    :param src_fun:source的文件名（如d1_both.c）
    :param src_line:source的行号
    :param sink_fun:sink的文件名
    :param sink_line:sink的行号
    :param filedot:使用pydot解析icfg所生成的dot对象
    :param nodes:所有有的节点
    :param edges:所有的边
    :param outfile:生成的代码存放的路径
    :param gen_funname:生成的函数的函数名
    :return:无
    """
    srcflag = False
    sinkflag = False
    srcnode = pydot.Node()
    destnode = pydot.Node()
    print("start finding srcnode and sinknode......")
    src = src_fun + ":" + src_line
    sink = sink_fun + ":" + sink_line

    print(src)
    print(sink)
    for n in nodes:
        nlabel = n.get("label")[2:-2]
        if src in nlabel:
            # adjedgs=get_to_edges(n)
            # is_end=False
            # # for adj in adjedgs:
            #     destname=adj.get_destination()
            #     if destname.endswith("_end"):
            #         is_end=True
            #         break
            if srcflag:
                continue
            srcnode = n
            srcflag = True
        if sink in nlabel:
            destnode = n
            sinkflag = True
        if srcflag and sinkflag:
            break
    if is_gen_xml:
        srcinfo=[src_fun,src_line,srcnode]
    else:
        srcinfo=None
    print("find srcnode and sinknode ending......")
    # print(srcnode)
    # print(destnode)
    print("get all path from src to sink start.....")
    # exit(1)
    Apath = []
    printAllPaths(filedot, nodes, edges, srcnode, destnode, Apath)
    print("get all path from src to sink end.....")

    Fpath = Apath
    str = src_fun + ":" + src_line + "," + sink_fun + ":" + sink_line
    if (len(Fpath) == 0):
        no_path_outputfile = open("no_path.txt", 'a')

        no_path_outputfile.write(str + "\n")
        no_path_outputfile.close()
    else:
        have_path_outfile = open("have_path.txt", "a")
        have_path_outfile.write(str + "\n")
        have_path_outfile.close()
    # for pa in Fpath:
    #     print("######")
    #     for p in pa:
    #         print(p.get_name())
    #         # print(p)

    """一个source到sink可能有多种不同的路径
    对路径进行分类，按行号进行排序，合并，得到最终的路径"""

