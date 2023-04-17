#include <stdio.h>

int foo(int x, int y, int z) {
    int a = x * y;
    int b = a + z;
    int c = x * y;
    int d = c + z;
    return b + d;
}

void main()
{
    int x=0,y=0,z=0;
    scanf("%d\n%d\n%d\n", &x,&y,&z);

    printf("answer=%d\n", foo(x,y,z));
}