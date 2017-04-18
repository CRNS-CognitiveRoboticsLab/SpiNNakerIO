# Copyright: 2015 BABEL project Plymouth University
# in collaboration with Manchester University
# Author: Samantha Adams
# Author: Daniel Hernandez
# CopyPolicy: Released under the terms of the FreeBSD license.

cmake_minimum_required(VERSION 2.8)

SET(KEYWORD SpinnakerIO)
# Start a project
PROJECT(${KEYWORD})


set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")


set(SPINNAKER_IO_LIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

# put library under SpinnakerIO/lib
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
message(STATUS "Library goes to ${LIBRARY_OUTPUT_PATH}")


# Search for source code.
FILE(GLOB SOURCES ${SPINNAKER_IO_LIB_DIR}/*.cpp)
FILE(GLOB INCLUDES ${SPINNAKER_IO_LIB_DIR}/*.h)
SOURCE_GROUP("Source Files" FILES ${SOURCES})
SOURCE_GROUP("Header Files" FILES ${INCLUDES})

# Automatically add include directories if needed.
FOREACH(header_file ${INCLUDES})
  GET_FILENAME_COMPONENT(p ${header_file} PATH)
  INCLUDE_DIRECTORIES(${p})
ENDFOREACH(header_file ${INCLUDES})

ADD_LIBRARY(${KEYWORD} ${INCLUDES} ${SOURCES})
TARGET_LINK_LIBRARIES(${KEYWORD} pthread sqlite3)
INSTALL(TARGETS ${KEYWORD} DESTINATION lib)
INSTALL(FILES ${INCLUDES} DESTINATION include/SpiNNakerIO)
INSTALL(FILES SpinnakerIOConfig.cmake DESTINATION share/SpiNNakerIO COMPONENT config)
