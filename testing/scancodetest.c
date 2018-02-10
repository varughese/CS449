#include <stdio.h>

int main() {
	int i;
	char c;
	char in[200];

	for(i=0; i<3; i++) {
		scanf("%c", &c);
		scanf("%s", in);
		printf("%s\n", in);
	}
	return 0;
}
