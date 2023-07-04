# Sliver
子模块
1. lib 存放编译好的共享库
2. src 基于llvm的pass源代码
3. script python脚本和shell脚本
4. regression 回归测试（暂时不知道怎么编写）


## 需求
1.安装llvm-12
下载 sudo apt-get install llvm-12 llvm-12-dev clang-12
### 配置环境变量
export PATH=$PATH:/usr/lib/llvm-12/bin

export LD_LIBRARY=/usr/lib/llvm-12/lib

2. 安装pydot

pip3 install pydot

3.安装pycparser

cd Sliver/script/pycparser-release_v2.20

pip install -e .  （安装开发版本）


设置环境变量
export LD_LIBRARY_PATH=/path/to/Sliver/lib:$LD_LIBRARY_PATH


## 功能1：生成slice
### 预处理脚本： 解耦源代码， 删除static 和 const
运行 python3 pre_process.py path/to/project (eg. python3 pre_process.py examples/000_062_516)
### 生成slice
**命令：**./gen_slice_run pro-name src_cfile src_line sink_cfile sink_line depth srcfun arg-num(0:表示返回值，1：表示第一个参数，2：表示第二个参数，以此类推)

**例子1：000_062_516**
 ./gen_slice_run 000_062_516 CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c 84 CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c 113 50 recv 2

**例子2：moti_exp**
 ./gen_slice_run moti_exp motivating_ex1.c 27 motivating_ex1.c 18 50 op 2

**一次性对example/下的所有000_*的testcase进行预处理和生成slice**
python3 test_all_groundtruth_testcase.py


