#include<stdio.h>

int main(){
	int unit; float charge;
	printf("Enter the consumed electricity units : ");
	scanf("%d",&unit);
	
	if(unit < 199){
		charge = unit * 1.20;
	}else if(unit >= 200 && unit <400){
		charge = unit * 1.50;
	}else if(unit >= 400 && unit <600){
		charge = unit * 1.80;
	}else{
		charge = unit * 2;
	}
	
	printf("Your total electricity bill is : %f",charge);
	
	
	return 0;
}