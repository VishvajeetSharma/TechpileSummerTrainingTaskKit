//WAP to n terms of netural numbers and their sum....
#include<stdio.h>
int main(){
	int n, sum=0;
	printf("Enter the number of last netural number: ");
	scanf("%d",&n);
	
	printf("\nFirst %dth netural numbers is: \t",n);
	for(int i=1; i<=n; i++){
		printf("%d\t",i);
	}
	
	for(int i=1; i<=n; i++){
		sum += i;
	}
	printf("\n\nSum of first %dth netural numbers is: %d \n",n,sum);
	return 0;
}