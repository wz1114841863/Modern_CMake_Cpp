cmake_minimum_required(VERSION 3.20.0)
project(BankAPP CXX)

add_executable(terminal_app terminal_app.cpp)
add_executable(gui_app gui_app.cpp)

add_library(calculations calculations.cpp)
add_library(drawing drawing.cpp)

target_link_libraries(terminal_app calculations)
target_link_libraries(gui_app calculations drawing)
