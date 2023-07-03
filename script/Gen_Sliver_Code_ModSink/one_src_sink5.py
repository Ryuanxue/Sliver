import os
import sys
import pydot

from con_gen.lib_code_gen import global_funname

sys.path.append("../")
from con_gen.cal_path import get_funname_and_funedgs, main_entry
from xml.dom.minidom import parse

dot_file = "../../meta_data/_icfg.dot"
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

srcfile = "d1_both.c"
srcline = "578"
# sink_in=
sinkfile = "s3_enc.c"
sinkline = "591"
outdir = "../../meta_data/code_gened"
out_cfile = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline + ".c"
gen_funname = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline
outfile = os.path.abspath(outdir) + "/"
dot_file = "../../meta_data/_icfg.dot"
main_entry(srcfile, srcline, sinkfile, sinkline, filedot, nodes, edges, outfile, gen_funname)
