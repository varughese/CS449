#include <stdio.h>
#include <string.h>

int main() {
	char in[200];
	int i;

	printf("What word to reverse? ");
	scanf("%s", in);
	printf("%s reversed is ", in);
	i = strlen(in) - 1;
	for(; i>=0; i--) {
		printf("%c", in[i]);
	}

	printf("\n");
	return 0;
}
