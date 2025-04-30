#include <stdio.h>

int main(){
    int arr[10] = {10,15,20,25,30,35,40,45,50,55};
    float sum=0;
    printf("Array is: \n");
    for(int i=9; i>=0; i--){
        printf("%d\t",arr[i]);
        sum += arr[i];
    }
    
    printf("\nSum  of given Array is: %0.3f",sum/10);
    return 0;
}