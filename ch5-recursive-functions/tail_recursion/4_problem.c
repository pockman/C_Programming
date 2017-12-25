#include <stdio.h>

void forloop(unsigned int from, unsigned int to) {
  if (from > to) 
    return;

  putchar('*');
  forloop(from+1, to-1);
}

int main (int argc, char* argv[]) {

  forloop(1, 5);

  return 0;
}




