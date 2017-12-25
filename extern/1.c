#include <stdio.h>

// int test();
int main(void)   
{
    // printf("test %p \n", &test); will not compile 
    printf("main %p \n",&main);
    int (*ptr)() = main;

    printf("main %p \n",&main);

 return 0;
}

extern int a;  // Declares only.
extern int main(); //Declares only.

