#include <stdio.h>

int count_digits(int n) {
    int count = 0;
    while (n != 0) {
        n /= 10;
        count++;
    }
    return count;
}

int power(int n, int r) {
    int p = 1;
    for (int i = 0; i < r; i++) {
        p *= n;
    }
    return p;
}

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
    printf("Enter a number: ");
    scanf("%d", &num);
    if (is_armstrong(num)) {
        printf("%d is an Armstrong number.\n", num);
    } else {
        printf("%d is not an Armstrong number.\n", num);
    }
    return 0;
}