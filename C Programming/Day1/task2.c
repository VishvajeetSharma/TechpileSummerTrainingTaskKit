#include <stdio.h>

int main(){
	int number = 0;
	printf("Enter a number : ");
	scanf("%d",&number);
	if(number >= 65 && 90 >= number ||  number >= 97 && 122 >= number){
		printf("After converting a number to a character : %c ",number);
	}else{
		printf("Enter the correct number !");
	}
	
	return 0;
}