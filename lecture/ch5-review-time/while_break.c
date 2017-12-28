#include <stdbool.h>
#include <stdio.h>

int main (int argc, char* argv[]) {
  

/*
 *   do  putchar('*');
 *   while (false);
 * 
 */

  int sum = 0;
  int i = 0;

  while (true) {
    sum += i;
    if (i > 10) break;

    i++;
  }
  return 0;
}
