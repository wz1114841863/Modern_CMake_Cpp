message("include before")
include("./message_dsfscontext.cmake" OPTIONAL RESULT_VARIABLE test)
message("include after")
message(${test})
if (NOT ${test})
    message("ressult: false")
endif()