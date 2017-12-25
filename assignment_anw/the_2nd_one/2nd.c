#include <stdio.h>

int max(int a, int b) {
  if (a > b) return a;

  return b;
}

int min(int a, int b) {
  if (a < b) return a;

  return b;
}


int the_second_biggest_int(int a, int b, int c, int d) {
  int x = max(max(a,b), c);
  int y = max(max(b,c), d);

  return min(x, y);

}

int main (int argc, char* argv[]) {
  printf("%d\n", the_second_biggest_int(1,2,3,4));
  printf("%d\n", the_second_biggest_int(4,3,2,1));
  printf("%d\n", the_second_biggest_int(4,1,2,3));
  printf("%d\n", the_second_biggest_int(4,4,4,4));

  return 0;
}
