set(MyString1 "Text1")
set([[My String2]] "Text2")
set("My String 3" "Text3")

message(${MyString1})
# message(${My\ String2})  # error
# message(${My\ String\ 3})  # error

unset(MyString1)

# message(${MyString2})  # error
message(01 ${MyString2})