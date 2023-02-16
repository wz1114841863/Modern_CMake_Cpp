set(MY_LIST 1 2 3)
foreach(var IN LISTS MY_LIST ITEMS e f)
    message(${var} " ")
endforeach()