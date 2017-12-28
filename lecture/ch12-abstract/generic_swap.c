
#include <assert.h>
#include <stdlib.h>
#include <string.h>

void
swap_int(int *a, int *b)
{
  int tmp;

  tmp = *a;
  *a = *b;

  *b = tmp;

}



void
swap_char(char *a, char *b)
{
  char tmp;

  tmp = *a;
  *a = *b;

  *b = tmp;

}


void
generic_swap(void *a, void *b, size_t size)
{
  char *buf = malloc(size+1);
  assert(buf != NULL);
  
  memcpy(buf, a, size);
  memcpy(a, b, size);
  memcpy(b, buf, size);

  free(buf);

}



void swap_dbl(double *a, double *b)
{
  generic_swap(a, b, sizeof(double));
}



int main (int argc, char* argv[]) {

  return 0;
}
