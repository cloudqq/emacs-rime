cmake_minimum_required(VERSION 3.17)

set(TARGET librime)

project(${TARGET})

add_library(${TARGET} SHARED IMPORTED GLOBAL)


#target_link_libraries(${TARGET}
#        INTERFACE
#        ${CMAKE_CURRENT_SOURCE_DIR}/lib
#        )
#
#target_include_directories(${TARGET}
#        INTERFACE
#        ${CMAKE_CURRENT_SOURCE_DIR}/include
#        )

set_target_properties(${TARGET}
        PROPERTIES
        IMPORTED_LOCATION ${CMAKE_HOME_DIRECTORY}/libs/librime/lib/librime.dylib
        INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/include"
        )

