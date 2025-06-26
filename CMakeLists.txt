cmake_minimum_required (VERSION 3.13)
project (vsomeipdemo)

add_subdirectory(vsomeip)
add_subdirectory(capicxx-core-runtime)
add_subdirectory(capicxx-someip-runtime)


add_subdirectory(capicxx-core-tools/CommonAPI-Examples/E01HelloWorld)