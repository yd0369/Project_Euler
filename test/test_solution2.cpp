#include <gtest/gtest.h>
#include "solution2.h"

TEST(Problem2Tests, ExampleTest1) {
    EXPECT_EQ(solveProblem2(10), 23);
}

TEST(Problem2Tests, ExampleTest2) {
    EXPECT_EQ(solveProblem2(100), 2313);
}

TEST(Problem2Tests, ExampleTest3) {
    EXPECT_EQ(solveProblem2(1000), 233168);
}