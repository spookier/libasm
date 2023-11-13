#include "libasm.h"

void test_strlen(const char *str)
{
	size_t 	len;

	printf("-----------------------------------\n");
	// ---------------REAL STRLEN---------------
    len = strlen(str);						
    printf("[ORIGINAL STRLEN] = %ld\n", len);
	// ---------------------------------------

	len = 0;

	// ---------------MY STRLEN---------------
    len = ft_strlen(str);						
    printf("[MY STRLEN]       = %ld\n", len);
	// ---------------------------------------
	printf("-----------------------------------\n");

	
}


int main(void) 
{

	test_strlen("not good");

    return (0);
}
