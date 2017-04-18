# ===================================================================================
#  The SpinnakerIO library CMake configuration file
#
#
#  Usage from an external project: 
#    In your CMakeLists.txt, add these lines:
#
#    FIND_PACKAGE(SpinnakerIO REQUIRED )
#    TARGET_LINK_LIBRARIES(MY_TARGET_NAME ${SPINNAKER_IO_LIB})   
#
#    This file will define the following variables:
#      - SPINNAKER_IO_LIB          : The list of libraries to link against.
#      - SPINNAKER_IO_LIB_DIR       : The directory where lib files are. Calling LINK_DIRECTORIES
#                                with this path is NOT needed.
#      - SPINNAKER_IO_VERSION       : The  version of this build. Example: "2.1.1"
#      - SPINNAKER_IO_VERSION_MAJOR : Major version part. Example: "2"
#      - SPINNAKER_IO_VERSION_MINOR : Minor version part. Example: "1"
#      - SPINNAKER_IO_VERSION_PATCH : Patch version part. Example: "0"
#
# ===================================================================================


# Extract the directory where *this* file has been installed (determined at cmake run-time)
#  This variable may or may not be used below, depending on the parsing of OpenCVConfig.cmake
get_filename_component(THIS_SPINNAKER_IO_CONFIG_PATH "${CMAKE_CURRENT_LIST_FILE}" PATH)

# ======================================================
# Include directories to add to the user project:
# ======================================================
INCLUDE_DIRECTORIES("${HOME}/SpiNNakerIO/")
SET(SPINNAKER_IO_INCLUDE_DIR "/usr/local/include")

# ======================================================
# Link directories to add to the user project:
# ======================================================
LINK_DIRECTORIES("/usr/local/lib")
# Provide the libs directory anyway, it may be needed in some cases.
SET(SPINNAKER_IO_LIB_DIRS "/usr/local/lib")

# ====================================================================
# Link libraries
# ====================================================================
SET(SPINNAKER_IO_LIB SpinnakerIO)

# ======================================================
#  Version variables: 
# ======================================================
SET(SPINNAKER_IO_VERSION 0.1.0)
SET(SPINNAKER_IO_VERSION_MAJOR  0)
SET(SPINNAKER_IO_VERSION_MINOR  1)
SET(SPINNAKER_IO_VERSION_PATCH  0)
