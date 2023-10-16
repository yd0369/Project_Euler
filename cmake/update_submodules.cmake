# Adapted from https://cliutils.gitlab.io/modern-cmake/chapters/projects/submodule.html

# Check if git is available
find_package(Git QUIET)
if(GIT_FOUND)

    # Check if the submodules have been cloned
    option(UPDATE_SUBMODULES "Check submodules during build" ON)
    if(NOT UPDATE_SUBMODULES)
        return()
    endif()
    execute_process(COMMAND ${GIT_EXECUTABLE} submodule
                    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                    OUTPUT_VARIABLE EXISTING_SUBMODULES
                    RESULT_VARIABLE RETURN_CODE
                    OUTPUT_STRIP_TRAILING_WHITESPACE)    
    message(STATUS "Updating git submodules:\n${EXISTING_SUBMODULES}")

    # Update submodules as needed
    execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
                    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                    RESULT_VARIABLE RETURN_CODE)

    # Check if the update was successful
    if(NOT RETURN_CODE EQUAL "0")
        message(WARNING "Cannot update submodules. Git command failed with ${RETURN_CODE}")
        return()
    endif()

    message(STATUS "Git submodules updated successfully")
endif()