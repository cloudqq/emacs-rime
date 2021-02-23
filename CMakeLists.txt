cmake_minimum_required(VERSION 3.17)

set(TARGET rime-emacs)
project(${TARGET})

add_subdirectory(libs)

add_library(${TARGET} SHARED
        lib.c
)

set_target_properties(${TARGET}
        PROPERTIES SUFFIX .so
        )

target_link_libraries(${TARGET}
        librime
        libemacs
        )

