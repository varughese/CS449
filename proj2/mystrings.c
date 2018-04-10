/*
 * Mathew Varughese
 * MAV120
 * mystrings
 *
 * Simpler version of `strings` command line tool.
 *
 * Like really simple.
 *
 */

#include <stdio.h>
#include <string.h>

int isChar(char c) {
	return 32 <= c && c <= 126;
}

int main(int argc, char* argv[]) {
	/* Check the arguments are valid */
	if(!argv[1]) {
		printf("You must provide a filename as an argument!\n");
		return 1;
	}

	/* argv[1] has the filename, rb indicates we read in a binary file*/
	FILE *file_ptr = fopen(argv[1], "rb");

	if(file_ptr == NULL) {
		printf("Cannot open file\n");
		return 1;
	}

	int MIN_STRING_LENGTH = 4;

	/* buffer to hold first 4 characters when we are uncertain whether we have a string or not */
	char buffer[MIN_STRING_LENGTH+1];

	/* boolean that determines whether we have a string or not */
	int isString = 0;

	/* a counter to figure out how large our streak of valid characters found is */
	int counter = 0;

	/* loop until at the end of file */
	while(!feof(file_ptr)) {
		char c;
		if(fread(&c, sizeof(char), 1, file_ptr) > 0) {
			if(isChar(c)) {
				if(isString) {
					/* if we know we have a string, we can just print out
					 * the current character instead of saving it to memory
					 */
					printf("%c", c);
				} else {
					/* since we are unsure whether we have a streak
					 * of 4 characters or not, we
					 * save the characters into memory
					 */
					buffer[counter++] = c;

					if(counter >= MIN_STRING_LENGTH) {
						/* since we have a streak of MIN_STRING_LENGTH characters,
						 * now we know we have a string */
						buffer[MIN_STRING_LENGTH] = '\0';
						/* we can print out the 4 characters we have saved
						 * to the terminal */
						printf("%s", buffer);
						/* and set the isString flag to true so it the program
						 * knows we no longer need to save whether it is a string
						 * or not */
						isString = 1;
					}
				}
			} else {
				if(isString) {
					/* if we had a string, it is now finished, so
					 * print a new line and unset the flag */
					printf("\n");
					isString = 0;
				}
				/* whether or not we found a string, reset the counter to 0 */
				counter = 0;
			}
		}
	}

	fclose(file_ptr);
	return 0;
}
