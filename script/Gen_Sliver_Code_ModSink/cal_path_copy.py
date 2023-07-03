import os
import subprocess
import sys

from con_gen.lib_code_gen import get_classifypath_key

sys.setrecursionlimit(1000)
import pydot
from pycparser import parse_file, c_generator, c_ast, c_parser

Filename=[] #store all function name    ########
Fpath=[] #store all path filtered
allpathline=[] #store line number of all path
dir_ast={}
line_code_ast=[]
globalv_list=[] #store global varible
global_dic={}
Ismodifyloclavarible=[]
fun_decl_dic={}
fun_edges={}  ###################################
maxrecurdepth=40


generator = c_generator.CGenerator()

def finddecl(child, va,parm_list,flg):
    for c in child:
        if c==None:
            break
        elif type(c)==c_ast.Decl:
            if c.name==va:
                if c in parm_list:
                    flg=True
                    break
                parm_list.append(c)
                flg = True
                break
            else:
                finddecl(c,va,parm_list,flg)
        else:
            finddecl(c,va,parm_list,flg)
    pass

last_num=""
recur_depth=0
def get_last_linenum(c,fun_lastnum,parent_node,decflag):
    global  recur_depth
    global last_num
    recur_depth=recur_depth+1
    print("recur depth........")
    print(recur_depth)
    if c.coord!=None:
        last_num= str(c.coord).split(":")[1]
        if decflag and int(last_num)>int(fun_lastnum):
            print("large++++.......")
            print(generator.visit(c))
            index=parent_node.block_items.index(c)
            slice=parent_node.block_items[:index+1]
            parent_node.block_items=slice
            print(generator.visit(parent_node))
            print(c)
            print(parent_node)
            return last_num
    for child in c:
        if (child == None):
            break
        else:
            if child.coord!=None:
                last_num=str(child.coord).split(":")[1]
                if decflag and int(last_num)>int(fun_lastnum):
                    print("large___.......")

                    index=c.block_items.index(child)
                    slice=c.block_items[:index]
                    c.block_items=slice
                    print(generator.visit(child))
                    print(generator.visit(c))
                    # print(c.block_items.index(child))
                    print(child)
                    print(c)
                    break
            get_last_linenum(child,fun_lastnum,c,decflag)
    return last_num


def recurfindline(fst,child,line,blockname,blocknamelist,varlist,tempast,inc_linenum,fun_lastnum,funname,nextfun):
    """find c source code according to line
    be called by findline()
    child: ast node
    line: line number
    """
    for c in child:
        if (c == None):
            break
        else:
            if line in str(c.coord):
                decflag=True
                if type(c)==c_ast.For or type(c)==c_ast.While or type(c)==c_ast.DoWhile:
                    decflag=False

                print("type######")
                print(type(c))
                index = blockname.index('BB')
                funn = 'BB' + blockname[:index] + '_start'
                last_num = get_last_linenum(c,fun_lastnum,child,decflag)
                if len(inc_linenum)==0:
                    inc_linenum.append(last_num)
                    inc_linenum.append(funname)
                else:
                    inc_linenum[0]=last_num
                    inc_linenum[1]=funname
                if funn in blocknamelist:
                    pass
                elif type(c) == c_ast.Decl:
                    pass
                else:

                    findid(c, varlist)
                """
                    1.重新构造语句的keyname，增加是否需要移动标识，增加是否插入初始化赋值语句的index标识 
                    2.获得callee函数的index,callee函数最后是要被替换的（相当于内联）
                """
                isover=False
                if len(inc_linenum)>0 and int(inc_linenum[0])>int(fun_lastnum):
                    isover=True
                    print("...............................")
                    print(c)
                    print(generator.visit(c))
                    pass
                start_line=line.split(":")[1]
                if isover and decflag:
                    keyname="over::"+str(fun_lastnum)+"::"+nextfun+"::append::"+blockname
                elif isover and decflag==False:
                    keyname="over::"+str(fun_lastnum)+"::"+nextfun+"::insert::"+blockname
                else:
                    keyname="noover::"+start_line+"::"+last_num+"::"+blockname
                tempast[keyname] = []
                tempast[keyname].append(c)
            else:
                recurfindline(fst,c,line,blockname,blocknamelist,varlist,tempast,inc_linenum,fun_lastnum,funname,nextfun)

def findline(fst,funname,startline,endline,blockname,blocknamelist,param_list,varlist,line_ast,inc_linenum,fun_lastnum,nextfun):
    """
    accoring line number,Extract a line of C source code,call recurfindline
    :param fst: translation unit of a c source file
    :param line: line number
    :return: null
    """
    slash=startline.rfind("/")
    start=startline[slash+1:-2]
    end=endline[slash+1:-2]
    scolon=start.find(":")
    startlinenum=start[scolon+1:]
    ecolon=end.find(":")
    endlinenum=end[ecolon+1:]
    filename=start[:scolon+1]
    linelist=[]
    for i in range(int(startlinenum),int(endlinenum)+1):
        temp=filename+str(i)
        if temp in linelist:
            pass
        else:
            linelist.append(temp)
        print(temp)
    for i in range(0, len(fst.ext)):
        st=fst.ext[i]

        if type(st) == c_ast.FuncDef and st.decl.name==funname:
            child=st.body
            for line in linelist:
                if len(inc_linenum)>0:
                    print("incnum")
                    print(inc_linenum[0])
                tempindex=line.index(":")
                templine=line[tempindex+1:]
                if len(inc_linenum)>0 and int(templine)<=int(inc_linenum[0]) and inc_linenum[1]==funname:
                    continue
                else:
                    tempast = {}
                    recurfindline(st,child,line,blockname,blocknamelist,varlist,tempast,inc_linenum,fun_lastnum,funname,nextfun)
                    line_ast.append(tempast)

            for va in varlist:
                flg = False
                finddecl(st.decl, va, param_list, flg)
                if flg == False:
                    finddecl(st.body, va, param_list, flg)
            break

def get_to_edges(source):
    """
    accoring to node's name, get all edges from node
    :param edges: a list of all edge
    :param source: name of a node
    :return: edge_list,a list of edge
    """
    edge_list=[]
    if source.startswith("BB") and source.endswith("start"):
        name = source[2:-6]
    elif source.startswith('BB') and source.endswith("end"):
        name = source[2:-4]
    else:
        # print(source)
        inde = source.index('BB')
        name = source[:inde]
    edff=fun_edges[name]

    for e in edff:
        src = e.get_source()

        if src == source:
            edge_list.append(e)
    return edge_list


def get_two_layer_node(source):
    if source.startswith("BB") and source.endswith("start"):
        name = source[2:-6]

    elif source.startswith('BB') and source.endswith("end"):
        name = source[2:-4]
    else:
        inde = source.index('BB')
        name = source[:inde]
    edff = fun_edges[name] #get all edges of this function
    srcflag = 0
    destflag = 0
    adjnode=[]
    for e in edff:
        src=e.get_source()
        if src.endswith("_start") or src.endswith("end"):
            continue
        dest=e.get_destination()
        if dest==source:
            adjnode.append(src)
            for ee in edff:
                nextsrc=ee.get_source()
                if nextsrc.endswith("_start") or nextsrc.endswith("_end"):
                    continue
                nextdest=ee.get_destination()
                if nextdest==src:
                    adjnode.append(nextsrc)
    return adjnode
loop_recur_node=[]


def get_lineinfo(no):
    pathline = []
    nnlabel = no.get("label")[2:-2]
    if nnlabel.endswith("_start") or nnlabel.endswith("_end"):
        pass
    labellist = nnlabel.split("\n")
    for l in labellist:
        if "/home/" in l and l not in pathline:
            pathline.append(l)
    return pathline


def printAllPathsUtil(gra,u, d, visited, path,tempstack,n,Apath):
    '''
    according to dfs find all path from u to d
    :param gra:
    :param u:
    :param d:
    :param visited:
    :param path:
    :return:
    '''
    # Mark the current node as visited and store in path
    lineinfo=get_lineinfo(u)
    fflags=False
    if len(lineinfo)>0:
        lastline=lineinfo[-1]
        index=lastline.rindex(":")
        line=lastline[index+1:-2]
        adjnodes=get_two_layer_node(u.get_name()) #get src's two layer adjnode

        for adj in adjnodes:
            adjnode=gra.get_node(adj)
            adjlineinfo=get_lineinfo(adjnode[0]) #adjlineinfo maybe empty
            if (len(adjlineinfo)==0):
                continue
            aindex=adjlineinfo[0].rindex(":")
            firstline=adjlineinfo[0][aindex+1:-2]
            if int(firstline)>int(line):
                fflags=True
                break

    if fflags and u.get_name() in loop_recur_node:
        visited[u.get_name()][0] = True

    elif fflags and u.get_name() not in loop_recur_node:
        loop_recur_node.append(u.get_name())
        pass
    else:
        visited[u.get_name()][0]=True
    n=n+1
    if n>maxrecurdepth:
        n=n-1
        return
    if u in path:
        pass
    else:
        path.append(u)

    if u.get_name() == d.get_name():

        temp=[]
        for i in path:
            temp.append(i)

        Apath.append(temp)
    else:
        # If current vertex is not destination
        # Recur for all the vertices adjacent to this vertex
        ede=get_to_edges(u.get_name())
        elen=len(ede)
        for i in ede:
            dest=i.get_destination()
            dest_node=gra.get_node(dest)

            if dest.endswith("_start"):
                tempstack.append(dest[:-5]+'end')
            if dest.endswith("_end") and dest in tempstack:
                tempstack.pop()
                # print('111111'+dest)
                path.pop()
                n=n-1
                return

            if visited[dest][0] == False:
                printAllPathsUtil(gra,dest_node[0], d, visited, path,tempstack,n,Apath)
                # Remove current vertex from path[] and mark it as unvisited
    plen=len(path)
    if plen>0:
        path.pop()
        n=n-1
    visited[u.get_name()][0] = False

def printAllPaths(filedot, nodes,edges,s, d,Apath):
    '''
    # Prints all paths from 's' to 'd,call printAllPathsUtil()
    :param filedot:
    :param s:
    :param d:
    :return:
    '''

    visited={}
    for n in nodes:
        visited[n.get_name()]=[]
        visited[n.get_name()].append(False)
    # Create an array to store paths
    path = []
    tempstack=[]
    n=0
    printAllPathsUtil(filedot,s, d, visited, path,tempstack,n,Apath)

def modifyid(st, funname,fun_global_list):
    for i in st:
        if (i==None):
            break
        elif type(i)==c_ast.Decl :
            oldname = i.name
            newname = "_"+funname+"_"+oldname+"_"
            if oldname in fun_global_list:
                pass
            else:
                i.name = newname
            if type(i.type)==c_ast.PtrDecl:
                if type(i.type.type)==c_ast.FuncDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname=newname
                    modifyid(i.type.type.args.params,funname,fun_global_list)
                elif type(i.type.type)==c_ast.PtrDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname=newname
                else:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.declname=newname
            elif type(i.type)==c_ast.ArrayDecl:
                if type(i.type.type)==c_ast.PtrDecl:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.type.declname=newname
                else:
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.type.type.declname=newname
            else:
                if oldname in fun_global_list:
                    pass
                else:
                    i.type.declname=newname
            if type(i.init)==c_ast.FuncCall:
                modifyid(i.init,funname,fun_global_list)
            elif type(i.init)==c_ast.ID:
                if type(i) == c_ast.FuncCall:
                    continue
                elif type(i) == c_ast.StructRef:
                    oldname = i.init.name
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
                    newname = "_" + funname + "_" + oldname + "_"
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.init.name = newname
                    continue
            elif type(i.init)==c_ast.StructRef:
                # print(i)
                tempnode=i.init
                if type(tempnode.name)==c_ast.StructRef:
                    modifyid(tempnode,funname,fun_global_list)
                    continue
                # print(generator.visit(i))
                oldname = i.init.name.name
                if oldname == i.init.name.name:
                    if oldname in fun_global_list:
                        pass
                    else:
                        newname = "_" + funname + "_" + oldname + "_"
                        i.init.name.name = newname
                elif oldname == st.field.name:
                    pass
                continue
            elif type(i.init)==c_ast.UnaryOp:
                # print(i)
                # print(generator.visit(i))
                if type(i.init.expr)==c_ast.Constant:
                    continue
                elif type(i.init.expr)==c_ast.StructRef:
                    modifyid(i.init.expr,funname,fun_global_list)
                    continue
                elif type(i.init.expr)==c_ast.ArrayRef:
                    modifyid(i.init.expr,funname,fun_global_list)
                    continue
                oldname = i.init.expr.name
                # print(oldname)
                if oldname in fun_global_list:
                    pass
                else:
                    newname = "_" + funname + "_" + oldname + "_"
                    i.init.expr.name=newname
                continue
            if type(i.init)==c_ast.Cast:
                modifyid(i.init,funname,fun_global_list)
            if type(i.init)==c_ast.ArrayRef:
                if type(i.init.name)==c_ast.StructRef:
                    modifyid(i.init.name,funname,fun_global_list)
                    continue
                oldname=i.init.name.name
                newname="_" + funname + "_" + oldname + "_"
                if oldname in fun_global_list:
                    pass
                else:
                    i.init.name.name=newname
                continue
            else:
                # print(i.init)
                # print(generator.visit(i.init))
                continue
        elif type(i)==c_ast.ID:
            # print(st)
            if type(st)==c_ast.FuncCall:
                # print(st)
                continue
            elif type(st)==c_ast.StructRef:
                oldname = i.name
                if oldname==st.name.name:
                    newname = "_" + funname + "_" + oldname + "_"
                    if oldname in fun_global_list:
                        pass
                    else:
                        i.name = newname
                elif oldname==st.field.name:
                    pass
                pass
            else:
                oldname = i.name
                newname = "_" + funname + "_" + oldname + "_"
                if oldname in fun_global_list:
                    pass
                else:
                    i.name=newname
                continue
        else:
            modifyid(i,funname,fun_global_list)


def storeFunllDecl(fun, funname):
    fun_decl_dic[funname]=[]
    if type(fun.decl.type)==c_ast.FuncDecl and fun.decl.type.args!=None:
        for i in fun.decl.type.args.params:
            fun_decl_dic[funname].append(i)



def modifylocalvarible(ast, funname,fun_global_list):
    for fun in ast.ext:
        if type(fun) == c_ast.FuncDef and fun.decl.name==funname:
            st=fun
            for s in st:
                modifyid(s,funname,fun_global_list)
            storeFunllDecl(fun,funname)


def getfundef( ):

    s = r'''
    void f(int a){

    }
    '''
    parser = c_parser.CParser()
    s_ast = parser.parse(s)
    return s_ast

def code_gen(path,line_ast,gen_funname):
    '''
    generate c code Corresponding to a path
    :param path:
    :return:
    '''
    param_list=[]
    """varlist store varible that not declation of a function"""
    varlist = []
    blocknamelist=[]

    lastele=path[-1]
    lastblockname=list(lastele.keys())[0]
    index=lastblockname.index("BB")
    last_funname=lastblockname[:index]
    lastline=lastele[lastblockname][-1]
    lineindex=lastline.index(":")
    last_linenum=int(lastline[lineindex+1:-2])

    for pp in path:
        ppname=list(pp.keys())[0]
        blocknamelist.append(ppname)

    fun_last_linenum={}
    inc_linenum=[]
    for p in path:

        """p in a dic element,each element have at least one statement or more."""
        pname=list(p.keys())[0]
        if pname.endswith("start") or pname.endswith("end"):
            tempast={}
            keyname="startend::"+pname
            tempast[keyname]=[]
            line_ast.append(tempast)
            continue
        print(pname+"11111")
        index=pname.index("BB")
        funname=pname[:index]

        if funname not in fun_last_linenum.keys():
            fun_last_linenum[funname]=[]
            if funname==last_funname:
                fun_last_linenum[funname].append(last_linenum)
            else:
                pre_block=p
                pre_blockname=list(pre_block.keys())[0]
                pre_block_index=path.index(p)
                for num in range(pre_block_index+1,len(path)):
                    cur_block=path[num]
                    cur_blockname=list(cur_block.keys())[0]
                    if cur_blockname.endswith("_start"):
                        cur_funname=cur_blockname[2:-6]
                        lineindex=pre_block[pre_blockname][-1].index(":")
                        lastnum=int(pre_block[pre_blockname][-1][lineindex+1:-2])
                        fun_last_linenum[funname].append(lastnum)
                        fun_last_linenum[funname].append(cur_funname)
                        break
                    else:
                        pre_block=cur_block
                        pre_blockname=list(pre_block.keys())[0]

        fun_lastnum=fun_last_linenum[funname][0]
        nextfun=""
        if funname!=last_funname:
            nextfun=fun_last_linenum[funname][1]

        print(funname)
        print(fun_lastnum)

        startline=p[pname][0]
        endline=p[pname][-1]
        rindex = startline.rfind(":")
        rslash=startline.rfind("/")
        filename = startline[rslash+1:rindex]

        pathname = startline[:rindex]
        fpath=startline[:rslash]

        # command = "gcc -E " + pathname + " -I /home/raoxue/Desktop/pycparser/utils/fake_libc_include >>fun"
        fake_include="../../utils/fake_libc_include"
        abs_fake_include=os.path.abspath(fake_include)
        command = "cd "+fpath+";gcc -E " + pathname + " -I../crypto -I.. -I../include -I"+abs_fake_include+" " \
                                         "-DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -m64 -DL_ENDIAN " \
                                         "-DTERMIO -DOPENSSL_IA32_SSE2 -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5 -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM" \
                                         "-DSHA256_ASM -DSHA512_ASM -DMD5_ASM -DAES_ASM -DVPAES_ASM -DBSAES_ASM -DWHIRLPOOL_ASM -DGHASH_ASM >>fun"
        print(fpath)
        print(pathname)
        # command = "cd " + fpath + ";gcc -E " + pathname + " -I../../../testcasesupport -I/home/raoxue/Desktop/pycparser/utils/fake_libc_include >>fun"

        if filename in dir_ast.keys():
            fast = dir_ast[filename]
            if funname in Ismodifyloclavarible:
                pass
            else:
                fun_global_list=global_dic[funname]
                modifylocalvarible(fast[0],funname,fun_global_list)
                Ismodifyloclavarible.append(funname)
            findline(fast[0],funname,startline,endline,pname,blocknamelist,param_list,varlist,line_ast,inc_linenum,fun_lastnum,nextfun)
        else:
            (status, output) = subprocess.getstatusoutput(command)
            if status == 0:
                ast = parse_file(fpath+'/fun',use_cpp=True)
                deal_global_variable(ast)
                fun_global_list=global_dic[funname]

                modifylocalvarible(ast,funname,fun_global_list)
                Ismodifyloclavarible.append(funname)

                dir_ast[filename] = []
                dir_ast[filename].append(ast)
                os.remove(fpath+'/fun')
                findline(ast, funname,startline,endline,pname,blocknamelist,param_list,varlist,line_ast,inc_linenum,fun_lastnum,nextfun)


    fundef=getfundef()
    fundef.ext[0].decl.name=gen_funname
    fundef.ext[0].decl.type.type.declname=gen_funname
    funparam=fundef.ext[0].decl.type.args.params
    funparam.pop()
    print(fundef)
    for p in param_list:
        if p.init!=None:
            vardecl=c_ast.Decl(quals='',name=p.name,type=p.type,storage='',funcspec='',init=None,bitsize=None)
            funparam.append(vardecl)
            continue
        funparam.append(p)

    funhead={}
    funhead['funhead']=[]
    funhead['funhead'].append(fundef)
    print(fundef)
    line_ast.append(funhead)



def findid(st,varlist):
    for i in st:
        if (i==None):
            break
        elif type(i)==c_ast.ID and type(st)!=c_ast.FuncCall:
            idname=i.name
            if idname in varlist:
                continue
            else:
                varlist.append(idname)
        else:
            findid(i,varlist)

def find_ID(st,l):
    for i in st:
        if (i==None):
            break
        elif type(i)==c_ast.ID :
            idname = i.name
            if type(st) == c_ast.StructRef:
                if st.field.name == idname:
                    continue
                else:
                    if i.name in globalv_list and i.name not in l:
                        l.append(i.name)
            if i.name in globalv_list and i.name not in l:
                l.append(i.name)
            find_ID(i,l)
        else:
            find_ID(i,l)

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


def get_assign():
    """ get a assignment node ast
    """
    s = r'''
  void f(int a,int b){
   a=b;
    }
  '''
    parser = c_parser.CParser()
    s_ast = parser.parse(s)
    s_assign = s_ast.ext[0].body.block_items[0]
    return s_assign

def findCompound(cur,suss,code,susskey):
    for i in cur:
        if i==None:
            break
        elif type(i)==c_ast.Compound:
            susslist=[]
            for s in suss:
                susslist.append(s)
            i.block_items=susslist
            suss.clear()
            break
        else:
            findCompound(i,suss,code,susskey)


def printpath(pa,srcnode,destnode,src_line,sink_line,outfile,gen_funname):
    pathline=[]
    for no in pa:
        name=no.get_name()
        print(name)
        path={}
        path[name]=[]
        nnlabel = no.get("label")[2:-2]
        if name.endswith("_start") or name.endswith("_end"):

            path[name].append("null")
            # print("null")
            pathline.append(path)
            continue

        labellist = nnlabel.split("\n")
        """
        去除重复的行
        """
        flag=False
        for l in labellist:
            if "/home/" in l and l not in path[name]:
                if l.startswith('BB'):
                    index = l.index('/home/')
                    l = l[index:]
                ind = l.index(":")
                if no == srcnode:
                    if int(l[ind + 1:-2]) < int(src_line):
                        continue
                    # print(l[ind+1:-2])
                if no == destnode:
                    if int(l[ind + 1:-2]) > int(sink_line):
                        break
                templinenum=int(l[ind + 1:-2])
                if flag==False:
                    incnum=templinenum
                    flag=True
                    path[name].append(l)
                else:
                    if templinenum<incnum:
                        continue
                    else:
                        path[name].append(l)
                        incnum=templinenum
                pathline.append(path)

    line_ast=[]
    # print("33333333")
    # for ii in pathline:
    #     keyname=list(ii.keys())[0]
    #     print(keyname)
    #     for ele in ii[keyname]:
    #         print(ele)
    code_gen(pathline,line_ast,gen_funname)
    for i in line_ast:#line_ast is a list whose element is a dict
        print(i)
        if len(list(i.keys()))==0:
            continue
        keyname=list(i.keys())[0]
        print(keyname)
        for e in i[keyname]:
            print(generator.visit(e))
    gen_final_code2(line_ast,outfile)

def isincludefuncall1(l,nextfunname,rdic):
    for c in l:
        print(c)
        if c==None:
            continue
        else:
            if type(c)==c_ast.FuncCall:
                Funname=c.name
                funname=generator.visit(Funname)
                print(funname)

                flags = False
                if type(funname) != type("a"):
                    continue
                elif type(Funname)==c_ast.StructRef:
                    continue
                elif funname ==nextfunname:
                    flags = True
                else:
                    continue

                if flags:
                    print(l)
                    if type(l)==c_ast.Compound:
                        print("fffdfdfafa")
                        ind=l.block_items.index(c)
                        parentnode=l.block_items
                        rdic.append(parentnode)
                        rdic.append(ind)
                    if c.args != None:
                        print("%%%%")
                        for id in c.args.exprs:
                            idname=generator.visit(id)
                            rdic.append(idname)
                    return
                else:
                    continue
            else:
                isincludefuncall1(c,nextfunname,rdic)


def gen_final_code2(line_ast,outfile):
    last_len=len(line_ast)
    """反向插入"""

    temp_ast=[]
    last_len_list=list(range(0,last_len))
    relast_len=list(reversed(last_len_list))
    for er in relast_len:
        statement=line_ast[er]
        keylist=list(statement.keys())
        if len(keylist)==0:
            continue
        else:
            keyname=keylist[0]
            if keyname=="funhead":
                funhead=statement[keyname][0]
                continue
            else:
                blockidlist=keylist[0].split("::")
                firsele=blockidlist[0]
                if firsele=="startend":
                    continue
                elif firsele=="noover":
                    if len(temp_ast)==0:
                        temp_ast.append(statement[keyname][0])
                    else:
                        temp_ast.insert(0,statement[keyname][0])
                else:
                    nextfunname=blockidlist[2]
                    print(nextfunname)  #callee function name
                    linenum=blockidlist[1]
                    insteadtype=blockidlist[3] #append or insert
                    print(statement[keyname][0])
                    rdic=[]
                    isincludefuncall1(statement[keyname][0],nextfunname,rdic) #只是为了判断如果有需要展开的函数调用的话，返回dic
                    # print(flags)
                    if len(rdic)>0:
                        """进行声明和赋值语句的插入，插在何处是一个问题"""

                        n=0

                        parentnode=rdic[0]
                        print(parentnode)
                        ind=rdic[1]
                        print(ind)
                        rlist=rdic[2:]


                        for decl in fun_decl_dic[nextfunname]:
                            if n==0:
                                parentnode[ind]=decl
                            elif insteadtype=="append":
                                parentnode.append(decl)
                            else:
                                parentnode.insert(ind,decl)
                            ind=ind+1
                            # print(decl)
                            lname=decl.name
                            assign=get_assign()
                            assign.lvalue.name = lname
                            assign.rvalue.name= rlist[n]
                            if insteadtype=="append":
                                parentnode.append(assign)
                            else:
                                parentnode.insert(ind,assign)
                            ind=ind+1
                            n=n+1
                        if insteadtype=="append":
                            for tele in temp_ast:
                                parentnode.append(tele)
                            temp_ast.clear()
                            temp_ast.append(statement[keyname][0])
                        else:
                            for tele in temp_ast:
                                parentnode.insert(ind,tele)
                                ind=ind+1
                            temp_ast.clear()
                            temp_ast.append(statement[keyname][0])



                    pass
            print(statement)
    funhead.ext[0].body.block_items = []
    for ele in temp_ast:
        funhead.ext[0].body.block_items.append(ele)
    print(funhead)
    print(generator.visit(funhead))
    c_file=open(outfile,"w")
    c_file.write(generator.visit(funhead))
    c_file.close()


def get_funname_and_funedgs(nodes,edges):
    for n in nodes:
        nlabel=n.get("label")[2:-2]
        if nlabel.endswith("start"):
            Filename.append(nlabel[:-6])
    for e in edges:
        src=e.get_source()
        if src.startswith("BB") and src.endswith("start"):
            name=src[2:-6]

        elif src.startswith('BB') and src.endswith("end"):
            name=src[2:-4]
        else:
            inde=src.index('BB')
            name=src[:inde]
        if name not in fun_edges.keys():
            fun_edges[name] = []
            fun_edges[name].append(e)
        else:
            fun_edges[name].append(e)

def getfunnmae(ele):
    elename=ele.get_name()
    if elename.endswith("_start"):
        funname=elename[2:-6]
    elif elename.endswith("_end"):
        funname=elename[2:-4]
    else:
        inde=elename.index("BB")
        funname=elename[:inde]
    return funname

def getlinenum(ele):
    relabel_list = ele.get("label")[2:-2]
    relabellist_list=relabel_list.split("\n")
    relist1_linenum=0
    for l in relabellist_list:
        if "/home/" in l :
            if l.startswith('BB'):
                index = l.index('/home/')
                l1 = l[index:]
                ind = l1.index(":")
                relist1_linenum=l1[ind + 1:-2]
                break
            else:
                ind=l.index(":")
                relist1_linenum=l[ind + 1:-2]
                break
    return relist1_linenum

def sort_dedup(list2):
    ret_list=[]
    funflag=False
    templist=[]
    sort_templist=[]
    firele=list2[0]
    funname=getfunnmae(firele)
    BBname=[]
    for ele in list2:
        funn=getfunnmae(ele)
        bname=ele.get_name()
        if funn==funname:
            if bname in BBname:
                continue
                # print("uuuuuuuuuuuuuuuu")
                pass
            else:
                BBname.append(bname)
                templist.append(ele)
                continue
        else:
            funname=funn
            """
            sort templist
            """
            for temp_ele in templist:
                tname=temp_ele.get_name()
                temp_linenum=getlinenum(temp_ele)
                if temp_ele==templist[0]:
                    # tname=temp_ele.get_name()
                    if tname.endswith("_start"):
                        ret_list.append(temp_ele)
                    else:
                        sort_templist.append(temp_ele)
                    continue
                elif temp_ele==templist[-1] and tname.endswith("_end"):
                    sort_templist.append(temp_ele)
                elif temp_linenum==0:
                    continue
                else:
                    if len(sort_templist)==0:
                        sort_templist.append(temp_ele)
                    else:
                        ret_temp=sort_templist[-1]
                        # ret_tempname=ret_temp.get_name()
                        # temp_linenum=getlinenum(temp_ele)
                        ret_linenmu=getlinenum(ret_temp)
                        if temp_linenum>ret_linenmu:
                            sort_templist.append(temp_ele)
                        elif temp_linenum==ret_linenmu:
                            sort_templist.append(temp_ele)
                            continue
                        else:
                            for rev in sort_templist[::-1]:
                                rev_linenum=getlinenum(rev)
                                if rev==sort_templist[0] and rev_linenum>temp_linenum:
                                    sort_templist.insert(0,temp_ele)
                                    break

                                elif rev_linenum<temp_linenum:
                                    rev_ind=sort_templist.index(rev)
                                    sort_templist.insert(rev_ind+1,temp_ele)
                                    break
                                elif rev_linenum==temp_linenum:
                                    rev_ind=sort_templist.index(rev)
                                    sort_templist.insert(rev_ind+1,temp_ele)
                                    break
                                elif rev_linenum>temp_linenum:
                                    continue

            for i in sort_templist:
                ret_list.append(i)
            sort_templist.clear()
            templist.clear()
            templist.append(ele)

    for temp_ele in templist:
        tname=temp_ele.get_name()
        temp_linenum=getlinenum(temp_ele)
        if temp_ele==templist[0]:
            if tname.endswith("_start"):
                ret_list.append(temp_ele)
            else:
                sort_templist.append(temp_ele)
                continue
        elif temp_ele==templist[-1] and tname.endswith("_end"):
            sort_templist.append(temp_ele)
        elif temp_linenum==0:
            continue
        else:
            if len(sort_templist)==0:
                sort_templist.append(temp_ele)
            else:
                ret_temp=sort_templist[-1]
                ret_linenmu=getlinenum(ret_temp)
                if temp_linenum>ret_linenmu:
                    sort_templist.append(temp_ele)
                elif temp_linenum==ret_linenmu:
                    sort_templist.append(temp_ele)
                else:
                    for rev in sort_templist[::-1]:
                        rev_linenum=getlinenum(rev)
                        if rev==sort_templist[0] and rev_linenum>temp_linenum:
                            sort_templist.insert(0,temp_ele)
                            break
                        elif rev_linenum<temp_linenum:
                            rev_ind=sort_templist.index(rev)
                            sort_templist.insert(rev_ind+1,temp_ele)
                            break
                        elif rev_linenum==temp_linenum:
                            rev_ind=sort_templist.index(rev)
                            sort_templist.insert(rev_ind+1,temp_ele)
                            break
                        elif rev_linenum>temp_linenum:
                            continue
    for i in sort_templist:
        ret_list.append(i)

    sort_templist.clear()
    templist.clear()

    return ret_list


def merge_seq_list(list1,list2):
    """
    :param list1: a path whose element is Node
    :param list2: a path whose element is Node
    :return: None
    """
    pt1=0
    bbname_list1=[]
    for l in list1:
        bbname_list1.append(l.get_name())
    lista_len=len(list1)
    for e in list2:
        ele1=list1[pt1]
        ename=e.get_name()

        if e==ele1:
            pt1=pt1+1
            continue
        elif pt1==lista_len-1:
            list1.append(e)
        elif ename in bbname_list1:
            for el in list1:
                elname=el.get_name()
                if ename==elname:
                    pt1=list1.index(el)
                    break
            continue

        list1_linenum=getlinenum(ele1)
        list2_linenum=getlinenum(e)

        if list1_linenum>list2_linenum:
            list1.insert(pt1,e)
            pt1=pt1+1
        elif list1_linenum<list2_linenum:
            if ename in bbname_list1:
                for el in list1:
                    elname=el.get_name()
                    if ename==elname:
                        pt1=list1.index(el)
                        break
            else:
                len1=len(list1)
                for i in range(pt1,len1):
                    reele1=list1[i]
                    relabel_list = reele1.get("label")[2:-2]
                    relabellist_list=relabel_list.split("\n")
                    for l in relabellist_list:
                        if "/home/" in l :
                            if l.startswith('BB'):
                                index = l.index('/home/')
                                l = l[index:]
                                ind = l.index(":")

                                relist1_linenum=l[ind + 1:-2]
                                break
                    if relist1_linenum>list2_linenum:
                        pt1=list1.index(reele1)
                        list1.insert(pt1,e)
                        pt1=pt1+1
                        break
    # print("after merge")
    # for e in list1:
    #     print(e.get_name())

def merge_two_list(list1,list2):
    templist=[]
    lenlist1=len(list1)
    lenlist2=len(list2)
    pt1=0
    pt2=0

    while(1):
        e1=list1[pt1]
        e2=list2[pt2]
        e1line=getlinenum(e1)
        e2line=getlinenum(e2)
        # print("333333333333333")
        # print(e1.get_name())
        # print(e2.get_name())
        # print(e1line)
        # print(e2line)
        if e1.get_name()==e2.get_name():
            templist.append(e1)
            # print("############")
            pt1=pt1+1
            pt2=pt2+1
        elif int(e1line)==int(e2line) or int(e1line)<int(e2line):
            templist.append(e1)
            pt1=pt1+1
            # print("$$$$$$$$$$$$$$")
        else:
            templist.append(e2)
            pt2=pt2+1
            # print("%%%%%%%%%%%")

        if pt1==lenlist1 and pt2!=lenlist2:
            for i in range(pt2,lenlist2):
                tempe=list2[i]
                templist.append(tempe)
            break
        elif pt1==lenlist1 and pt2==lenlist2:
            break
        elif pt1<lenlist1 and pt2==lenlist2:
            for i in range(pt1,lenlist1):
                tempe=list1[i]
                templist.append(tempe)
            break
    return  templist

def main_entry(src_fun,src_line,sink_fun,sink_line,filedot,nodes,edges, outfile,gen_funname):
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
            srcnode = n
            srcflag = True
        if sink in nlabel:
            destnode = n
            sinkflag = True
        if srcflag and sinkflag:
            break

    # for i in Filename:
    #     print(i)
    print("find srcnode and sinknode ending......")
    print(srcnode)
    print(destnode)
    print("classify all edges into each function start.....")

    print("classify all edges into each function end.....")

    print("get all path from src to sink start.....")
    Apath = []
    printAllPaths(filedot, nodes, edges, srcnode, destnode, Apath)
    print("get all path from src to sink end.....")

    Fpath = Apath
    # str = src_fun + ":" + src_line + "   " + sink_fun + ":" + sink_line
    # if (len(Fpath) == 0):
    #     no_path_outputfile = open("no_path.txt", 'a')
    #
    #     no_path_outputfile.write(str + "\n")
    #     no_path_outputfile.close()
    # else:
    #     have_path_outfile = open("have_path.txt", "a")
    #     have_path_outfile.write(str + "\n")
    #     have_path_outfile.close()
    # for pa in Fpath:
    #     print("######")
    #     for p in pa:
    #         print(p.get_name())
    #         # print(p)

    classify_pathlist = {}
    for p in Fpath:
        key = get_classifypath_key(p)
        if key in classify_pathlist.keys():
            classify_pathlist[key].append(p)
        else:
            classify_pathlist[key] = [p]
    key_inc = 1
    print("######")
    for key in classify_pathlist.keys():
        class_fpath = classify_pathlist[key]
        # print(class_fpath)
        for pa in class_fpath:
            print("######")
            for p in pa:
                print(p.get_name())
                # print(p)

        print(len(class_fpath))
        if len(class_fpath) > 0:
            list1 = class_fpath[0]
            sortlist1 = sort_dedup(list1)
            flen = len(class_fpath)
            # print(flen)
            flist = sortlist1
            for pth in range(1, flen):
                print("index.....")
                # print(pth)
                list2 = class_fpath[pth]
                sortlist2 = sort_dedup(list2)
                templist = merge_two_list(flist, sortlist2)
                flist = templist

            print("\n\n\n#########\n")
            print("print finally path\n")
            for p in flist:
                print(p.get_name())

        # printpath(sortlist1,srcnode,destnode,src_line,sink_line,outfile,gen_funname)

if __name__ == '__main__':
    pass










