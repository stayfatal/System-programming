# include <stdio.h>
# include <stdlib.h>

int main(int argc, char *argv[]) {
    if(argc==3){
        int b = atoi(argv[1]);
        int c = atoi(argv[2]);
        int result = ((b/c)* b) + b;
        printf("%d\n", result);
    }else{
        printf("wrong args");
    }
    return 0;
}