#include <stdio.h>

int forever() {
  putchar('*');
  return forever();
}

int main (int argc, char* argv[]) {

  forever();

  return 0;
}


