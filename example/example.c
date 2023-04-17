#include <stdio.h>

void main()
{
	int p=0, q=0, r=0, s=0, u=0, v=0;
	
	scanf("%d\n,%d\n,%d\n,%d\n,%d\n,%d\n",&p,&q,&r,&s,&u,&v);

	for (int i=0; i<4; i++)
	{
		// Node 1
		p = q + r;
		s = p + q;
		u = s * v;

		if ((i % 2) == 0) // Node 2
		{
			v = r + u;
		}
		else // Node 3
		{
			q = s * u;
		}

		// Node 4
		q = v + r;
	}

	printf("p:%d,q:%d,r:%d,s:%d,u:%d,v:%d\n", p, q, r, s, u, v);

}