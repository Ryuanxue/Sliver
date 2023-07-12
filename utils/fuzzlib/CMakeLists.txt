cmake_minimum_required (VERSION 2.6)
project (fuzzlib)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)



# Malloc
add_library(pro SHARED src/pro.c)


# Signals
add_library(wchar_t_env_fuzz SHARED src/wchar_t_env_fuzz.c)
target_link_libraries(wchar_t_env_fuzz dl)






