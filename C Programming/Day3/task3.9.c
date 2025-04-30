#include<stdio.h>
int main(){
    long x, y, z;
    int i=0, n;
    x=0;
    y=1;
    
    printf("Enter the number of terms : ");
    scanf("%d",&n);
    
    printf("\n%d\t",y);
    
    while(i<n-1){
      z=x+y;
      printf("%d\t",z);
      x=y;
      y=z;
      i++;
    }
    printf("\n");
   return 0;
}