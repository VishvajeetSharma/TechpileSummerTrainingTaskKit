#include<stdio.h>

int main(){
	float n1,n2,n3;
	printf("Enter the 1st number :");
	scanf("%f",&n1);
	printf("Enter the 2nd number : ");
	scanf("%f",&n2);
	printf("Enter the 3rd number : ");
	scanf("%f",&n3);
	
	float avg = (n1+n2+n3)/3;
	printf("The average of %f, %f and %f will be : %f",n1,n2,n3,avg);
	return 0;
}