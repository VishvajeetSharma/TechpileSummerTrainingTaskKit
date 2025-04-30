#include<stdio.h>

int main(){
	char character;
	printf("Enter any character : ");
	scanf("%c",&character);
	 
	int check = (int) character;
	
	if(check >= 65 && check <=90){
		printf("It is a capital letter alphabet");
	}else if(check >=97 && check <=122){
		printf("IT is a small letter alphabet");
	}else if (check >= 32 && check <= 60){
		printf("This is a special character");
	}else{
		printf("It is a digit");    
	}
	
	return 0;
}