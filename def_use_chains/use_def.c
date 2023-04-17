// use-def chain for 'y' starts with use of 'x+3', ends with def of 'y'
int main() {
   	int x = 5;
   	// 'y' is defined, when 'x' is used in expression 'x+3'
	int y = x + 3;
   	return 0;
}
