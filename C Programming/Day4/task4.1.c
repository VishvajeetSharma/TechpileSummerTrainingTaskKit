#include <stdio.h>

int main(){
    int arr[10] = {10,15,20,25,30,35,40,45,50,55};

    printf("Array is: \n");
    for(int i=0; i<10; i++){
        printf("%d\t",arr[i]);
    }

    return 0;
}