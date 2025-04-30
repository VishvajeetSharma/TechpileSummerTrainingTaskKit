// WAP to swap to number without using third variable

#include<stdio.h>

int main(){
	int m = 0;
	int n = 0;
	printf("Enter the 1st number : ");
	scanf("%d",&m);
	printf("Enter the 2nd number : ");
	scanf("%d",&n);
	 
	 m = m+n;
	 n = m-n;
	 m = m-n;
	 
	 printf("First number is : %d\n",m);
	 printf("Second number is : %d",n);
	 
	
	return 0;
}