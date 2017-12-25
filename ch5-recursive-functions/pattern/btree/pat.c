#include <stdio.h>
#include <stdbool.h>

void 
prt_spaces(unsigned n) {
  for (int i=0; i<n; i++){
    putchar('\x20');     // SPACE
  }
}

void 
prt_asterisks(unsigned n) {
  for (int i=0; i<n; i++){
    putchar('*');     // SPACE
    putchar('\x20');     // SPACE
  }
  putchar('\n');
}

void
pattern(unsigned int n, unsigned int i, bool is_right) {
  if (n == i) return;

  static unsigned int spc_counter = 0;

  pattern(n/2, i, false);
  prt_spaces(2*n);
  prt_asterisks(n);
  pattern(n/2, i, true);


}


int main (int argc, char* argv[]) {
  
  pattern(8, 0, false);

  return 0;
}
