#include <stdio.h>

int main(){
    int sum=0, arr[10] = {10,15,20,25,30,35,40,45,50,55};

    printf("Array is: \n");
    for(int i=9; i>=0; i--){
        printf("%d\t",arr[i]);
        sum += arr[i];
    }

    printf("\nSum  of given Array is: %d",sum);
    return 0;
}