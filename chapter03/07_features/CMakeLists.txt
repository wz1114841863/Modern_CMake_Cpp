cmake_minimum_required(VERSION 3.20.0)
project(Standard CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

list(FIND CMAKE_CXX_COMPILE_FEATURES 
    cxx_variable_templates result)
if(result EQUAL -1)
    message(FATAL_ERROR "I really need variable templates.")
else()
    message(${result})
endif()

add_executable(Standard main.cpp)