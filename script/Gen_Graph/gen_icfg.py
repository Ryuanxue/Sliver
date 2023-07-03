import os
import sys
from xml.dom.minidom import Document, parse

import pydot
sys.path.append("../")
PSEUDO_EDDGE=True

def get_file_funname(blockname):
    if blockname.endswith("_start"):
        funname = blockname[2:-6]
    elif blockname.endswith("_end"):
        funname = blockname[2:-4]
    else:
        inde = blockname.rindex("BB")
        funname = blockname[:inde]
    return funname


def str_insert(str_origin, pos, str_add):
    str_list = list(str_origin)    # 字符串转list
    str_list.insert(pos, str_add)  # 在指定位置插入字符串
    str_out = ''.join(str_list)    # 空字符连接
    return  str_out

def get_to_edges(funedegs,nodes,source,Del_edge_list):
    """
    获取当前节点的所有相邻边，将找到的边添加到列表中
    :param source: 节点的name
    :return:列表（存放有找到的所有相邻边）
    """
    # print(source)
    for ede in funedegs:
        if ede.get_source()==source:
            destname=ede.get_destination()
            Del_edge_list.append(ede)
            break
    for node in nodes:
        if node.get_name()==destname:
            return node

def getfunname(ele):
    """
    获取此基本块所属函数的函数名re
    :param ele:Node（基本块）
    :return:string(函数名）
    """
    elename = ele.get_name()
    ind=elename.index("_ll_")
    if elename.endswith("_start"):
        funname = elename[ind+4:-6]
    elif elename.endswith("_end"):
        funname = elename[ind+4:-4]
    else:
        inde = elename.rindex("BB")
        funname = elename[ind+4:inde]
    return funname


def get_last_lineinfo(no):
    """
    获得节点中最后一行以“/home”开头的行信息
    :param no:Node节点
    :return:列表（包含最后一行行信息）
    """
    # print(no)
    pathline = []
    nnlabel = no.get("label")[2:-2]
    if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
        pass
    labellist = nnlabel.split("\n")
    for l in labellist:
        if l.startswith('BB'):
            # print(l)
            if "/home/" in l:
                index = l.index('/home/')
                l1 = l[index:]
                pathline.append(l1)
        elif "/home/" in l:
            pathline.append(l)
    if len(pathline)>0:
        return pathline[-1]
    else:
        return None


def isend(node_name, edges):
    Flag = True
    for e in edges:
        fromnode = e.get_source()
        if fromnode == node_name:
            Flag = False
            break
    return Flag



indcall_dict={}
ind_call_xml=sys.argv[2]+"/ind_call.xml"
if os.path.exists(ind_call_xml):
    indcall_doc = parse(ind_call_xml)
    indcall_root = indcall_doc.documentElement
    ind_locs= indcall_root.getElementsByTagName("ind_loc")
    for ind_loc in ind_locs:
        ind_loc_info=ind_loc.getAttribute("info")
        ind_callees=ind_loc.getElementsByTagName("ind_callee")
        callee_funnames=[]
        for ind_callee in ind_callees:
            callee_funname=ind_callee.getAttribute("funname")
            callee_funnames.append(callee_funname)
        indcall_dict[ind_loc_info]=callee_funnames

# print(indcall_dict.keys())
for key in indcall_dict.keys():
    print(key)
    print(indcall_dict[key])

# exit()



Dir = sys.argv[2]+"/cfg_dot"
path = os.path.abspath(Dir)
path_list = os.listdir(path)
# 将所有的以dot结尾的文件添加入fn_list列表中
fn_list = []
fun_entry_end = {}

doc = Document()
root = doc.createElement("root")
doc.appendChild(root)

for file in path_list:
    filename = os.path.basename(file)
    if filename.endswith(".dot"):
        funname=filename[:-4]
        # print(funname)
        funnode=doc.createElement("fun")
        funnode.setAttribute("name",funname)
        root.appendChild(funnode)
        fn_list.append(filename)

filename=sys.argv[2]+"/_funname_.xml"
with open(filename, 'w') as f:
        f.write(doc.toprettyxml(indent=' '))
        f.close()

# 用于存放所有的节点和所有的边，最后这些节点和边被添加到图中
Nodes = []
Edges = []
CGNodes=[]
CGEdges=[]
CGnodenamelist=[]
CGedgenalelist=[]
m = 0

"""
we must record the entry point and end point of each function.
1.if the source of edges is call statement,omit and jump the edge.
2.get the sorce of edge relative node.
3.get the destination of edge relative node.
4.add a edge from the souce node to the called function's start node.
5.add a edge from the called function's end node to the destination node.

"""

"""
1.只解析一次文件
2.在第一次循环的时候添加end节点，同时判断将哪一个节点指向end节点
3.将end节点添加到fun_entry_end字典中
4.在第一次循环的时候将所有的节点以及边添加到Node和Edge中

"""
for f in fn_list:
    # print(f)
    (filedot,) = pydot.graph_from_dot_file(str(Dir + "/" + f))
    nodes = filedot.get_nodes()
    edges = filedot.get_edges()

    funid = f[0:-4]  # """函数名”“”
    # if funid[0].isdigit():
    #     funid="a"+funid
    fun_entry_end[funid] = []
    """找到函数的入口节点和出口节点添加进入fun_entry_end字典中"""
    end_label = funid + "_end"
    end_name = "BB" + end_label
    endnode = pydot.Node(end_name, label='"{' + end_label + '}"')
    Nodes.append(endnode)
    for n in nodes:
        node_name = n.get_name()
        if node_name.endswith("_start"):
            fun_entry_end[funid].append(n)
        if isend(node_name, edges):
            edge = pydot.Edge(n, endnode)
            Edges.append(edge)
    fun_entry_end[funid].append(endnode)

for f in fn_list:
    callerfunname = f[:-4]
    # if callerfunname[0].isdigit():
    #     callerfunname="a"+callerfunname
    pos=f.index("_ll_")
    filename=f[:pos+4]
    (filedot,) = pydot.graph_from_dot_file(str(Dir + "/" + f))
    nodes = filedot.get_nodes()
    edges = filedot.get_edges()
    del_ede_list=[]
    for ele in nodes:
        nodelabel = ele.get("label")[2:-2]
        if "call " in nodelabel:
            # print(ele.get_name())
            labellist = nodelabel.split("\n")
            endline = labellist[-2]
            # print(nodelabel)
            if get_last_lineinfo(ele) is not None:
                lastline=get_last_lineinfo(ele)[:-2]
            else:
                lastline=-2
            # print(lastline)
            if lastline in indcall_dict.keys() and (endline.startswith("call") or "call " in endline.strip()):
                # print("aaa")
                callee_funnames=indcall_dict[lastline]
                addfun=""
                for fun in callee_funnames: 
                    elefunname=get_file_funname(ele.get_name())

                    print(fun)
                    print(filename+fun)
                    keyname=""
                    if filename+fun in fun_entry_end.keys():
                        keyname=filename+fun
                        if keyname==elefunname:
                            continue
                    else:
                        for key in fun_entry_end.keys():
                            if key.endswith(fun):
                                keyname=key
                                break
                    #如果keyname为“”,说明这个函数在其他的库中
                    if len(keyname)>0:
                        addfun=addfun+","+fun #

                        dest_node = get_to_edges(edges,nodes,ele.get_name(),del_ede_list) #
                        edge1 = pydot.Edge(ele, fun_entry_end[keyname][0])
                        edge2 = pydot.Edge(fun_entry_end[keyname][1], dest_node)
                        Edges.append(edge1)
                        Edges.append(edge2)
                        callernode = pydot.Node(callerfunname, label='"{' + callerfunname + '}"')
                        calleenode = pydot.Node(keyname, label='"{' + keyname + '}"')
                        cgedges = pydot.Edge(callernode, calleenode)
                        # cgedges1 = pydot.Edge(calleenode, callernode)
                        edsig=callerfunname+keyname
                        if edsig not in CGedgenalelist:
                            CGEdges.append(cgedges)
                            CGedgenalelist.append(edsig)
                        # CGEdges.append(cgedges1)
                        callersig=callerfunname
                        if callersig  not in CGnodenamelist:
                            CGNodes.append(callernode)
                            CGnodenamelist.append(callersig)
                        calleesig=keyname
                        if calleesig not in CGnodenamelist:
                            CGNodes.append(calleenode)
                            CGnodenamelist.append(calleesig)
                labelstr=ele.get("label")
                labelind=labelstr.rindex("\l")
                labelstr=str_insert(labelstr,labelind,addfun)
                # print(labelstr)
                """为什么要创建一个新的节点"""
                """修改了一个新的间接调用的语句"""
                newele=pydot.Node(name=ele.get_name(),label=labelstr,shape="record")
                Nodes.append(newele)
                continue
            Nodes.append(ele)
            # print(endline)
            if "call" not in endline:
                continue
            if "@" not in endline:
                continue
            # print("bbb")
            # print(nodelabel)
            start_num = endline.index("@")
            endlinesplit=endline[start_num+1:]
            if "(" not in endlinesplit:
                continue
            end_num = endlinesplit.index("(")
            funname = endlinesplit[:end_num]
            # print(funname)

            if funname.startswith("llvm") or funname.startswith("."):
                continue
            else:


                if filename+funname in fun_entry_end.keys():
                    print(filename+funname)
                    print(fun_entry_end[filename+funname])
                    dest_node = get_to_edges(edges, nodes, ele.get_name(),del_ede_list)
                    edge1 = pydot.Edge(ele, fun_entry_end[filename+funname][0])
                    edge2 = pydot.Edge(fun_entry_end[filename+funname][1], dest_node)
                    # print(edge1)
                    # print(edge2)
                    Edges.append(edge1)
                    Edges.append(edge2)
                    callernode = pydot.Node(callerfunname, label='"{' + callerfunname+ '}"')
                    calleenode=pydot.Node(filename+funname, label='"{' + filename+funname+ '}"')
                    cgedges = pydot.Edge(callernode, calleenode)
                    # cgedges1 = pydot.Edge(calleenode, callernode)
                    edsig = callerfunname + filename+funname
                    if edsig not in CGedgenalelist:
                        CGEdges.append(cgedges)
                        CGedgenalelist.append(edsig)
                    # CGEdges.append(cgedges1)
                    callersig = callerfunname
                    if callersig not in CGnodenamelist:
                        CGNodes.append(callernode)
                        CGnodenamelist.append(callersig)
                    calleesig = filename+funname
                    if calleesig not in CGnodenamelist:
                        CGNodes.append(calleenode)
                        CGnodenamelist.append(calleesig)
                else:
                    for key in fun_entry_end.keys():
                        k_ind=key.index("_ll_")
                        file_funname=key[k_ind+4:]
                        if funname==file_funname:
                            dest_node = get_to_edges(edges, nodes, ele.get_name(), del_ede_list)
                            edge1 = pydot.Edge(ele, fun_entry_end[key][0])
                            edge2 = pydot.Edge(fun_entry_end[key][1], dest_node)
                            # print(edge1)
                            # print(edge2)
                            Edges.append(edge1)
                            Edges.append(edge2)
                            callernode = pydot.Node(callerfunname, label='"{' + callerfunname + '}"')
                            calleenode = pydot.Node(key, label='"{' + key+ '}"')
                            cgedges = pydot.Edge(callernode, calleenode)
                            # cgedges1 = pydot.Edge(calleenode, callernode)
                            edsig = callerfunname + key
                            if edsig not in CGedgenalelist:
                                CGEdges.append(cgedges)
                                CGedgenalelist.append(edsig)
                            # CGEdges.append(cgedges1)
                            callersig = callerfunname
                            if callersig not in CGnodenamelist:
                                CGNodes.append(callernode)
                                CGnodenamelist.append(callersig)
                            calleesig = key
                            if calleesig not in CGnodenamelist:
                                CGNodes.append(calleenode)
                                CGnodenamelist.append(calleesig)
                            break
        Nodes.append(ele)  # 所有函数的node

    for e in edges:
        if e in del_ede_list:
            if PSEUDO_EDDGE:
                tempedg=pydot.Edge(e.get_source(),e.get_destination(),style='dotted')
                Edges.append(tempedg)
            pass
        else:
            Edges.append(e)


    m = m + 1

"""重新创建了一个图，将所有的节点和边添加到图中"""
g = pydot.Dot(graph_name='icfg graph', graph_type='digraph')
for n in Nodes:
    g.add_node(n)
j = 0
for e in Edges:
    g.add_edge(e)
    j = j + 1
# print(j)

g.write(sys.argv[2]+"/"+sys.argv[1]+"_icfg.dot")

cg = pydot.Dot(graph_name='cg graph', graph_type='graph')
for n in CGNodes:
    cg.add_node(n)
j = 0
for e in CGEdges:
    cg.add_edge(e)
    j = j + 1
# print(j)

cg.write(sys.argv[2]+"/"+sys.argv[1]+"_callgraph.dot")
