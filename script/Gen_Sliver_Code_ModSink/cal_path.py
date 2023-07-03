import datetime
import os
import pickle
import sys
from collections import deque

import pydot

from lib_code_gen import get_lineinfo, getfunname, get_file_funname

sys.setrecursionlimit(1000)

Filename = []  # store all function name    ########
global_funname=[]
fun_edges = {} #函数与边的映射列表
fun_nodes={} #函数与节点的映射列表
maxrecurdepth =sys.argv[8]
# maxrecurdepth=50
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
    # if name not in fun_edges.keys():
    #     get_funname_and_funedgs_from_dot(name)
    edff = fun_edges[name]
    for e in edff:
        src = e.get_source()
        if src == source:
            edge_list.append(e)
    return edge_list


def get_target_node(dest):
    ind=dest.index("_ll_")
    if dest.endswith("_start"):
        destname = dest[ind+4:-6]
    elif dest.endswith("_end"):
        destname = dest[ind+4:-4]
    else:
        inde = dest.rindex("BB")
        destname = dest[ind+4:inde]
    retlist=[]
    if destname in fun_nodes.keys():
        destname_nodelist=fun_nodes[destname]
        for ele in destname_nodelist:
            if ele.get_name()==dest:
                retlist.append(ele)
                break
    return retlist



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
    # if name not in fun_edges.keys():
    #     get_funname_and_funedgs_from_dot(name)
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
            adjnode = get_target_node(adj)
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
        """添加call 函数所在的节点，方便inline的时候根据行号找到内联位置"""
        ind=0
        for i in path:
            print("end deal....")
            print(path[ind].get_name())
            if ind!=0:
                print("end deal....")
                if path[ind-1].get_name().endswith("_end"):

                    print(i.get_name())
                    name=get_file_funname(i)
                    edff = fun_edges[name]
                    for e in edff:
                        esource=e.get_source()
                        edest = e.get_destination()
                        if edest == i.get_name() and not esource.endswith("_end"):
                            tarnode=get_target_node(esource)
                            temp.append(tarnode)
                            break
            ind=ind+1
            temp.append(i)
        Apath.append(temp)
        # Apath.append(path.copy())
        # path.pop()
        # visited[u.get_name()][0] = False

    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination()
            dest_node = get_target_node(dest)
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


# Utility function to check if current
# vertex is already present in path
def isNotVisited(node, path):
    size = len(path)
    # print(type(path))
    # print(path)
    for i in range(size):
        # print(type(path[i]))
        if type(path[i])==type(""):
            print("str......type")
            print(path[i])
        #     continue
        if path[i] is None:
            continue
        if (path[i].get_name() == node.get_name()):
            return 0
    return 1

def printAllPathsUtil_bfs(gra, u, d, Apath):
    # Create a queue which stores
    # the paths
    q = deque()

    # Path vector to store the current path
    path = []
    path.append(u)
    q.append(path.copy())

    while q:
        path = q.popleft()
        last = path[len(path) - 1]

        if len(path)>int(maxrecurdepth):
            continue
        if last.get_name().endswith("_end"):
            startnode_name=last.get_name()[:-3]+"start"
            flag=False
            for ele in path:
                elename=ele.get_name()
                if elename==startnode_name:
                    flag=True
                    break
            if flag:
                continue

        # If last vertex is the desired destination
        # then print the path
        if (last.get_name() == d.get_name()):
            Apath.append(path.copy())

        # Traverse to all the nodes connected to
        # current vertex and push new path to queue
        ede = get_to_edges(last.get_name())
        for i in ede:
            dest = i.get_destination()
            dest_node = get_target_node(dest)
            if (isNotVisited(dest_node[0], path)):
                newpath = path.copy()
                newpath.append(dest_node[0])
                q.append(newpath)

def printpathutil_nonrecur_1(gra, u, d, Apath):
    visited=[]
    mainstack=[u]
    helpstack=[]
    loopnode=[]
    ede = get_to_edges(u.get_name())
    edenodelist=[]
    for i in ede:
        dest = i.get_destination()
        dest_node = get_target_node(dest)
        edenodelist.append(dest_node[0])
    helpstack.append(edenodelist)
    if len(mainstack)!=len(helpstack):
        print("nonequal1.....")
    # if is_loop(u):
    #     loopnode.append(u.get_name())
    # else:
    #     visited.append(u.get_name())

    while len(mainstack)>0:
        print("mainstack..")
        for ele in mainstack:
            if ele is None:
                continue
            print(ele.get_name())
        print("helpstack")
        print(helpstack)
        for helplist in helpstack:
            print("evry list")
            for l in helplist:
                print(l.get_name())
        print()
        if len(mainstack)>int(maxrecurdepth):
            print("stop......")
            mainstack.pop()
            helpstack.pop()
            continue
        if len(helpstack[-1])>0:
            tempnode=helpstack[-1].pop()
            tempnode_name=tempnode.get_name()
            if tempnode_name.endswith("_end"):
                startflag=False
                for ele in mainstack:
                    if ele.get_name()==tempnode_name[:-3]+"start":
                        startflag=True
                        break
                if startflag:
                    mainstack.pop()
                    helpstack.pop()
                    continue
            if tempnode.get_name() not in visited:
                if isNotVisited(tempnode,mainstack):
                    mainstack.append(tempnode)
                else:
                    mainstack.append(None)
                ede = get_to_edges(tempnode.get_name())
                edenodelist = []
                for i in ede:
                    dest = i.get_destination()
                    dest_node = get_target_node(dest)
                    if isNotVisited(dest_node[0],mainstack):
                        edenodelist.append(dest_node[0])
                    elif isNotVisited(dest_node[0],loopnode):
                        edenodelist.append(dest_node[0])
                        loopnode.append(dest_node[0])
                helpstack.append(edenodelist)
        else:
            mainstack.pop()
            helpstack.pop()
            continue
        if mainstack[-1] is not None and mainstack[-1].get_name()==d.get_name():
            Apath.append(mainstack.copy())
            mainstack.pop()
            helpstack.pop()


def printpathutil_nonrecur(gra, u, d, Apath):
    visited=[]
    mainstack=[u]
    helpstack=[]
    loopnode=[]
    ede = get_to_edges(u.get_name())
    edenodelist=[]
    for i in ede:
        dest = i.get_destination()
        dest_node = get_target_node(dest)
        edenodelist.append(dest_node[0])
    helpstack.append(edenodelist)
    if len(mainstack)!=len(helpstack):
        print("nonequal1.....")
    if is_loop(u):
        loopnode.append(u.get_name())
    else:
        visited.append(u.get_name())

    while len(mainstack)>0:
        print("mainstack..")
        for ele in mainstack:
            if ele is None:
                continue
            print(ele.get_name())
        print("helpstack")
        print(helpstack)
        for helplist in helpstack:
            print("evry list")
            for l in helplist:
                print(l.get_name())
        print()
        if len(mainstack)>int(maxrecurdepth):
            print("stop......")
            mainstack.pop()
            helpstack.pop()
            continue
        if len(helpstack[-1])>0:
            tempnode=helpstack[-1].pop()
            tempnode_name=tempnode.get_name()
            if tempnode_name.endswith("_end"):
                startflag=False
                for ele in mainstack:
                    if ele.get_name()==tempnode_name[:-3]+"start":
                        startflag=True
                        break
                if startflag:
                    mainstack.pop()
                    helpstack.pop()
                    continue
            if tempnode.get_name() not in visited:
                if is_loop(tempnode):
                    if tempnode.get_name() not in loopnode:
                        loopnode.append(tempnode.get_name())
                    else:
                        visited.append(tempnode.get_name())
                else:
                    visited.append(tempnode.get_name())
                if isNotVisited(tempnode,mainstack):
                    mainstack.append(tempnode)
                else:
                    mainstack.append(None)
                ede = get_to_edges(tempnode.get_name())
                edenodelist = []
                for i in ede:
                    dest = i.get_destination()
                    dest_node = get_target_node(dest)

                    # if isNotVisited(dest_node[0],mainstack):
                    edenodelist.append(dest_node[0])
                    # elif isNotVisited(dest_node[0],loopnode):
                    #     edenodelist.append(dest_node[0])
                    #     loopnode.append(dest_node[0])
                helpstack.append(edenodelist)
        else:
            mainstack.pop()
            helpstack.pop()
            continue
        if mainstack[-1] is not None and mainstack[-1].get_name()==d.get_name():
            Apath.append(mainstack.copy())
            popele=mainstack.pop()
            visited.remove(popele.get_name())
            helpstack.pop()

def is_loop(u):
    fflags=False
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        if "for.body" in brinst or "while.body" in brinst:
            fflags = True
    return fflags

def parse_callgraph_as_dic():
    dot_file = sys.argv[5] + "_callgraph.dot"
    (cgfiledot,) = pydot.graph_from_dot_file(dot_file)
    time1 = datetime.datetime.now()
    print(time1)
    cgnodes = cgfiledot.get_nodes()
    cgedges = cgfiledot.get_edges()
    callgraph_dic={}
    for node in cgnodes:
        callgraph_dic[node.get_name()]=[]
    for ed in cgedges:
        src=ed.get_source()
        dest=ed.get_destination()
        if src in callgraph_dic:
            if dest not in callgraph_dic[src]:
                callgraph_dic[src].append(dest)
        if dest in callgraph_dic:
            if src not in callgraph_dic[dest]:
                callgraph_dic[dest].append(src)
    time1 = datetime.datetime.now()
    print(time1)
    return callgraph_dic

def get_callgraph_related_funcion_file(paths):
    finally_funlist=[]
    for pa in paths:
        for p in pa:
            if p not in finally_funlist:
                finally_funlist.append(p)
    return finally_funlist


def main_print_callgraph_path(start,end):
    # start=None
    # end=None
    callgraph_dic=parse_callgraph_as_dic()
    # print(callgraph_dic)

    visited = {}
    print("nodes...name")
    for key in callgraph_dic.keys():
        visited[key] = False
    paths=[]
    path=[]
    n = [0]
    if start[0]=='"' and start[1].isdigit():
        start=start+'"'
    if end[0]=='"' and end[1].isdigit():
        end=end+'"'

    dfs_all_path_in_callgraph(callgraph_dic,start,end,visited,n,path,paths)
    # paths=dfs_print_allpath_for_two_node_in_callgraph(callgraph_dic,start,end,n)
    finally_funlist=get_callgraph_related_funcion_file(paths)
    print("pirnt callgraph all path")
    for pa in finally_funlist:
        print(pa)
    print()
    return finally_funlist



# def dfs_print_allpath_for_two_node_in_callgraph(callgraph_dic, start, end,n, path=[]):
#     n[0] = n[0] + 1
#     # if n[0] > int(maxrecurdepth):
#     if n[0]>100:
#         print("maxrecurdepth")
#         print(n[0])
#         n[0] = n[0] - 1
#         # if u.get_name().endswith("_start"):
#         #     tempstack.pop()
#         return
#     path = path + [start]
#     if start == end:
#         return [path]
#     if start not in callgraph_dic:
#         return []
#     paths = []
#     for node in callgraph_dic[start]:
#         if node not in path:
#             newpaths = dfs_print_allpath_for_two_node_in_callgraph(callgraph_dic, node, end, n,path)
#             if newpaths is None:
#                 continue
#             for newpath in newpaths:
#                 paths.append(newpath)
#     return paths

def dfs_all_path_in_callgraph(callgraphdic, u,d,visited,n,path,Apath):
    print("forward....."+u)

    n[0] = n[0] + 1
    if n[0] > 120:
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        # path.pop()
        return
    visited[u] = True
    if u not in path:
        path.append(u)
    if u == d:
        """去除路径中添加的loop节点的占位符"""
        Apath.append(path.copy())
        visited[u] = False
    # else:
    #     ede = callgraphdic[u]
    #     for dest in ede:
    #         if dest in visited.keys() and not visited[dest]:
    #             dfs_all_path_in_callgraph(callgraphdic, dest, d, visited,n, path, Apath)
    ede = callgraphdic[u]
    for dest in ede:
        if dest in visited.keys() and not visited[dest]:
            dfs_all_path_in_callgraph(callgraphdic, dest, d, visited, n, path, Apath)
    n[0] = n[0] - 1
    tempname=path.pop()
    print("backward..."+tempname)


def dfs_print_allpath_for_two_node(gra, u, d, visited, path, tempstack, n, Apath):
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

    print("forward..."+u.get_name())
    fflags = False
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        if "for.body" in brinst or "while.body" in brinst:
            fflags=True
    if fflags and u.get_name() in loop_recur_node: #是loop且已经被访问过
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:#是loop且没有被访问过
        loop_recur_node.append(u.get_name())
    else:
        visited[u.get_name()][0] = True
    n[0] = n[0] + 1
    if n[0] > int(maxrecurdepth):
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        if u.get_name().endswith("_start"):
            tempstack.pop()
        return
    if u in path:
        path.append(u.get_name())
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        """去除路径中添加的loop节点的占位符"""
        temppath = []
        for ele in path:
            if type(ele) != type(""):
                temppath.append(ele)
        Apath.append(temppath.copy())
        print()
        print("find tartget node,print path....")
        for pele in path:
            if type(pele) != type(""):
                print(pele.get_name())
                if pele.get_name().endswith("_start") or pele.get_name().endswith("_end"):
                    visited[pele.get_name()][0] = False
        print()
    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination()
            dest_node= get_target_node(dest)
            if dest in visited.keys() and not visited[dest][0]:
                dfs_print_allpath_for_two_node(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
    tempele=path.pop()
    if type(tempele) != type(""):
        tempelename = tempele.get_name()
    else:
        tempelename = tempele
    print("back..." + tempelename)
    n[0] = n[0] - 1
    visited[u.get_name()][0] = False
#
def dfs_exclude_unfold_function_print_allpath_for_two_node(gra, u, d, visited, path, tempstack, n, Apath):
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

    print("forward..."+u.get_name())
    fflags = False
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        if "for.body" in brinst or "while.body" in brinst:
            fflags=True
    if fflags and u.get_name() in loop_recur_node: #是loop且已经被访问过
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:#是loop且没有被访问过
        loop_recur_node.append(u.get_name())
    else:
        visited[u.get_name()][0] = True
    n[0] = n[0] + 1
    if n[0] > int(maxrecurdepth):
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        if u.get_name().endswith("_start"):
            tempstack.pop()
        return
    if u in path:
        path.append(u.get_name())
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        """去除路径中添加的loop节点的占位符"""
        temppath = []
        for ele in path:
            if type(ele) != type(""):
                temppath.append(ele)
        Apath.append(temppath.copy())
        print()
        print("find tartget node,print path....")
        for pele in path:
            if type(pele) != type(""):
                print(pele.get_name())
                if pele.get_name().endswith("_start") or pele.get_name().endswith("_end"):
                    visited[pele.get_name()][0] = False
        print()
    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination()
            dest_node= get_target_node(dest)
            if dest in visited.keys() and not visited[dest][0]:
                """unfold function排除策略"""
                if dest.endswith("_start"):
                    tempstack.append(dest[:-5] + 'end')
                elif dest.endswith("_end") and dest == tempstack[-1]:
                    tempele = path.pop()
                    if type(tempele) != type(""):
                        tempelename = tempele.get_name()
                    else:
                        tempelename = tempele
                    print("back..." + tempelename)
                    n[0] = n[0] - 1
                    return
                dfs_exclude_unfold_function_print_allpath_for_two_node(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
    tempele=path.pop()
    if type(tempele) != type(""):
        tempelename = tempele.get_name()
    else:
        tempelename = tempele
    print("back..." + tempelename)
    if tempelename.endswith("_start") and tempelename[:-5] + 'end'==tempstack[-1]:
        tempstack.pop()
    n[0] = n[0] - 1
    visited[u.get_name()][0] = False

def dfs_accel_exclude_unfold_function_print_allpath_for_two_node(gra, u, d, visited, path, tempstack, n, Apath): #finallyfunlist用于callgraph优化
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

    # print("forward..."+u.get_name())
    fflags = False
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        #判断此节点是否为loop节点
        if "for.body" in brinst or "while.body" in brinst:
            fflags=True
        """判断递归节点"""

    if fflags and u.get_name() in loop_recur_node: #是loop或者递归节点且已经被访问过
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:#是loop或递归且没有被访问过
        loop_recur_node.append(u.get_name())
    else:
        visited[u.get_name()][0] = True
    n[0] = n[0] + 1
    if n[0] > int(maxrecurdepth):
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        if u.get_name().endswith("_start"):
            tempstack.pop()
        return
    if u in path:
        path.append(u.get_name())
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        """去除路径中添加的loop节点的占位符"""
        temppath=[]
        ind=0
        for ele in path:
            if type(ele)!=type(""):
                if ind != 0:
                    print("test1")
                    print(type(ele))
                    print(ele)
                    print(path[ind-1])
                    #如果此条path的前一个节点是end，将调用end节点所在函数的节点添加到temppath中
                    if type(path[ind-1])!=type("") and path[ind - 1].get_name().endswith("_end"):
                        print("deal_ return")
                        print(ele.get_name())
                        name = get_file_funname(ele.get_name()) #获得函数名
                        edff = fun_edges[name] #获得此函数的所有边
                        for e in edff:
                            esource = e.get_source()
                            edest = e.get_destination()
                            if edest == ele.get_name() and not esource.endswith("_end"):
                                tarnode = get_target_node(esource)
                                print(tarnode[0].get_name())
                                temppath.append(tarnode[0])
                                break
                # ind=ind+1
                temppath.append(ele)
            ind=ind+1
        Apath.append(temppath.copy())
        print()
        print("find tartget node,print path....")
        for pele in path:
            if type(pele)!=type(""):
                print(pele.get_name())
                """当已经找到了一条路径，此时将_start以及_end的可访问解开，方便其他路径的遍历。"""
                if pele.get_name().endswith("_start") or pele.get_name().endswith("_end"):
                    visited[pele.get_name()][0] = False
        print()
    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination() # call graph 优化

            dest_node= get_target_node(dest)

            if dest in visited.keys() and not visited[dest][0]:
                if dest.endswith("_start"):
                    tempstack.append(dest[:-5] + 'end')
                elif dest.endswith("_end") and dest == tempstack[-1]:
                    tempele = path.pop()
                    if type(tempele) != type(""):
                        tempelename = tempele.get_name()
                    else:
                        tempelename = tempele
                    n[0] = n[0] - 1
                    return
                dfs_accel_exclude_unfold_function_print_allpath_for_two_node(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
    tempele=path.pop()
    if type(tempele)!=type(""):
        tempelename=tempele.get_name()
    else:
        tempelename=tempele
    # print("back..."+tempelename)
    if tempelename.endswith("_start") and tempelename[:-5] + 'end'==tempstack[-1]:
        tempstack.pop()
    n[0] = n[0] - 1
    """加速搜索：这条路径中存在对unfold function的多次调用，因此会对此函数有多次遍历，已经证实了这条这个函数不应该被展开，
    因此在回退的时候不要将此函数的visited设为False,从而阻止其他遍历的进入。在大程序中这个操作比较有用，能优化很多时间。"""

    if tempelename.endswith("_start") or tempelename.endswith("_end"):
        pass
    else:
        visited[u.get_name()][0] = False
#
def dfs_accel_exclude_unfold_function_print_allpath_for_two_node_use_callgraph(gra, u, d, visited, path, tempstack, n, Apath, finallyfunlist): #finallyfunlist用于callgraph优化
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

    print("forward..."+u.get_name())
    fflags = False
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        if "for.body" in brinst or "while.body" in brinst:
            fflags=True
        """判断递归节点"""

    if fflags and u.get_name() in loop_recur_node: #是loop或者递归节点且已经被访问过
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:#是loop或递归且没有被访问过
        loop_recur_node.append(u.get_name())
    else:
        visited[u.get_name()][0] = True
    n[0] = n[0] + 1
    if n[0] > int(maxrecurdepth):
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        if u.get_name().endswith("_start"):
            tempstack.pop()
        return
    if u in path:
        path.append(u.get_name())
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        """去除路径中添加的loop节点的占位符"""
        temppath=[]
        ind=0
        for ele in path:
            if type(ele)!=type(""):
                if ind != 0:
                    if path[ind - 1].get_name().endswith("_end"):
                        print("deal_ return")
                        print(ele.get_name())
                        name = get_file_funname(ele.get_name())
                        edff = fun_edges[name]
                        for e in edff:
                            esource = e.get_source()
                            edest = e.get_destination()
                            if edest == ele.get_name() and not esource.endswith("_end"):
                                print("deal_ retrun...1")
                                tarnode = get_target_node(esource)
                                print(tarnode[0].get_name())
                                temppath.append(tarnode[0])
                                break
                ind=ind+1
                temppath.append(ele)
        Apath.append(temppath.copy())
        print()
        print("find tartget node,print path....")
        for pele in path:
            if type(pele)!=type(""):
                print(pele.get_name())
                """当已经找到了一条路径，此时将_start以及_end的可访问解开，方便其他路径的遍历。"""
                if pele.get_name().endswith("_start") or pele.get_name().endswith("_end"):
                    visited[pele.get_name()][0] = False
        print()
    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination() # call graph 优化
            if get_file_funname(dest) not in finallyfunlist:
                continue
            dest_node= get_target_node(dest)

            if dest in visited.keys() and not visited[dest][0]:
                if dest.endswith("_start"):
                    tempstack.append(dest[:-5] + 'end')
                elif dest.endswith("_end") and dest == tempstack[-1]:
                    tempele = path.pop()
                    if type(tempele) != type(""):
                        tempelename = tempele.get_name()
                    else:
                        tempelename = tempele
                    print("back..." + tempelename)
                    n[0] = n[0] - 1
                    return
                dfs_accel_exclude_unfold_function_print_allpath_for_two_node_use_callgraph(gra, dest_node[0], d, visited, path, tempstack, n, Apath,finallyfunlist)
    tempele=path.pop()
    if type(tempele)!=type(""):
        tempelename=tempele.get_name()
    else:
        tempelename=tempele
    print("back..."+tempelename)
    if tempelename.endswith("_start") and tempelename[:-5] + 'end'==tempstack[-1]:
        tempstack.pop()
    n[0] = n[0] - 1
    """加速搜索：这条路径中存在对unfold function的多次调用，因此会对此函数有多次遍历，已经证实了这条这个函数不应该被展开，
    因此在回退的时候不要将此函数的visited设为False,从而阻止其他遍历的进入。在大程序中这个操作比较有用，能优化很多时间。"""

    if tempelename.endswith("_start") or tempelename.endswith("_end"):
        pass
    else:
        visited[u.get_name()][0] = False


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

    print("forward..."+u.get_name())
    fflags = False
    # if len(lineinfo) > 0:
    #     lastline = lineinfo[-1]
    #     index = lastline.rindex(":")
    #     line = lastline[index + 1:-2]#行号
    #     adjnodes = get_two_layer_node(u.get_name())  # get src's two layer adjnode
    #     for adj in adjnodes:
    #         adjnode = get_target_node(adj)
    #         if len(adjnode)==0:
    #             continue
    #         adjlineinfo = get_lineinfo(adjnode[0])  # adjlineinfo maybe empty
    #         if (len(adjlineinfo) == 0):
    #             continue
    #         aindex = adjlineinfo[0].rindex(":")
    #         firstline = adjlineinfo[0][aindex + 1:-2]
    #         if int(firstline) > int(line):
    #             fflags = True
    #             break
    if u.get_name().endswith("_start") or u.get_name().endswith("_end"):
        pass
    else:
        bblabel = u.get("label")[2:-2]
        bblabel_list = bblabel.split("\n")
        brinst = bblabel_list[-2]
        if "for.body" in brinst or "while.body" in brinst:
            fflags=True
        """判断递归节点"""

    if fflags and u.get_name() in loop_recur_node: #是loop或者递归节点且已经被访问过
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:#是loop或递归且没有被访问过
        loop_recur_node.append(u.get_name())
    else:
        visited[u.get_name()][0] = True
    n[0] = n[0] + 1
    if n[0] > int(maxrecurdepth):
        print("maxrecurdepth")
        print(n[0])
        n[0] = n[0] - 1
        if u.get_name().endswith("_start"):
            tempstack.pop()
        return
    if u in path:
        path.append(u.get_name())
    else:
        path.append(u)

    if u.get_name() == d.get_name():
        """去除路径中添加的loop节点的占位符"""
        temppath=[]
        for ele in path:
            if type(ele)!=type(""):
                temppath.append(ele)
        Apath.append(temppath.copy())
        print()
        print("find tartget node,print path....")
        for pele in path:
            if type(pele)!=type(""):
                print(pele.get_name())
                """当已经找到了一条路径，此时将_start以及_end的可访问解开，方便其他路径的遍历。"""
                if pele.get_name().endswith("_start") or pele.get_name().endswith("_end"):
                    visited[pele.get_name()][0] = False
        print()
    else:
        ede = get_to_edges(u.get_name())
        for i in ede:
            dest = i.get_destination()
            # dest_node = gra.get_node(dest)
            dest_node= get_target_node(dest)

            if dest in visited.keys() and not visited[dest][0]:
                # if dest.endswith("_start") and len(path) > 1 and path[-2].get_name().endswith("end") and getfunname(
                #         path[-2]) == getfunname(dest_node[0]):
                #     # print("entry3..")
                #     continue
                # if dest.endswith("_start") and getfunname(dest_node[0])==getfunname(path[-1]):
                #     continue
                if dest.endswith("_start"):
                    tempstack.append(dest[:-5] + 'end')
                elif dest.endswith("_end") and dest == tempstack[-1]:
                    tempele = path.pop()
                    if type(tempele) != type(""):
                        tempelename = tempele.get_name()
                    else:
                        tempelename = tempele
                    print("back..." + tempelename)
                    n[0] = n[0] - 1
                    return
                printAllPathsUtil(gra, dest_node[0], d, visited, path, tempstack, n, Apath)
    tempele=path.pop()
    if type(tempele)!=type(""):
        tempelename=tempele.get_name()
    else:
        tempelename=tempele
    print("back..."+tempelename)
    if tempelename.endswith("_start") and tempelename[:-5] + 'end'==tempstack[-1]:
        tempstack.pop()
    n[0] = n[0] - 1
    # visited[u.get_name()][0] = False
    """加速搜索：这条路径中存在对unfold function的多次调用，因此会对此函数有多次遍历，已经证实了这条这个函数不应该被展开，
    因此在回退的时候不要将此函数的visited设为False,从而阻止其他遍历的进入。在大程序中这个操作比较有用，能优化很多时间。"""

    if tempelename.endswith("_start") or tempelename.endswith("_end"):
        pass
    else:
        visited[u.get_name()][0] = False


def printAllPaths(filedot, nodes, edges, s, d, Apath,finallyfunlist): #finallyfunlist用于callgraph优化
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
    print("nodes...name")
    for n in nodes:
        # print(n.get_name())
        visited[n.get_name()] = []
        visited[n.get_name()].append(False)

    path = []
    tempstack = [False]
    n=[0]
    # dfs_accel_exclude_unfold_function_print_allpath_for_two_node_use_callgraph(filedot, s, d, visited, path, tempstack, n, Apath,finallyfunlist)#finallyfunlist用于callgraph优化
    dfs_accel_exclude_unfold_function_print_allpath_for_two_node(filedot, s, d, visited, path, tempstack, n, Apath)
def isend(node_name, edges):
    Flag = True
    for e in edges:
        fromnode = e.get_source()
        if fromnode == node_name:
            Flag = False
            break
    return Flag

def get_funname_and_funedgs_from_dot(funname):
    """
    根据函数名解析相应的cfg.dot并映射此函数的节点
    :param funname: 函数名
    :return:
    """
    funname_dot=sys.argv[6]+"/cfg_dot/"+funname+".dot"
    # funname_dot = "/home/raoxue/Desktop/MemVerif/workspace/000_000_2/cfg_dot/" + funname + ".dot"
    (funname_dotfile,) = pydot.graph_from_dot_file(funname_dot)

    funname_nodes = funname_dotfile.get_nodes()
    funname_edges = funname_dotfile.get_edges()
    for e in funname_edges:
        if funname not in fun_edges.keys():
            fun_edges[funname] = []
            fun_edges[funname].append(e)
        else:
            fun_edges[funname].append(e)

    end_label = funname + "_end"
    end_name = "BB" + end_label
    endnode = pydot.Node(end_name, label='"{' + end_label + '}"')
    for n in funname_nodes:
        node_name = n.get_name()
        if isend(node_name, funname_edges):
            edge = pydot.Edge(n, endnode)
            funname_edges.append(edge)
            break




def get_funname_and_funedgs(nodes, edges):
    """
    从start节点中获取函数名添加到全局列表Filename中
    将所有的边按照所属函数分类，存放到字典全局字典fun_edges{funname:[edg1,ed2]}
    :param nodes: 所有的节点
    :param edges: 所有有的边
    :return: 无
    """
    for n in nodes:
        # nlabel = n.get("label")[2:-2]
        # if nlabel.endswith("start"):
        #     Filename.append(nlabel[:-6])
        print(n)
        if n.get("label") is None:
            continue
        nodename=getfunname(n)
        if nodename in fun_nodes.keys():
            fun_nodes[nodename].append(n)
        else:
            fun_nodes[nodename]=[]
            fun_nodes[nodename].append(n)
    for e in edges:
        print(e)
        src = e.get_source()
        if src=='"\\n"':
            continue
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


def findpath_in_callgraph():
    dot_file = sys.argv[5] + "_callgraph.dot"
    (cgfiledot,) = pydot.graph_from_dot_file(dot_file)
    time1 = datetime.datetime.now()
    print(time1)
    cgnodes = cgfiledot.get_nodes()
    edges = cgfiledot.get_edges()
    visited = {}
    print("nodes...name")
    for n in cgnodes:
        # print(n.get_name())
        visited[n.get_name()] = []
        visited[n.get_name()].append(False)

    path = []
    tempstack = [False]
    n = [0]
    dfs_exclude_unfold_function_print_allpath_for_two_node(cfiledot, s, d, visited, path, tempstack, n, Apath)




def main_entry(src_file, src_line, sink_file, sink_line, filedot, nodes, edges, outfile, gen_funname):
    """
    程序的主入口，根据source和sink的行号信息在filedot中首先找到source节点和sink节点，然后根据source节点和sink节点
    找到所有的路径，并根据最终路径进行代码生成
    调用遍历所有路径的接口函数（printAllPaths）
    调用根据路径生成代码的总入口函数（gen_code_entry）
    :param src_file:source的文件名（如d1_both.c）
    :param src_line:source的行号
    :param sink_file:sink的文件名
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
    srcnode = ""
    destnode = ""
    print("start finding srcnode and sinknode......")
    src = src_file + ":" + src_line
    sink = sink_file + ":" + sink_line
#
    print(src)
    print(sink)
    """优化1：查找source基本块和sink基本块可以在source所在cfg中寻找中寻找，在sink所在cfg中寻找 """
    for n in nodes:
        nlabel = n.get("label")[2:-2]
        if src in nlabel:
            if srcflag:
                continue
            srcnode = n
            srcflag = True
        if sink in nlabel:
            destnode = n
            sinkflag = True
        if srcflag and sinkflag:
            print("find srcnode and sinknode ending......")
            break
    if srcnode == "":
        print("source location:" + src + " is not exist.")
        exit(1)
    if destnode == "":
        print("sink location:" + sink + " is not exist.")
        exit(1)
    print("get all path from src to sink start.....")
    print(srcnode)
    print(destnode)
    srcind=srcnode.get_name().index("BB")
    destind=destnode.get_name().index("BB")
    src_start=srcnode.get_name()[:srcind]
    dest_end=destnode.get_name()[:destind]
    print(src_start)
    print(dest_end)
    # finallyfunlist= main_print_callgraph_path(src_start,dest_end) #call graph优化
    finallyfunlist=[]
    # exit()
    Apath = []
    time1 = datetime.datetime.now()
    print(time1)

    printAllPaths(filedot, nodes, edges, srcnode, destnode, Apath,finallyfunlist) #finallyfunlist 用于callgraph优化

    # printAllPathsUtil_bfs(filedot, srcnode, destnode, Apath)
    # printpathutil_nonrecur(filedot,srcnode,destnode,Apath)
    print("get all path from src to sink end.....")
    time1=datetime.datetime.now()
    print(time1)
    # print(Apath)
    if len(Apath)==0:
        exit(1)
    for path in Apath:
        print()
        print("every path...")
        for p in path:
            if type(p)!=type(""):
                print(p.get_name())

    # sourcelist=[]
    # sourcefile=sys.argv[6]+"/sourceloc.txt"
    # opensourcefile=open(sourcefile,"r")
    # linelist=opensourcefile.readlines()
    # opensourcefile.close()
    # for line in linelist:
    #     sourcelist.append(line.strip())
    pickedata = []
    pickedata.append(src_file)
    pickedata.append(src_line)
    # pickedata.append(srcnode)
    pickedata.append(sink_file)
    pickedata.append(sink_line)
    pickedata.append(gen_funname)
    pickedata.append(outfile)
    pickedata.append(Apath)
    # pickedata.append(sourcelist)
    if os.path.exists(sys.argv[6]+"/"+ sys.argv[7]+"_temppath"):
        os.remove(sys.argv[6]+"/"+sys.argv[7]+"_temppath")
    f = open(sys.argv[6]+"/"+sys.argv[7]+"_temppath", "wb")
    pickle.dump(pickedata, f)
    f.close()

