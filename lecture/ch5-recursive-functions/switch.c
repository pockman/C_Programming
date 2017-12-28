#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

  int count = 0;

  count = atoi(argv[1]);

  switch (count) {
  default:
    puts("++++␣.....␣+++");
  case 4:
    puts("++++");
  case 3:
    puts("+++");
  case 2:
    puts("++");
  case 1:
    puts("+");
  case 0:;
  }

  return 0;
}
