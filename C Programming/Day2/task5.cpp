#include<stdio.h>

int main(){
	int cord_x,cord_y;
	printf("Enter the x and y coordinates : \n");
	scanf("%d%d",&cord_x,&cord_y);
	
	if(cord_x < 0 &&cord_y <0){
		printf("Coordinates points are lies in the 3rd quardrant.");
	}else if(cord_x > 0 &&cord_y >0){
			printf("Coordinates points are lies in the 1st quardrant.");
	}else if(cord_x < 0 &&cord_y >0){
			printf("Coordinates points are lies in the 2nd quardrant.");
	}else if(cord_x > 0 &&cord_y <0) {
		printf("Coordinates points are lies in the 4th quardrant.");
	}
}
