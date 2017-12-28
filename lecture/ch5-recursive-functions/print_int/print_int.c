#include <stdio.h>

void print_int(int n) {
  if (n < 0) {
    putchar('-');
    print_int(-n);
    return;
  } 

  if (n < 10)  
    putchar('0'+n);
  else {
    print_int(n/10);
    print_int(n%10);

  }
}

int main (int argc, char* argv[]) {
  
  print_int(-123456);
  print_int(0);
  print_int(1230);

  return 0;
}
