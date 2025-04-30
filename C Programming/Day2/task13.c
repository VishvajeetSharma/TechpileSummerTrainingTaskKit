#include<stdio.h>

int main(){
	int a,b,c;
	printf("Enter the 1st numeber : ");
	scanf("%d",&a);
	
	printf("Enter the 2nd numeber : ");
	scanf("%d",&b);


	printf("Enter the 3rd numeber : ");
	scanf("%d",&c);
	
	if(a>b && a>c){
		printf("%d is maximum among %d, %d and %d",a,a,b,c);
	}else if(b>c && b>a){
		printf("%d is maximum among %d, %d and %d",b,b,c,a);
	}else if(check >= 48 && check <=57){
		printf("%d is maximum among %d, %d and %d",c,c,b,a);
	}

	return 0;
}