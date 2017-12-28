#include <stdio.h>
#define X_FACTOR 4.0 + 3.7

int two()
{
  int x = X_FACTOR * X_FACTOR;
  printf("%d\n", 2);
  return 2;
}

int three()
{
  printf("%d\n", 3);
  return 3;
}

int four()
{
  printf("%d\n", 4);
  return 4;
}

int main (int argc, char* argv[]) {
  
  return two()*three()*four();
}
