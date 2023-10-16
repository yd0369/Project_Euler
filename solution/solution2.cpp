#include "solution2.h"

int solveProblem2(int limit) {
    int sum = 0;
    for (int i = 3; i < limit; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}
