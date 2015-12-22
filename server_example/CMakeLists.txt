# compile with command:
# options added for raspberry pi cross compilation
# cmake -D CMAKE_TOOLCHAIN_FILE=$HOME/coding/raspberry_pi/pi.cmake ../

cmake_minimum_required(VERSION 3.0.2)
project(rpiServer)

#version number
set (myServer_VERSION_MAJOR 1)
set (myServer_VERSION_MINOR 0)

#set project root dir
set(PROJECT_ROOT_DIR "/home/florian/coding/raspberry_pi/open62541")

# check if include paths do exists
if(EXISTS "${PROJECT_ROOT_DIR}/include")
	MESSAGE(STATUS "${PROJECT_ROOT_DIR}/include")
	MESSAGE(STATUS "include dir found")
else()
	MESSAGE(STATUS "${PROJECT_ROOT_DIR}/include")
	MESSAGE( FATAL_ERROR "include dir wrong path")

endif()

if(EXISTS "${PROJECT_ROOT_DIR}/examples")
	MESSAGE(STATUS "examples dir found")
else()
	MESSAGE(FATAL_ERROR  "examples dir wrong path")

endif()

if(EXISTS "${PROJECT_ROOT_DIR}/build/src_generated")
	MESSAGE(STATUS "src_generated dir found")
else()
	MESSAGE(FATAL_ERROR  "src_generated wrong path")

endif()

if(EXISTS "${PROJECT_ROOT_DIR}/src")
	MESSAGE(STATUS "src dir found")
else()
	MESSAGE(FATAL_ERROR  "src wrong path")

endif()

if(EXISTS "${PROJECT_ROOT_DIR}/src/server")
	MESSAGE(STATUS "src/server dir found")
else()
	MESSAGE(FATAL_ERROR  "src/server wrong path")

endif()


# add path to include directory with header files
include_directories("${PROJECT_ROOT_DIR}/include" "${PROJECT_ROOT_DIR}/examples" "${PROJECT_ROOT_DIR}/build/src_generated" "${PROJECT_ROOT_DIR}/src" "${PROJECT_ROOT_DIR}/src/server")

# tell linker where to look for external libraries (deprecated)
IF(IS_DIRECTORY ${PROJECT_SOURCE_DIR}/build)
	MESSAGE(STATUS "exists: " ${PROJECT_SOURCE_DIR}/build)
ELSE()
	MESSAGE(STATUS "build directory not found")
ENDIF()

#link_directories(${PROJECT_ROOT_DIR}/build)


# add shared target libraries
add_library(mylib SHARED IMPORTED)
if(EXISTS "${PROJECT_ROOT_DIR}/build/libopen62541.so")
	set(SHARED_LIB ${PROJECT_ROOT_DIR}/build/libopen62541.so)
	MESSAGE(STATUS "shared library " ${SHARED_LIB} " found")
    set_target_properties(mylib PROPERTIES IMPORTED_LOCATION ${SHARED_LIB})
else()
	MESSAGE(FATAL_ERROR "lib not found")
endif()

# add command line options
option(MOREINFO "-Wall" ON)
add_definitions(-DUA_NO_AMALGAMATION)

# adds an executable to the project using specified source files
add_executable(rpiServer ${PROJECT_ROOT_DIR}/examples/server.cpp)

# link a target "myServer" to given libraries
target_link_libraries(rpiServer mylib)