#include<stdio.h>

int main(){
	int per;
	printf("Enter your percentage : ");
	scanf("%d",&per);
	
	if(per>90){
		printf("You are passed with A Grade");
	}else if(per>=75 && per <=90){
		printf("You are passed with B Grade");
	}else if (per>=61 && per <=75){
		printf("You are passed with C Grade");
	}else if(per>=46 && per <=60){
		printf("You are passed with D Grade");
	}else if(per >= 36 && per <=45){
		printf("You are passed with E Grade");
	}else{
		printf("Fail");
	}
	
	return 0;
}