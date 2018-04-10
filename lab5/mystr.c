void my_strcpy(char *dest, char *src) {
	while(*dest++ = *src++);
}

char *my_strcat(char *dest, const char *src) {
	char *result = dest;
	while(*dest) dest++;

	while(*dest++ = *src++);

	return result;
}
