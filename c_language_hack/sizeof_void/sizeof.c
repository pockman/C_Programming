#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>

const size_t void_sz = sizeof(void);
const size_t void_pointer_sz = sizeof NULL;

// void x = (void)'A';   // incomplete type void ...

int main (int argc, char* argv[]) {
  
  printf("%ld\n", void_sz);
  printf("%ld\n", void_pointer_sz);
  return 0;
}
