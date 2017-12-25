#include <stdio.h>

int globle_variable = 10;

int square(int x)
{
  return x * x;
}

int main (int argc, char* argv[]) {

  int sum = 0;

  for (int i = 0; i<10; i++) {
    for (int j = 0; j<10; j++){
      printf("%2d * %2d = %2d", i, j, i*j);
    }

    sum += i;


  }

  return sum;
}


