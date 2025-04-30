#include<stdio.h>
#include<stdlib.h>

int main(){
	int uinput;
	while(1){
		
		int password = 1234;
	
		printf("Enter the correct password : ");
		scanf("%d",&uinput);
		
		if(uinput == password){
			printf("Correct Password !");
			exit(0);
		}else{
			printf("Invalid password !\n");
		}
	}
	return 0;
}
