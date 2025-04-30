#include<stdio.h>

int main(){
	int count ;
	printf("Enter the number for Months : ");
	scanf("%d",&count);
	
	switch (count){
		case 1:{
			printf("31 days");
			break;
		}
		case 2:{
			printf("Can be 29 or 28 days");
		}
		
		case 3:{
			printf("31 days");
			break;
		}
		case 4:{
			printf("30 days");
			break;
		}
		case 5:{
			printf("31 days");
			break;
		}
		case 6:{
			printf("30 days");
			break;
		}
		case 7:{
			printf("31 days");
			break;
		}
		
			case 8:{
			printf("31 days");
			break;
		}
		
			case 9:{
			printf("30 days");
			break;
		}
		
			case 10:{
			printf("31 days");
			break;
		}
		
			case 11:{
			printf("30 days");
			break;
		}
		
			case 12:{
			printf("31 days");
			break;
		}
		default :{
			printf("Invalid optiono choosen");
			break;
		}
	}
	return 0;
}