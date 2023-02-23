cmake_minimum_required(VERSION 3.20.0)
project(definition)

set(VAR 8)
add_executable(defined)
target_sources(defined PRIVATE definitions.cpp)

target_compile_definitions(defined PRIVATE ABC "DEF=${VAR}")

