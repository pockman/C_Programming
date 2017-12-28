#include <stdio.h>
#include <stdlib.h>


char *(*(**foo[][8])())[];
// foo is an array of [][8];
// whose element keeps a 2-rank-pointer to a function
// and this function returns an array of pointers
// in this array it keeps some char pointers.

int main(int argc, char *argv[]) {
  int i;
  const int ci = 123;

  /* declare a pointer to a const.. */
  const int *cpi;

  /* ordinary pointer to a non-const */
  int *ncpi;

  cpi = &ci;
  ncpi = &i;

  /*
   * this is allowed
   */
  cpi = ncpi;

  /*
   * this needs a cast because it is usually a big mistake, see what it
   * permits below.
   */
  ncpi = (int *)cpi;

  /*
   * now to get undefined behaviour... modify a const through a pointer
   */
  *ncpi = 0;
  char c;
  char *const cp = &c;
  char const *lcp = &c;
  const char *hlcp = &c;

  *cp = 'x';
  *lcp = 'y';
  *hlcp = 'y';

  cp = &c;

  exit(EXIT_SUCCESS);
  return 0;
}
