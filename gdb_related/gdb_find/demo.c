#include <stdio.h>

void
hello ()
{
  static char hello[] = "hello-hello";
  static struct { char c; short s; int i; }
    __attribute__ ((packed)) mixed
    = { 'c', 0x1234, 0x87654321 };
  printf ("%s\n", hello);
}

int main (int argc, char* argv[]) {
  hello();

  return 0;
}
