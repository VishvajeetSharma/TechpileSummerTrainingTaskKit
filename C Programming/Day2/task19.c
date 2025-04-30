#include <stdio.h>
#include <conio.h>
int main(){
	char gen;
	printf("Enter the first letter of gender: ");
	gen = getche();
	
	printf("\n");
	
	switch(gen){
		case 'M':{
			printf("Male");
			break;
		}
		case 'F':{
			printf("Female");
			break;
		}
		case 'm':{
			printf("Male");
			break;
		}
		case 'f':{
			printf("Female");
			break;
		}
		default :{
			printf("Enter valid letter...!");
			break;
		}
	}
	
	return 0;
}