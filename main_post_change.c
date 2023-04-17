#include <stdio.h>

int main() {
    int a = 5;
    int b = 10;

    // This conditional statement should prevent the printf statement from being dead code
    if (a > b) {
        printf("The value of a is %d\n", a);
    }

    return 0;
}