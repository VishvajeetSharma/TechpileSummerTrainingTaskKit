#include<stdio.h>

void checkNum(int);		// Function declearation....

// Definition of function.........
void checkNum(int num){
	if(num%2 == 0){
		printf("Entered number is even..!");
	}else{
		printf("Entered number is odd..!");
	}
}

int main(){
	int num;
	
	printf("Enter the number: ");
	scanf("%d",&num);
	
	// Call the function.......
	checkNum(num);
	
	return 0;
}