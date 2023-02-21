cmake_minimum_required(VERSION 3.20.0)
project(PropagatedProperties CXX)

add_library(source1 empty.cpp)
set_property(TARGET source1 PROPERTY INTERFACE_LIB_VERSION 4)

get_target_property(var source1 LIB_VERSION)
message("source1 LIB_VERSION: ${var}")
get_target_property(var source1 INTERFACE_LIB_VERSION)
message("source1 INTERFACE_LIB_VERSION: ${var}")
set_property(TARGET source1 APPEND PROPERTY
    COMPATIBLE_INTERFACE_STRING LIB_VERSION
)
get_target_property(var source1 COMPATIBLE_INTERFACE_STRING)
message("source1 COMPATIBLE_INTERFACE_STRING: ${var}")

add_library(source2 empty.cpp)
set_property(TARGET source2 PROPERTY INTERFACE_LIB_VERSION 4)
get_target_property(var source2 LIB_VERSION)
message("source2 LIB_VERSION: ${var}")
get_target_property(var source2 INTERFACE_LIB_VERSION)
message("source2 INTERFACE_LIB_VERSION: ${var}")

add_library(destination empty.cpp)
target_link_libraries(destination source1 source2)
get_target_property(var destination LIB_VERSION)
message("source3 LIB_VERSION: ${var}")
get_target_property(var destination INTERFACE_LIB_VERSION)
message("source3 INTERFACE_LIB_VERSION: ${var}")