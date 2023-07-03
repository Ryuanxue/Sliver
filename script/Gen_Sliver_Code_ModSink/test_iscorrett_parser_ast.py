# -*-coding:utf-8-*-
from pycparser import parse_file

if __name__ == '__main__':
    abspath="/home/raoxue/Desktop/MemVerif/workspace_fuzz/000_080_000/code_gened"
    tempast = parse_file(abspath + '/fun', use_cpp=True)
    print(tempast)