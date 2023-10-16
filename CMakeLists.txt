# CMakeLists.txt for Project Euler
cmake_minimum_required(VERSION 3.12)

# Set project 
project(
    Project_Euler
    VERSION 1.3.3
    DESCRIPTION "Project Euler Solutions - Kustom Test Framework"
)

# Set C++ standard C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(OS_Bits 32)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(OS_Bits 64)
endif()

set(FullOutputDir "${CMAKE_SOURCE_DIR}/bin/${CMAKE_SYSTEM_NAME}${OS_Bits}/${CMAKE_BUILD_TYPE}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${FullOutputDir})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${FullOutputDir}/static libs")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${FullOutputDir}/shared libs")


# Output binary files to a 'bin' directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

# Include submodules updates
include(cmake/update_submodules.cmake)

# Include subdirectories for solutions and tests
add_subdirectory(external)
add_subdirectory(solution)
add_subdirectory(test)
