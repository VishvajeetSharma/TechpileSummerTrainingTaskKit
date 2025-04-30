#include<stdio.h>
int main(){
	int days;
	printf("Enter the days : ");
	scanf("%d",&days);
	float years = days/365;
	float weeks = days/7;
	
	printf("Years : %f\n",years);
	printf("Weeks : %f\n",weeks);
	printf("Days : %d",days);
	return 0;
}