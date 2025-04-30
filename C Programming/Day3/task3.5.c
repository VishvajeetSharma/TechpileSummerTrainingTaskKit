//WAP to reverse the giiven number........
#include<stdio.h>
int main(){
	long num, rem=0, reversedNum = 0;
	printf("Enter the number: ");
	scanf("%d",&num);
	
	while(num != 0){
		rem = num%10;
		reversedNum = (reversedNum*10)+rem;
		num /= 10;
	}
	printf("%ld",reversedNum);
	
	return 0;
}