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
* Install cbmc-5.62
  
To download the corresponding *deb package for CBMC 5.62, visit https://github.com/diffblue/cbmc/releases?page=4. Then, use the following command to install:
```
sudo dpkg -i ubuntu-20.04-cbmc-5.62.0-Linux.deb
```
* Install afl-2.57
```
git clone https://github.com/google/AFL.git
cd path/to/AFL
make
sudo make install
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

```
python3 set_sec_level.py [pro-name]
```
Example

```
python3 set_sec_level.py 000_062_516
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
cd workspace/[pro-name]/self_com
cbmc [self_com_cfile] --function [self_com_fun] -I../code_gened -I../source_code ../code_gened/[slice_cfile] ../source_code/*.c --no-built-in-assertions -slice-formula --drop-unused-functions --unwind [num] --trace
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
- Note: If the C code to be verified contains a for-loop with a fixed upper limit of n, it needs to be unwinded up to n+1 iterations. Failing to set a proper loop unwinding option will fail the generation of VCCs (verification conditions), leading to a misleading 'Verification successful' result. The number of loop unwinding can be adjusted using the --unwind or --unwindset options.


### Consistency Testing

- Enabling `afl-fuzz` by configuring `core_pattern`:
```
sudo su
echo core >/proc/sys/kernel/core_pattern
```
- Do not close this terminal, and run the consistency test scripts in another terminal.

Examples 1: moti_exp
```
python3 pre_process_fuzz.py examples/moti_exp
python3 moti_exp_fuzzing.py
```
Examples 2: 000_062_516
```
python3 pre_process_fuzz.py examples/000_062_516
python3 auto_groundtruth_fuzzing_test.py 000_062_516
```

- You can navigate to each subdirectory under the directory "workspace_fuzz/[pro-name]/work_fuzz" to view the consistency test results corresponding to a source-sink pair.In 'coveraga_rate.txt', the content represents coverage rate, while in 'consistence.txt', the result can be either 'true' or 'false'. If it's true, it indicates that the consistency test was successful, meaning that the semantics of the slice are consistent with the corresponding portion of the original program. If it's false, it means the opposite. Slices with a true result can be passed to cbmc for verification.

## Batch-job test

- Preprocessin, generating slices, setting security levels, self-composition, and verification for all the examples in paths `example/000_*`
```
python3 test_all_groundtruth_testcase.py
```
- Consistency testing:
```
python3 auto_groundtruth_fuzzing_test.py
```


## Directory Structure

* lib
  * Shared libraries used by Sliver.
* src
  * LLVM-related source code of Sliver. (*to release more.*)
* script
  * Python scripts and shell scripts of Sliver.
* examples
  * Motivating example and test cases.
* utils
  * Some auxiliary tools used for generating slices and performing consistency tests.

## Contributors

* Xue Rao (xrao AT stu DOT xidian DOT edu DOT cn)
* Cong Sun (suncong AT xidian DOT edu DOT cn)

