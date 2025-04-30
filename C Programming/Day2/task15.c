#include<stdio.h>

int main(){
	int count ;
	printf("Enter the number for days of the week : ");
	scanf("%d",&count);
	
	switch (count){
		case 1:{
			printf("Monday");
			break;
		}
		case 2:{
			printf("Tuesday");
		}
		
		case 3:{
			printf("Wednesday");
			break;
		}
		case 4:{
			printf("Thursday");
			break;
		}
		case 5:{
			printf("Friday");
			break;
		}
		case 6:{
			printf("Saturday");
			break;
		}
		case 7:{
			printf("Sunday");
			break;
		}
		default :{
			printf("Invalid optiono choosen");
			break;
		}
	}
	return 0;
}