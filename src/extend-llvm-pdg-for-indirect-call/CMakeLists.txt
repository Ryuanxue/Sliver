
cmake_minimum_required(VERSION 3.4.3)
project(indcall)
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LT_LLVM_INSTALL_DIR}")

message("LLVM STATUS:
  Definitions ${LLVM_DEFINITIONS}
  Includes    ${LLVM_INCLUDE_DIRS}
  Libraries   ${LLVM_LIBRARY_DIRS}
  Targets     ${LLVM_TARGETS_TO_BUILD}"
)

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Use the same C++ standard as LLVM does
set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# Build type
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug CACHE
      STRING "Build type (default Debug):" FORCE)
endif()

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

# Compiler flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall\
    -fdiagnostics-color=always -Wno-everything")



#add_subdirectory(pdg)#引入子目录配置文件cmakelist
include_directories(pdg/SVF/include)#配置头文件的搜索路径
include_directories(pdg/include)#配置头文件的搜索路径
#include_directories()添加头文件
include_directories("include")
#include_directories("src")

file(GLOB SOURCES "src/*.cpp")
file(GLOB HEADERS "*include/.hh")



link_directories(pdg)


add_library(indcall MODULE
    ${HEADERS}
    ${SOURCES})

target_link_libraries(indcall PUBLIC "${CMAKE_SOURCE_DIR}/pdg/build/libpdg.so")
install(TARGETS indcall LIBRARY DESTINATION lib)
