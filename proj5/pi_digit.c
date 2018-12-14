/*
 * pi_digit : testing the pi driver
 *
 * Mathew Varughese <mav120@pitt.edu>
 *
 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/types.h>

int main(int argc, char *argv[]) {
	/* We cannot run the program if the arguments are incorrect */
	if(argc<3) {
		printf("You must provide two arguments. The start and end.\n");
		return 1;
	}

	/* We convert the parameters into integers */
	int start = atoi(argv[1]);
	int end = atoi(argv[2]);

	/* We make sure the bounds are valid */
	if(start > end) {
		printf("Error. Start position is greater than end position.\n");
		return 1;
	}

	/* We open up the driver */
	FILE *pi_driver = fopen("/dev/pi", "r+");
	if(pi_driver == NULL) {
		/* if it can't open, we tell the user and exit */
		printf("Cannot open driver.\n");
		return 1;
	}


	/* We seek the pointer of the file ahead to where the user wishes to start*/
	fseek(pi_driver, start, SEEK_CUR);

	/* The total number of digits we want is this difference */
	int count = end - start + 1;

	/* we allocate a buffer for the digits */
	char *pi_buffer = malloc(count+1);

	/* we read it */
	fread(pi_buffer, count, 1, pi_driver);

	/* we set the last character to the terminator so we can print it */
	pi_buffer[count] = '\0';
	printf("%s\n", pi_buffer);

	/* we free the buffer we allocated */
	free(pi_buffer);

	return 0;
}
