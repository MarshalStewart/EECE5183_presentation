#include <stdio.h>

void main()
{
	int a=1, b=2, c=3, d=4;
	int x=5, y=6, z=7;
	
	scanf("%d\n,%d\n,%d\n,%d\n",&a,&b,&c,&d);

	x = a + b;
	y = b + c;
	z = c + d;

	printf("x:%d,y:%d,z:%d\n", x,y,z);

}