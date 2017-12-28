#include <stdio.h>

int
average(int a, int b, int c) {
  return (a + b + c) / 3;
}


int
square_of(int x) {
  return x * x;
}

int 
cube_of (int x) {
  return x * x * x;
}


int
get_solution(int a) {
  return average(a, square_of(a), cube_of(a));
}


int main (int argc, char* argv[]) {

  int result = get_solution(10);
  printf("%d\n", result);

  return 0;
}
