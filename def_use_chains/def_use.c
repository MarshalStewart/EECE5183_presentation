// def-use chain for 'x' starts with definition, ends with use at 'x + 3'
int main() {
	// 'x' is defined when it's initialized to 5
   	int x = 5;
   	int y;
	// 'x' is used in the expression 'x+3'
   	y = x + 3;
   	return 0;
}
