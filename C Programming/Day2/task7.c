#include<stdio.h>
int main(){
	int temp;
	printf("Enter the temperature in celcius : ");
	scanf("%d",&temp);
	if(temp<0){
		printf("Freezing weather..!");
	}else if (temp > 0 && temp <10){
		printf("Very cold weather..!");
		
	}else{
		printf("It is very Hot...!");
	}
}