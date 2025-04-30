// program to print multiplication of any number

#include<stdio.h>

int main(){
	int num, i, value;
	
	printf("Enter any number: ");
	scanf("%d", &num);
	
	for(i=1; i<=10; i++){
		value = num*i;
		printf("%d * %d = %d\n",num,i,value);
	}
	return(0);
}
