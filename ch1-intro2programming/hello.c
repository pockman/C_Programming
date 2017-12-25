#include <stdio.h>
#include <unistd.h>


int main (int argc, char* argv[]) {
  printf("hello world!");
  printf("\b\b\b\bw");
  printf("\nnext line.");

  printf("\f\fnext line.");
  printf("\rbegin ...");

  return 0;
}
