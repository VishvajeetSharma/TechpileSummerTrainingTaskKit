#include<stdio.h>
#include<conio.h>

int main(){
	int lastNum;
	printf("Enter the last number : ");
	scanf("%d",&lastNum);
	
	for(int i=1; i<=lastNum; i++){
		for(int j=1; j<=10; j++){
		printf(" %d\t ",i*j);
	}
	printf("\n");
	}
	return 0;
}
