// //WAP to reverse the giiven number........
#include<stdio.h>
int main(){
	int num, rem=0, reversedNum = 0;
	printf("Enter the number: ");
	scanf("%d",&num);
	
	int enteredNum = num;
	
	while(num != 0){
		rem = num%10;
		reversedNum = (reversedNum*10)+rem;
		num /= 10;
	}
    
    if(enteredNum == reversedNum)
        printf("The given number is palindrome.");
    else
        printf("The given number is not palindrome.");
    

	return 0;
}