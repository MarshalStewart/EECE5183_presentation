#include <stdio.h>

void main() {
    int a;
    scanf("%d", &a);
    int b = 10;

    // dead code
    if (a > b) {
        printf("The value of a is %d\n", a);
    }

}
