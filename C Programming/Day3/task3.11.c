#include<stdio.h>
#include<conio.h>

int main(){
	printf("All even numbers between 1 to 50: \n");
	for(int i=1; i<=50; i++){
		if(i%2==0){
			printf("%d ",i);
		}
	}
	return 0;
}
