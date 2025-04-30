#include<stdio.h>
#include<stdlib.h>

int main(){
	while(1){
		printf("1.Add\n");
		printf("2.Multiply\n");
		printf("3.Divide\n");
		printf("4.Substract\n");
		printf("5.Square\n");
		printf("6.Cube\n");
		printf("7.Exit\n");
		printf("-------------------------------------------\n");
		printf("Select any option from the given options :");
		
		int count;
		scanf("%d",&count);
		printf("-------------------------------------------\n");
		switch (count){
			case 1:{
				 int a,b;
				 printf("Enter the 1st number : ");
				 scanf("%d",&a);
				  printf("Enter the 2nd number : ");
				 scanf("%d",&b);
				 printf("---------------------------------\n");
				 printf("The sum of %d and %d will be : %d",a,b,a+b);
				 printf("\n-------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			case 2:{
				int a,b;
				 printf("Enter the 1st number : ");
				 scanf("%d",&a);
				  printf("Enter the 2nd number : ");
				 scanf("%d",&b);
				 printf("---------------------------------------------\n");
				 printf("The division of %d and %d will be : %d",a,b,a/b);
				 printf("\n-------------------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			case 3:{
				int a,b;
				 printf("Enter the 1st number : ");
				 scanf("%d",&a);
				  printf("Enter the 2nd number : ");
				 scanf("%d",&b);
				 printf("------------------------------------------------\n");
				 printf("The substraction of %d and %d will be : %d",a,b,a-b);
				 printf("\n----------------------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			
				case 4:{
				int a,b;
				 printf("Enter the 1st number : ");
				 scanf("%d",&a);
				  printf("Enter the 2nd number : ");
				 scanf("%d",&b);
				 printf("------------------------------------------------\n");
				 printf("The substraction of %d and %d will be : %d",a,b,a-b);
				 printf("\n----------------------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			
			case 5:{
				int a;
				 printf("Enter a number : ");
				 scanf("%d",&a);
				 printf("---------------------------------------------\n");
				 printf("The square of %d will be : %d",a,a*a);
				 printf("\n-------------------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			case 6:{
				int a;
				 printf("Enter a number : ");
				 scanf("%d",&a);
				 printf("---------------------------------------------\n");
				 printf("The cube of %d will be : %d",a,a*a*a);
				 printf("\n-------------------------------------------\n");
				 printf("\n");
				  printf("\n");
				break;
			}
			case 7:{
			exit(0);
			}
			default:{
				printf("Invalid option choosen");
				break;
			}
		}
	}
}