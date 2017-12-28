#include <stdio.h>

void
numbers(char *prefix, unsigned int current, unsigned int level){

  if (current > level) return;

  // print current level
  puts(prefix);
  char s[256];
  for(char x='1'; x<='9'; x++) {
    sprintf(s, "%s.%c", prefix, x);  //pr current state
    numbers(s, current+1, level);
  }
}

int main (int argc, char* argv[]) {
  numbers("hello", 1, 4);

  return 0;
}
