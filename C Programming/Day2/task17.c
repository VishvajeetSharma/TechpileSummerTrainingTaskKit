#include<stdio.h>
#include<stdlib.h>

int main(){
	while(1){
		printf("1.Check Even or odd\n");
		printf("3.Exit\n");
		printf("-------------------------------------------\n");
		printf("Select any option from the given options :");
		
		int count;
		scanf("%d",&count);
		printf("-------------------------------------------\n");
		switch (count){
			case 1:{
				 int a;
				 printf("Enter a number : ");
				 scanf("%d",&a);
				 printf("---------------------------------\n");
				 if(a%2==0){
				 	printf("%d is a even number.",a);
				 }else{
				 	printf("%d is a odd number.",a);
				 }
				 printf("\n-------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
		
			case 2:{
			exit(0);
			}
			default:{
				printf("Invalid option choosen");
				break;
			}
		}
	}
}