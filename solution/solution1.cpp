#include "solution1.h"

int solveProblem1(int limit) {
    int sum = 0;
    for (int i = 3; i < limit; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}
