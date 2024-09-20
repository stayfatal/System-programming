# include <stdio.h>

int main() {
    long num = 5447175926;
    
    int sum = 0;

    for(;num>0;num/=10)sum += num % 10;

    printf("%d\n", sum);
    return 0;
}