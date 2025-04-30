#include<stdio.h>

//	Function declearation.........
void swap(int num1, int num2);

//	Definition of function.........
void swap(int num1, int num2){
	num1 = num1+num2;
	num2 = num1-num2;
	num1 = num1-num2;
	
	printf("\nFirst number is: %d",num1);
	printf("\nSecond number is: %d",num2);
}

int main(){
	int num1, num2;
	
	printf("Enter first number: ");
	scanf("%d",&num1);
	printf("Enter second number: ");
	scanf("%d",&num2);
	
	// Call the function.........
	swap(num1, num2);
	
	return 0;
}