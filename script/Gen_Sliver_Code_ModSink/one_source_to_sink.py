import datetime
import os
import sys
import pydot



sys.path.append("../")

from xml.dom.minidom import parse
from cal_path import get_funname_and_funedgs, main_entry, global_funname

time1=datetime.datetime.now()
print("start load icfg")
print(time1)
dot_file = sys.argv[5]+"_icfg.dot"
(filedot,) = pydot.graph_from_dot_file(dot_file)
print("end load icfg..")
time1=datetime.datetime.now()
print(time1)

nodes = filedot.get_nodes()
edges = filedot.get_edges()
get_funname_and_funedgs(nodes, edges)
print("classfily edgeds end...")
time1=datetime.datetime.now()
print(time1)

funxml = sys.argv[6]+"/_funname_.xml"
fundoc = parse(funxml)
froot = fundoc.documentElement
funele = froot.getElementsByTagName("fun")
for f in funele:
    funname = f.getAttribute("name")
    global_funname.append(funname)

srcfile = sys.argv[1]
srcline = sys.argv[2]
# sink_in=
sinkfile = sys.argv[3]
sinkline = sys.argv[4]
outdir = sys.argv[6]+"/code_gened"
out_cfile = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline + ".c"
gen_funname = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline
outfile = os.path.abspath(outdir) + "/"
# dot_file = "../../meta_data/_icfg.dot"
main_entry(srcfile, srcline, sinkfile, sinkline, filedot, nodes, edges, outfile, gen_funname)
