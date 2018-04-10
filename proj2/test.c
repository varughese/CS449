#include <stdio.h>
#include <stdlib.h>

int main() {
	int count = 0;
	char c = '>';
	if(c == '>' || c == '&' || c == '<'
		|| c == '|'|| c == '~'|| c == '^') {
		count ++;
	}
	return 0;
}
