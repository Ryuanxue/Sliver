# Sliver
子模块
1. lib 存放编译好的共享库
2. src 基于llvm的pass源代码
3. script python脚本和shell脚本
4. regression 回归测试（暂时不知道怎么编写）


功能1：生成slice
预处理脚本： 解耦源代码， 删除static 和 const
****生成slice的脚本：
参数： project name, 