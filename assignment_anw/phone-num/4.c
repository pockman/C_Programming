#include <stdio.h>
int main (int argc, char* argv[]) {
  
  printf("Enter phone number [(xxx) xxx-xxxx]:");
  unsigned int a, b, c;
  scanf("(%d) %d-%d", &a, &b, &c);

  printf("You entered %d.%d.%d\n", a, b, c);

  return 0;
}
