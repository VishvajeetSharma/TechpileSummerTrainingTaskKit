#include <stdio.h>

// Count digits in number
int count_digits(int n) {
    int count = 0;
    while (n != 0) {
        n /= 10;
        count++;
    }
    return count;
}

// calculate sum of each digits
int power(int n, int r) {
    int p = 1;
    for (int i = 0; i < r; i++) {
        p *= n;
    }
    return p;
}

// Check number is armstrong or not
int is_armstrong(int n) {
    int sum = 0;
    int temp = n;
    int digits = count_digits(n);
    while (temp != 0) {
        int rem = temp % 10;
        sum += power(rem, digits);
        temp /= 10;
    }
    return (sum == n);
}

int main() {
    int num;
    
    printf("These are Armstrong numbers between 1 to 100:\n");
    
    for(num=1; num<=100; num++){
    	if (is_armstrong(num)) {
	        printf("%d\t", num);
	    } else {
	        continue;
	    }
	}
    return 0;
}