#include <stdbool.h>
#include <stdio.h>

int a;

// int arr[10];

// int arr[5] = {1, 2, 3, 4, 5};

// arr[1] = 100;

int main(int argc, char *argv[]) {

  const unsigned int array_size = 10;
  int arr[array_size];
  int i;

  int b[array_size];


  for (i = 0; i < array_size; i++)
    arr[i] = 0;

  /*
   *   for (; true; ) {
   *
   *     putchar('A');
   *   }
   */

  /*
   *   for (char c='\x20'; true; c++) {
   *
   *     putchar(c);
   *   }
   */

  const char space = '\x20';
  const char backspace = '\x7f';

  for (char c = space; c < backspace; c++) {

    putchar(c);
  }

  return 0;
}
