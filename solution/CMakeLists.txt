# Automatically fetch new problem source files
file(GLOB_RECURSE SOLUTION_SOURCES
    "*.cpp"
)

# Create a library for the solutions
add_library(SolutionsLib ${SOLUTION_SOURCES})

# Specify include directories for the headers
target_include_directories(SolutionsLib PUBLIC headers)