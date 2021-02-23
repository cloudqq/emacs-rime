cmake_minimum_required(VERSION 3.17)

project(libemacs)

SET(EMACS_SRC_DIR /usr/local/opt/emacs-mac/include)

add_library(libemacs INTERFACE)

target_include_directories(libemacs
        INTERFACE
        $<BUILD_INTERFACE:${EMACS_SRC_DIR}>
        )