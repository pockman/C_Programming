#include <stdio.h>

int main (int argc, char* argv[]) {
  int age;
  fscanf(stdin, "%d", &age);
  fprintf(stdout, "your age is: %d\n", age);
  fprintf(stdout, "in: %p out:%p\n", stdin, stdout);


  return 0;
}
