# 方括号参数， 不会进行求值
message([[multiline
    bracker
    argument
]])

message([==[
    because we used two equal-signs "=="
    following is still a single argument:
    { "petsArray" = [["mouse","cat"],["dog"]]}
]==])
