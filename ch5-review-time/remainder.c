#include <stdio.h>

int main (int argc, char* argv[]) {

  int sum = 0;


  for(int i = 1; i < 10; i++ ) {
    sum += i;
  } 

  printf("sum=%d\n", sum);
  printf("*******%d\n", (-5 % (-3)));
  printf("*******%d\n", (-5 % (0)));
  printf("*******%d\n", (5 % (-3)));
  printf("5 %% (-3) = %d\n", (5 % (-3)));
  return 0;
}
