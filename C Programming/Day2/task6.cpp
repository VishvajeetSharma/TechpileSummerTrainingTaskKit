#include<stdio.h>

int main(){
	int hindi,english,math;
	   printf("Enter the marks of Hindi subject  : ");
	   scanf("%d",&hindi);
	   printf("Enter the marks of English subject : ");
	   scanf("%d",&english);
	   printf("Enter the marks of Math subject : ");
	   scanf("%d",&math);
	   
	   float per = ((hindi+english+math)*100)/300;
	   printf("Total percentage is : %f\n",per);
	   
	   if(per < 33){
	   	printf("Your are failed");
	   }
	    else if(per > 60){
	    	printf("You have passed with 1st division");
		}else{
			printf("Your are passed with 2nd division");
		}
	   
	   
	   return 0;
}
