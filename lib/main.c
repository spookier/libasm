#include "libasm.h"

// TESTING PROGRAM - TO RUN: make testmain
// The main.c file in this repository is included as a test for the assembly functions provided

// We run a few tests that you can visually compare to the original functions

void test_strlen(const char *str)
{
	size_t len;

	printf("\n-----------------------------------\n");
	len = strlen(str);
	printf("[ORIGINAL STRLEN] = %ld\n", len);

	len = 0;

	len = ft_strlen(str);
	printf("[FT_STRLEN]       = %ld\n", len);
	printf("-----------------------------------\n\n");
}

void test_strcpy(char *source)
{
	char destination_array[1000];
	//char *destination_malloc;
	char *returned_string;

	printf("-----------------------------------\n");
	returned_string = strcpy(destination_array, source);
	printf("[ORIGINAL STRCPY (array)] = %s\n", returned_string);

	returned_string = NULL; 

	returned_string = ft_strcpy(destination_array, source);
	printf("[FT_STRCPY (array)]       = %s\n", returned_string);
	printf("-----------------------------------\n\n");

	//free(destination_malloc);
}

int main(void)
{

	// test_strlen("alex");
	// test_strcpy("spoolex");

	char dest[100];
	char *str;

	str = ft_strcpy(dest, "what is this omg");
	printf("%s", str);

	return (0);
}
