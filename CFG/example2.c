int main() {
    int x = 10;
    int y = 20;
    int z = 0;
	int ret = 0;

	for (int i=0; i<5; i++)
	{
		if (x < y) {
			// Path taken i => {0, 1, 2}
			z = x + y;
			ret = z;
		} 
		else {
			// Path taken i => {3, 4}
			// z is dead iterations 3 and 4
			// z = x - y;
			ret = x - y;
		}

		// Increase x
		x += 5;
	}

    return ret;
}