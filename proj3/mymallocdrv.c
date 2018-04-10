/*
 * Mathew Varughese
 * MAV120
 * My test malloc driver
 * Make sure to compile with '-m32' flag like the project description describes.
 *
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

#include "mymalloc.h"

void test1() {
	printf("start brk %p\n\n\n", sbrk(0));

	int *x = (int *)my_worstfit_malloc(4);
	*x = 4;
	printf("Address x: %p \n", x);
	my_free(x);


	printf("\n\nend brk %p\n", sbrk(0));
}

void test2() {
	printf("start brk %p\n\n\n", sbrk(0));

	int *x = (int *)my_worstfit_malloc(4);
	*x = 4;
	printf("Address x: %p \n", x);

	int *y = (int *)my_worstfit_malloc(5);
	*y = 9;
	printf("Address y: %p \n", y);

	my_free(x);
	my_free(y);



	printf("\n\nend brk %p\n", sbrk(0));
}

void test3() {
	printf("start brk %p\n\n\n", sbrk(0));
	int *x = (int *)my_worstfit_malloc(4);
	*x = 4;
	printf("Address x: %p \n", x);

	int *y = (int *)my_worstfit_malloc(5);
	*y = 9;
	printf("Address y: %p \n", y);


	int *z = (int *)my_worstfit_malloc(20);
	*z = 9;
	printf("Address z: %p \n", z);

	int *aaa = (int *)my_worstfit_malloc(80);
	*aaa = 9;
	printf("Address aaa: %p \n", aaa);

	int *eee = (int *)my_worstfit_malloc(80);
	*eee = 9;
	printf("Address eee: %p \n", eee);

	printf("freeing aaa\n");
	my_free(aaa);

	int *bbb = (int *)my_worstfit_malloc(40);
	*bbb = 9;
	printf("Address bbb: %p \n", bbb);

	int *ccc = (int *)my_worstfit_malloc(37);
	*ccc = 9;
	printf("Address ccc: %p \n", ccc);

	my_free(z);
	my_free(x);
	my_free(y);
	my_free(eee);
	my_free(bbb);
	int *fff = (int *)my_worstfit_malloc(69);
	my_free(fff);
	my_free(ccc);
	____print_out_list();
	printf("\n\nend brk %p\n", sbrk(0));
}

void test4() {
	printf("start brk %p\n\n\n", sbrk(0));

	int *A_ = (int *)my_worstfit_malloc(4);
	int *B_ = (int *)my_worstfit_malloc(4);
	int *C_ = (int *)my_worstfit_malloc(4);
	int *D_ = (int *)my_worstfit_malloc(4);

	my_free(A_);
	my_free(B_);
	my_free(C_);

	int *E_ = (int *)my_worstfit_malloc(12);
	// int *F_ = (int *)my_worstfit_malloc(1);
	my_free(D_);
	my_free(E_);

	____print_out_list();
	printf("\n\nend brk %p\n", sbrk(0));

}

int main() {
	// test1();
	// test2();
	test3();
	// test4();
	return 0;
}
