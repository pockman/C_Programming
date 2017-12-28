#include <stdio.h>

int
print_dot_line(char mat_code, unsigned int counter)
{
  if (counter > 5) return putchar('\n');

  if (mat_code & 1)
    putchar('*');
  else
    putchar(' ');

  return print_dot_line(mat_code >> 1, counter + 1);
  
}

char
prt_letter_a()
{
  print_dot_line('\x0E', 1);
  print_dot_line('\x11', 1);
  print_dot_line('\x11', 1);
  print_dot_line('\x1F', 1);
  print_dot_line('\x11', 1);
  print_dot_line('\x11', 1);
  print_dot_line('\x11', 1);
  return 'A';
}

int main (int argc, char* argv[]) {
  prt_letter_a();
  return 0;
}
