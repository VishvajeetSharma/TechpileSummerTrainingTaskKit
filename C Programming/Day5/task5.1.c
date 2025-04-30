#include <stdio.h>
#include <string.h>

int main()
{
	char first_str[20];
	char second_str[20];
	
	gets(first_str);
	gets(second_str);

    // printing the strings
    printf("First String: %s\n", first_str);
    printf("Second String: %s\n", second_str);

    // printing the return value of the strcmp()
    printf("Return value of strcmp(): %d",strcmp(first_str, second_str));

    return 0;
}
