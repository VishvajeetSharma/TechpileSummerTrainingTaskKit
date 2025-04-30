#include<stdio.h>

int main(){
	float principalAmount,rate,time;
	printf("Enter the principal amount : ");
	scanf("%f",&principalAmount);
	printf("Enter the rate : ");
	scanf("%f",&rate);
	printf("Enter the time period in years : ");
	scanf("%f",&time);
	
	float simpleInterest = (principalAmount*rate*time)/100;
	
	printf("The simple interest will be : %f",simpleInterest);
	return 0;
}