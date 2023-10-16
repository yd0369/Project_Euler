# List all the test source files
file(GLOB_RECURSE TEST_SOURCES
    "*.cpp"
)

# Create the test entry file (test_main.cpp)
# Will automatically include all the test source files
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp
    "#include <gtest/gtest.h>\n\n"
)

# Include each test source file
foreach(TEST_SOURCE ${TEST_SOURCES})
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp "#include \"${TEST_SOURCE}\"\n")
endforeach()

# Add the main function with the test runner
file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp "\nint main(int argc, char **argv) {\n")
file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp "    ::testing::InitGoogleTest(&argc, argv);\n")
file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/test_main.cpp "    return RUN_ALL_TESTS();\n}\n")
