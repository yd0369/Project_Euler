# Include the script to generate test_main.cpp from the cmake directory
include(${CMAKE_SOURCE_DIR}/cmake/generate_test_main.cmake)

# Create an executable for the tests
add_executable(PE_Tester ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp)

# Link against Google Test, solutions library, and any other dependencies
target_link_libraries(PE_Tester PRIVATE SolutionsLib gtest gtest_main)

# Add a custom target to run the tests with 'make test'
add_test(NAME RunTests COMMAND PE_Tester)
