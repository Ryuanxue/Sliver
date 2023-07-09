# Sliver: A Scalable Slicing-based Verification for Information Flow Security

## Dependency

* Sliver has been tested on Ubuntu 20.04.

* Install llvm-12
```
sudo apt-get install llvm-12 llvm-12-dev clang-12
```
* Install pydot
```
pip3 install pydot
```
* Install the modified pycparser
```
cd Sliver/script/pycparser-release_v2.20
pip install -e . 
```

* Environment variables settings
  * Edit `~/.bashrc` and add:
```
export PATH=$PATH:/usr/lib/llvm-12/bin
export LD_LIBRARY=/usr/lib/llvm-12/lib
export LD_LIBRARY_PATH=/path/to/Sliver/lib:$LD_LIBRARY_PATH
```

## Usage

### Slice Generation

#### Preprocessing.
```
python3 pre_process.py [path/to/project]
```
For example,
```
python3 pre_process.py examples/000_062_516
```
#### Generating slices.
```
./gen_slice_run [pro-name] [src_cfile] [src_line] [sink_cfile] [sink_line] [depth] [srcfun] [src-arg-id] [sinkfun] [sink-arg-id]
```
- [pro-name]: Directory of the test case.
- [src_cfile]: The C code file's subpath containing data source.
- [src_line]: Line number of the data source in the code file.
- [sink_cfile]: The C code file's subpath containing data sink.
- [sink_line]: Line number of the data sink in the code file.
- [depth]: Depth of the DFS algorithm used for searching the paths from source to sink.
- [srcfun]: Function name of the data source.
- [src-arg-id]:
  - 0: the return value is sensitive data
  - 1: the first argument of the data source function call is sensitive data
  - 2: the second argument of the data source function call is sensitive data, etc.
- [sinkfun]: Function name of the data sink.
- [sink-arg-id]: Similar to `src-arg-id`.
  
- Note: Sliver has a built-in identification to the sink variables on specific code location. Thus, in many cases, the users do not have to specify `sinkfun` or `sink-arg-id`.

Example:
```
./gen_slice_run 000_062_516 CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c 84 CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01.c 113 50 recv 2
```

Example 2:
```
./gen_slice_run moti_exp motivating_ex1.c 27 motivating_ex1.c 18 50 op 2
```

### Security Level setting

手动修改workspace/pro-name/sec_file/*.xml,将敏感变量的安全级别修改为‘H’
如果source的类型是基础类型且不为常量，而不是自定义类型中的某个字段，则可以用脚本mod_secl_level.py自动修改pro_name/sec_file之下的安全级文件
```
python3 mod_sec_level.py [pro-name]
```
Example

```
python3 mod_sec_level.py 000_062_516
```

 
### Adaptive Self-Composition

```
python3 gen_self_com.py [pro-name]
```
- [pro-name]: Directory of the test case.
Example

```
python3 gen_self_com.py 000_062_516
```

### Verification


```
cd workspace/[pro-name]/self_com; cbmc [self_com_cfile] --function [self_com_fun] -I../code_gened -I../source_code ../code_gened/[slice_cfile] ../source_code/*.c --no-built-in-assertions -slice-formula --drop-unused-functions --unwind [num] --trace
```
- [pro-name]: Directory of the test case.
- [self_com_cfile]: The self-composition C file corresponding to the 'slice' C file.
- [self_com_fun]: The funcion name of self-composition.
- [slice_cfile]: One slice generated from a pair of source-sink.
- [num]: The number of loop unrolling, adjustable by oneself, with a value of an integer.

Example:
```
cbmc CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_0184CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01113_1_self_com.c --function CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_0184CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01113_1_self_com -I../code_gened -I../source_code ../code_gened/CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_0184CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_01113_1.c ../source_code/*.c --no-built-in-assertions -slice-formula --drop-unused-functions --unwind 11 --trace
```
- Note: If the C code to be verified contains a for loop with a fixed upper limit of n, it needs to be unrolled up to n+1 iterations. Failure to do so will result in no generation of VCCs (verification conditions), leading to a misleading 'Verification successful' outcome. The number of loop unrollings can be adjusted using the --unwind or --unwindset options.

## Batch-job test

- Preprocessing， generating slices， modifying security level file and self-composition for all the examples in paths `example/000_*`
```
python3 test_all_groundtruth_testcase.py
```


## Directory Structure

* lib
  * Shared libraries used by Sliver.
* src
  * LLVM-related source code of Sliver. (*to release more.*)
* script
  * Python scripts and shell scripts of Sliver.
* regression
  * regression tests.

## Contributors

* Xue Rao (xrao AT stu DOT xidian DOT edu DOT cn)
* Cong Sun (suncong AT xidian DOT edu DOT cn)

