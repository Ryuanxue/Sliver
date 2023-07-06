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
export PATH="$PATH:/usr/lib/llvm-12/bin"
export LD_LIBRARY=/usr/lib/llvm-12/lib
export LD_LIBRARY_PATH="/path/to/Sliver/lib:$LD_LIBRARY_PATH"
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

 
### Adaptive Self-Composition

(*to be released.*)

## Batch-job test

- Preprocessing and generating slices for all the examples in paths `example/000_*`
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

