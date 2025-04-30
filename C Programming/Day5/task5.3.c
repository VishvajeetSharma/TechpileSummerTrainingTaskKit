#include<stdio.h>

int getFact(int);		// Function declearation.........

// Definition of function.........
int getFact(int num){
	double fact = 1;
	
	for(int i=num; i>0; i--){
		fact *= i;
	}
	
	return fact;
}

int main(){
	int num;
	
	printf("Enter the number: ");
	scanf("%d",&num);
	
	if(num<=0){
		printf("Factorial of entered number is not exist...!");
	}else{
		printf("Factorial of given number is %d",getFact(num));
	}
	
	return 0;
	
}