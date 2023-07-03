import argparse
import os
import sys
from xml.dom.minidom import parse

import pydot

from cal_path import get_funname_and_funedgs, main_entry

sys.path.append("../")

dot_file = "../../meta_data/_icfg.dot"
(filedot,) = pydot.graph_from_dot_file(dot_file)
dir_src_sink_xml="../../meta_data"

nodes = filedot.get_nodes()
edges = filedot.get_edges()
get_funname_and_funedgs(nodes, edges)
parser = argparse.ArgumentParser()

"""它的值为true或者false，true则同时生成xml，false则只生成用户代码"""

mainflag=True

if len(sys.argv)==1 or mainflag:
    """生成所有的source和sink组合的diamante"""
    sorce_info = []
    sink_info = []
    xmlabspath=os.path.abspath(dir_src_sink_xml)
    sourcexml=xmlabspath+"/"+"source.xml"
    sinkxml=xmlabspath+"/"+"sink.xml"

    doc = parse( sinkxml)
    root = doc.documentElement
    sinkloc = root.getElementsByTagName("sink")
    for sink in sinkloc:
        c_filename = sink.getAttribute("filename")
        sinkline = sink.getAttribute("linenum")
        str1 = c_filename + "#" + sinkline + "#"
        sink_info.append(str1)

    doc = parse(sourcexml)
    root = doc.documentElement
    srcloc = root.getElementsByTagName("src")
    for src in srcloc:
        c_filename = src.getAttribute("filename")
        srcline = src.getAttribute("linenum")
        str1 = c_filename + "#" + srcline + "#"
        sorce_info.append(str1)

    for source in sorce_info:
        for sink in sink_info:
            src_in=source.split("#")
            srcfile=src_in[0]
            srcline=src_in[1]
            sink_in=sink.split("#")
            sinkfile=sink_in[0]
            sinkline=sink_in[1]
            # print(srcfile)
            # print(srcline)
            # print(sinkfile)
            # print(sinkline)iffalse
            dot_file="../../meta_data/_icfg.dot"
            outdir = "../../meta_data/code_gened"
            out_cfile = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline + ".c"
            gen_funname = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline
            outfile = os.path.abspath(outdir) + "/"
            main_entry(srcfile, srcline, sinkfile, sinkline, filedot, nodes, edges, outfile, gen_funname)
else:
    """生成一个source对应一个sink的代码"""
    parser.add_argument("source")
    parser.add_argument("src_line")
    parser.add_argument("sink")
    parser.add_argument("sink_line")
    args=parser.parse_args()
    srcfile = args.source
    srcline = args.src_line
    sinkfile = args.sink
    sinkline = args.sink_line
    outdir = "../../meta_data/code_gened"
    out_cfile = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline + ".c"
    gen_funname = srcfile[:-2] + srcline + sinkfile[:-2] + sinkline
    outfile = os.path.abspath(outdir) + "/"
    dot_file = "../../meta_data/_icfg.dot"
    main_entry(srcfile, srcline, sinkfile, sinkline, filedot, nodes, edges, outfile, gen_funname)
