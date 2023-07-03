import os
import sys
import pydot

from cal_path import get_funname_and_funedgs, global_funname, main_entry

sys.path.append("../")
from xml.dom.minidom import parse

# dot_file = "/home/raoxue/Desktop/MemVerif/workspace/000_000_2/000_000_2_icfg.dot"
dot_file="/home/raoxue/Desktop/MemVerif/workspace/000_062_521/000_062_521_icfg.dot"
# dot_file="/home/raoxue/Desktop/MemVerif/workspace/000_000_recur/000_000_recur_icfg.dot"
(filedot,) = pydot.graph_from_dot_file(dot_file)

nodes = filedot.get_nodes()
edges = filedot.get_edges()
get_funname_and_funedgs(nodes, edges)

funxml = "../../meta_data/_funname_.xml"
fundoc = parse(funxml)
froot = fundoc.documentElement
funele = froot.getElementsByTagName("fun")
for f in funele:
    funname = f.getAttribute("name")
    global_funname.append(funname)

srcfile = "path_key_demo2.c"
srcline = "19"
# sink_in=
sinkfile = "path_key_demo2.c"
sinkline = "7"
outdir = "../../meta_data/code_gened"
out_cfile = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline + ".c"
gen_funname = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline
outfile = os.path.abspath(outdir) + "/"
# dot_file = "../../meta_data/_icfg.dot"
main_entry(srcfile, srcline, sinkfile, sinkline, filedot, nodes, edges, outfile, gen_funname)
