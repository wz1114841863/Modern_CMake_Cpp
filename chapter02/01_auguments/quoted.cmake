# 引号参数：将多个字符组合在一起，包括空格，将展开转义序列。
message("1. escape sequence: \" \n in a quoted argument")
message("2. multi...
line")
message("3. and a variable reference: ${CMAKE_VERSION}")