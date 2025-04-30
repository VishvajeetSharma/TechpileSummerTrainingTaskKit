#include <stdio.h>

int main(){
    int arr[10] = {10,15,20,25,30,35,40,45,50,55};

    printf("Array is: \n");
    for(int i=0; i<=9; i++){
        printf("%d\t",arr[i]);
    }
    for(int i=0; i<=9; i++){
        if(arr[0] < arr[i]){
            arr[0] = arr[i];
        }else{
            continue;
        }
    }
    printf("\nLargest number in array is: %d",arr[0]);
    return 0;
}