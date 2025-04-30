#include<stdio.h>

int main(){
	float num ; 
	printf("Enter the number : ");
	scanf("%f",&num);
	float cube = num*num*num;
	printf("The cube of the %f will be : %f",num,cube);
	return 0;
}