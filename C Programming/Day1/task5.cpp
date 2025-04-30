#include <stdio.h>

int main(){
	int days;
	
	printf("Enter the days: ");
	scanf("%d",days);
	
	float weeks = days/7;
	
	float years = days/365;
	
	printf("%f years and %f days in the %d days",years,weeks,days);
	
	return 0;
}