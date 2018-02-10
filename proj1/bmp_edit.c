/*
 * Mathew Varughese
 * MAV120
 * Bitmap Image "Editor"
 *
 * This is a simple command line utility that can perform (very) basic image manipulation on bitmap files.
 *
 * Arguments
 * argv[1]
 * -grayscale
 * -invert
 *
 * argv[2]
 * FILENAME
 *
 * Example
 * ./bmp_edit -grayscale img1.bmp
 *
 * Functions do what they say. "checkValidArgs" for example, checks if the arguments passed into
 * the function are valid. Documentation is included inside the functions to explain logic
 * that cannot be gleaned just from the variable or function names.
 *
 */

#include <stdio.h>
#include <string.h>
#include <math.h>

#pragma pack(1)

struct BMP_HEADER {
	char format_identifier[2];
	int file_size;
	short reserved_1;
	short reserved_2;
	int pixel_offset;
};

struct DIB_HEADER {
	int size;
	int width;
	int height;
	short color_planes;
	short bits_per_pixel;
	int compression_scheme;
	int image_size;
	int hres;
	int vres;
	int colors_palette;
	int important_colors;
};

struct Pixel {
	unsigned char b;
	unsigned char g;
	unsigned char r;
};

int checkValidArgs(int argc, char *manipulationType) {
	if(argc != 3) {
		// Changing terminal color (for fun)
		printf("Invalid arguments. \nUSAGE: %sbmp_edit -[invert/grayscale] [filename].bmp%s\n", "\x1B[32m", "\x1B[0m");
		return 0;
	}

	if(!(strcmp(manipulationType, "-invert") == 0 || strcmp(manipulationType, "-grayscale") == 0)) {
		printf("'%s' is an unsupported manipulation type.\n", manipulationType);
		return 0;
	}

	return 1;
}

int checkValidBitmap(FILE *file_ptr, struct BMP_HEADER *bmpHeader_ptr, struct DIB_HEADER *dibHeader_ptr) {
	if(file_ptr == NULL) {
		printf("Cannot open up the file.\n");
		return 0;
	}

	fread(bmpHeader_ptr, sizeof(struct BMP_HEADER), 1, file_ptr);

	/* Check to make sure the magic header is 'BM' */
	if(!(bmpHeader_ptr->format_identifier[0] == 'B' && bmpHeader_ptr->format_identifier[1] == 'M')) {
		printf("This file type is not supported.\n");
		fclose(file_ptr);
		return 0;
	}

	fread(dibHeader_ptr, sizeof(struct DIB_HEADER), 1, file_ptr);

	if(dibHeader_ptr->size != 40) {
		printf("The size of the DIB header is not 40. File not supported.\n");
		fclose(file_ptr);
		return 0;
	}

	if(dibHeader_ptr->bits_per_pixel != 24) {
		printf("The bits per pixel is not 24. File not supported \n");
		fclose(file_ptr);
		return 0;
	}

	return 1;
}

void invert(struct Pixel *p) {
	p->r = ~p->r;
	p->g = ~p->g;
	p->b = ~p->b;
}

void grayscale(struct Pixel *p) {
	float r = p->r / 255.0;
	float g = p->g / 255.0;
	float b = p->b / 255.0;

	/* These equations use biological discoveries to emphasize how our eyes are better at seeing green than blue */
	/* (Figured out by someone much smarter than me) */

	float y = 0.2126 * r + 0.7152 * g + 0.0722 * b;
	char newColorValue;

	if(y <= 0.0031308) {
		newColorValue = (unsigned char)(255 * 12.92 * y);
	} else {
		newColorValue = (unsigned char)(255 * (1.055 * pow(y, 1/2.4) - 0.055));
	}

	p->r = p->g = p->b = newColorValue;
}

void manipulatePixel(char manipulationType, struct Pixel *p) {
	/*
	 * Instead of making grayscale and invert functions repeat the code to loop through
	 * the pixel data, this function decides which manipulation do at the pixel level.
	 */
	switch(manipulationType) {
		case 'g':
			grayscale(p);
			break;
		case 'i':
			invert(p);
			break;
		default:
			break;
	}
}

void manipulateImage(FILE *file_ptr, char manipulationType, int width, int height) {
	int i, j;
	struct Pixel p;
	/* The BMP format requires that a single row of pixels be a multiple of 4 bytes. This calculates the neccesary padding */
	int rowOffsetAmount = (3*width % 4 == 0) ? 0 : 4 - (3*width % 4);
	/* Loop through each pixel and perform the manipulation */
	for(i=0; i<height; i++) {
		for(j=0; j<width; j++) {
			/* Read the current pixel in the Pixel struct "p". This moves the file pointer to the next pixel */
			fread(&p, sizeof(struct Pixel), 1, file_ptr);
			/* Perform the manipulation on the pixel. The pixel data is stored in the "p" struct */
			manipulatePixel(manipulationType, &p);
			/* Move the file pointer back to the current pixel so it can be overwritten */
			fseek(file_ptr, -sizeof(struct Pixel), SEEK_CUR);
			/* Overwrite the current pixel data with the manipulated pixel */
			fwrite(&p, sizeof(struct Pixel), 1, file_ptr);
		}
		/* This moves the file pointer past that extra padding. */
		fseek(file_ptr, rowOffsetAmount, SEEK_CUR);
	}
}

int main(int argc, char* argv[]) {
	/* Check the arguments are valid */
	int validArgs = checkValidArgs(argc, argv[1]);
	if(!validArgs) return 1;
	/* rb+ indicates we will read and write to a binary file */
	FILE *file_ptr = fopen(argv[2], "rb+");
	/* The first bytes in the BMP file are a BMP header and DIB header that contain metadata about the image */
	struct BMP_HEADER bmpHeader;
	struct DIB_HEADER dibHeader;
	/* Check that the bitmap is in a format that this program can understand */
	int validBitmap = checkValidBitmap(file_ptr, &bmpHeader, &dibHeader);
	if(!validBitmap) return 1;

	/* Move the file pointer to the position where the pixel data is encoded */
	fseek(file_ptr, bmpHeader.pixel_offset, SEEK_SET);

	/* Perform the manipulation */
	char manipulationType = argv[1][1];
	manipulateImage(file_ptr, manipulationType, dibHeader.width, dibHeader.height);

	/* Hope the manipulation worked and close the program! */
	fclose(file_ptr);
	return 0;
}
