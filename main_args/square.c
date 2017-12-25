#include <stdio.h>
#include <stdlib.h>
#include <err.h>

long long int
square(long long int x) {
  return x * x;
}

void
usage() {
  printf("Return the square of an interger.\n");
  printf("Usage:\n");
  printf("  square <num>\n");

}

int main (int argc, char* argv[]) {
  

  if (argc < 2) {
    usage();
    return -1;
  }

  int x = atoi(argv[1]);
  printf("%lli\n", square(x));

  return 0;
}
