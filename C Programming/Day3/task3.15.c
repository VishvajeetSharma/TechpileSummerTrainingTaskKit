#include<stdio.h>
#include<conio.h>

int main(){
	int x = 1,i, j;
	
	// A
	for(i=1; i<=4; i++){
		for(j=3; j>=i; j--){
			printf(" ");
		}
		
		for( j=1; j<=i;j++){
			printf("%d ",x);
			x++;
		}
		printf("\n");
	}
	printf("\n");
	
	
	// B
	for(i=1; i<=5; i++){
		for(j=1; j<=i; j++){
			printf("%d ",i);
		}
		printf("\n");
	}
	printf("\n\n");
	
	
	//c
	for(i=5; i>=1; i--){
		for(j=1; j<=i; j++){
			printf("%d ",i);
		}
		printf("\n");
	}
	printf("\n");
	
	// D
	int la=1,lb=3,lc=4;
	
	for(i=1; i<=4; i++){
		for(j=1; j<=i; j++){
			
			if(i<=2){
				printf("%d ",la);
			la = la*2;
			}else if(i>=3 && i<4){
				printf("%d ",lb);
				lb = lb+3;
			}else if(i==4){
				printf("%d ",lc);
				lc = lc +4;
			}
		}
		printf("\n");
	}
	return 0;
}
