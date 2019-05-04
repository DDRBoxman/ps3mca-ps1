# FindLibUSB.cmake - Try to find the Hiredis library
# Once done this will define
#
#  LIBUSB_FOUND - System has libusb
#  LIBUSB_INCLUDE_DIR - The libusb include directory
#  LIBUSB_LIBRARIES - The libraries needed to use libusb
#  LIBUSB_DEFINITIONS - Compiler switches required for using libusb
find_path(LIBUSB_INCLUDE_DIR
        NAMES libusb.h
        PATHS
        /usr
        /usr/local
        /opt
        "${CMAKE_SOURCE_DIR}/include"
        PATH_SUFFIXES libusb-1.0
        )

SET(CMAKE_FIND_LIBRARY_PREFIXES "lib")
SET(CMAKE_FIND_LIBRARY_SUFFIXES ".lib" ".dll")

find_library(LIBUSB_LIBRARY
        NAMES usb-1.0
        PATHS
        /usr
        /usr/local
        /opt
        "${CMAKE_SOURCE_DIR}/MS64/static"
        "${CMAKE_SOURCE_DIR}/MS64/dll"
        )

message(${LIBUSB_INCLUDE_DIR})
message("${CMAKE_SOURCE_DIR}\\MS64\\dll")
message("LIBUSB_LIBRARY: ${LIBUSB_LIBRARY}")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Libusb DEFAULT_MSG LIBUSB_LIBRARY LIBUSB_INCLUDE_DIR)

MARK_AS_ADVANCED(LIBUSB_INCLUDE_DIR LIBUSB_LIBRARY)