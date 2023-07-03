#-----------------------------------------------------------------
# pycparser: dump_ast.py
#
# Basic example of parsing a file and dumping its parsed AST.
#
# Eli Bendersky [https://eli.thegreenplace.net/]
# License: BSD
#-----------------------------------------------------------------
from __future__ import print_function
import argparse
import sys
import os

# This is not required if you've installed pycparser into
# your site-packages/ with setup.py
sys.path.extend(['.', '..'])
sys.path.append(os.path.abspath('..'))

from pycparser import parse_file, c_generator, c_ast
generator = c_generator.CGenerator()


#递归访问ast中的节点
def add_comment(astnode):
    if isinstance(astnode, c_ast.Decl) or isinstance(astnode, c_ast.Assignment) or isinstance(astnode,c_ast.Break) or isinstance(astnode, c_ast.Case) or \
        isinstance(astnode,c_ast.Continue) or isinstance(astnode, c_ast.Default) or isinstance(astnode, c_ast.DoWhile) or isinstance(astnode, c_ast.For) \
        or isinstance(astnode, c_ast.Goto) or isinstance(astnode, c_ast.If) or isinstance(astnode, c_ast.Switch) or isinstance(astnode, c_ast.While) or \
        isinstance(astnode, c_ast.FuncCall) or isinstance(astnode, c_ast.DeclList) or isinstance(astnode, c_ast.EmptyStatement):
        astnode.comment = "this is a comment"
    if isinstance(astnode,c_ast.If) or isinstance(astnode, c_ast.Compound) or isinstance(astnode,c_ast.While) or isinstance(astnode,c_ast.For) or isinstance(astnode,c_ast.DoWhile) \
        or isinstance(astnode, c_ast.Switch) or isinstance(astnode, c_ast.Label) or isinstance(astnode, c_ast.Case) or isinstance(astnode, c_ast.Default) \
            or isinstance(astnode, c_ast.FileAST) or isinstance(astnode, c_ast.FuncDef):
        for child in astnode:
            add_comment(child)
    

if __name__ == "__main__":
    argparser = argparse.ArgumentParser('Dump AST')
    argparser.add_argument('filename',
                           default='c_files/basic.c',
                           nargs='?',
                           help='name of file to parse')
    argparser.add_argument('--coord', help='show coordinates in the dump',
                           action='store_true')
    args = argparser.parse_args()

    ast = parse_file(args.filename, use_cpp=False)
    #遍历ast中的几点，如果是Decl类型的节点，就添加一个comment属性
    add_comment(ast)



   
    print(generator.visit(ast))
    # ast.show(showcoord=args.coord)
