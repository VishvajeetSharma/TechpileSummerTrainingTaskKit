#include<stdio.h>

int main(){
	int num, r, rem=0;
	printf("Enter a number: ");
	scanf("%d",&num);
	
	while(num>0){
		r = num%10;
		rem += r;
		num = num/10;
	}
	printf("%d",rem);
}