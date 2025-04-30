#include<stdio.h>

int main(){
	int a,b;
	printf("Enter the 1st number :");
	scanf("%d",&a);
		printf("Enter the 2nd number :");
	scanf("%d",&b);
	
	if(a == b){
		printf("Both numbers are equal");
	}else{
		printf("Numbers are not equal");
	}
	return 0;
}
