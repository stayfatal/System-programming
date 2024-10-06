#include <stdio.h>

int is_non_decreasing(int n) {
    int last_digit = n % 10;  
    n /= 10;

    
    while (n > 0) {
        int current_digit = n % 10;  
        if (current_digit > last_digit) {  
            return 0;  
        }
        last_digit = current_digit;  
        n /= 10;  
    }

    return 1;  
}

int main() {
    int n;
    
    scanf("%d", &n);

    if (is_non_decreasing(n)) {
        printf("1\n");
    } else {
        printf("0\n");
    }

    return 0;
}
