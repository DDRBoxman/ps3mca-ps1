cmake_minimum_required (VERSION 2.6)
project (ps3mca-ps1)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake_modules/")

FIND_PACKAGE(LibUSB REQUIRED)

INCLUDE_DIRECTORIES(
        ${LIBUSB_INCLUDE_DIR}
)

SET(SOURCES
        ./src/main.c
        ./src/ps3mca-ps1-driver.h
        )

SET(LIBRARIES
        ${LIBUSB_LIBRARY}
        )

add_executable(ps3mca-ps1 ${SOURCES})
target_link_libraries (ps3mca-ps1 ${LIBRARIES})