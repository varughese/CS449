#include <stdio.h>
#include <dlfcn.h>

int main() {
	void *handle;
	void (*my_str_copy)(char *, char *);
	char *(*my_str_cat)(char *, char *);

	char *error;
	handle = dlopen("mystr.so", RTLD_LAZY);
	if(!handle) {
		// handle == NULL
		printf("%s\n", dlerror());
		return 1;
	}
	dlerror(); // clear any error
	my_str_copy = dlsym(handle, "my_strcpy");
	my_str_cat = dlsym(handle, "my_strcat");

	if((error = dlerror()) != NULL) {
		printf("%s\n", error);
		return 1;
	}

	char dest[100];
	char src[] = "Hello World!";

	my_str_copy(dest, src);

	printf("%s\n", dest);

	char first[] = "Conca";
	char second[] = "tenation";

	my_str_cat(first, second);

	printf("Concated str: %s\n", first);

	dlclose(handle);



	return 0;
}
