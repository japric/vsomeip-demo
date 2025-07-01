cmake_minimum_required (VERSION 3.13)
project (vsomeipdemo)

file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_subdirectory(vsomeip)
add_subdirectory(capicxx-core-runtime)
add_subdirectory(capicxx-someip-runtime)


add_subdirectory(capicxx-core-tools/CommonAPI-Examples/E01HelloWorld)
add_subdirectory(capicxx-core-tools/CommonAPI-Examples/E03Methods)