#include <stdio.h>
#include <string.h>

int main() {
    char str[50], reversed[50];
    int length, i;

    printf("Enter a string: ");
    gets(str);
    
    str[strcspn(str, "\n")] ='\0';		// Remove the newline character from gets input if it exists......

    length = strlen(str);		// Find the length of string......

    for (i = 0; i < length; i++) {
        reversed[i] = str[length - i - 1];
    }
    reversed[length] = '\0'; // Null-terminate the reversed string........

    printf("Reversed string: %s\n", reversed);

    return 0;
}