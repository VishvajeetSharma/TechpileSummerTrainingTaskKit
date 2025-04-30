#include<stdio.h>

int main(){
	
	int inputInSceconds;
	
	printf("Enter your input in seconds : ");
	scanf("%d",&inputInSceconds);
	
	float hours,minutes;
	
	hours = inputInSceconds/(60*60);
	minutes = inputInSceconds/60;
	
	printf("Hours : %0.2f\n",hours);
	printf("Minutes : %0.2f\n",minutes);
	printf("Seconds : %d\n",inputInSceconds);
	
	
	return 0;
}