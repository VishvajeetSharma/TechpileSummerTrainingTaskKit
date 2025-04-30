#include <stdio.h>

int main(){
    int arr[10] = {10,15,20,25,30,35,40,45,50,55};

    printf("Reversed Array is: \n\n");
    for(int i=9; i>=0; i--){
        printf("%d\t",arr[i]);
    }

    return 0;
}