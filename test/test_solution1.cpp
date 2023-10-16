#include <gtest/gtest.h>
#include "solution1.h"

TEST(Problem1Tests, ExampleTest1) {
    EXPECT_EQ(solveProblem1(10), 23);
}

TEST(Problem1Tests, ExampleTest2) {
    EXPECT_EQ(solveProblem1(100), 2318);
}

TEST(Problem1Tests, ExampleTest3) {
    EXPECT_EQ(solveProblem1(1000), 233168);
}