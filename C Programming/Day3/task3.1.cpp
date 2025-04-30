//WAP to display series using loop

#include<stdio.h>
int main(){
	
	printf("A.\t");
	for(int i=1; i<=15; i=i+2){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("B.\t");
	for(int i=15; i>=1; i=i-2){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("C.\t");
	for(int i=2; i<=20; i=i+3){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("D.\t");
	for(int i=20; i>=2; i=i-3){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("E.\t");
	for(int i=20; i>=1; i=i/2){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("F.\t");
	for(int i=1; i<=32; i=i*2){
		printf("%d\t",i);
	}
	printf("\n\n");
	
	printf("G.\t");
	for(int i=10; i>=1; i--){
		printf("%d\t",i);
	}
	printf("\n\n");
	return 0;
}