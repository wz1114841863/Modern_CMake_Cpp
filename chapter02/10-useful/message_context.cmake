function(foo)
    list(APPEND CMAKE_MESSAGE_CONTEXT "foo")
    list(APPEND CMAKE_MESSAGE_INDENT " ")
    message("foo message")
endfunction()

list(APPEND CMAKE_MESSAGE_CONTEXT "top")
message("Before `foo`")
foo()
message("After `foo`")