#include "libasm.h"

// TESTING PROGRAM - TO RUN: make test
// The main.c file in this repository is included as a test suite for the assembly functions provided
// It is essential to have a robust testing mechanism to verify the correctness of our assembly code
// It ensures that each function operates correctly by running tests that you can visually compare to the original functions

void test_strlen(const char *str)
{
	size_t len;

	printf("-----------------------------------\n");
	// ---------------REAL STRLEN---------------
	len = strlen(str);
	printf("[ORIGINAL STRLEN] = %ld\n", len);
	// ---------------------------------------

	len = 0; // set to 0 in between calls to emphasize the changing of values

	// ---------------MY STRLEN---------------
	len = ft_strlen(str);
	printf("[MY STRLEN]       = %ld\n", len);
	// ---------------------------------------
	printf("-----------------------------------\n");
}

void test_strcpy(char *source)
{
	char destination[1000]; // can also use malloc but this is easier for testing purposes
	char *returned_string;

	printf("-----------------------------------\n");
	// ---------------REAL STRCPY--------------
	returned_string = strcpy(destination, source);
	printf("[ORIGINAL STRCPY] = %s\n", returned_string);

	returned_string = NULL; // set to null in between calls to emphasize the changing of values

	// ---------------MY STRCPY--------------
	returned_string = ft_strcpy(destination, source);
	printf("[MY STRCPY]       = %s\n", returned_string);
	printf("-----------------------------------\n");
}

int main(void)
{

	test_strlen("four");
	test_strcpy("roblox");

	return (0);
}
