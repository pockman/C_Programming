#include <assert.h>
unsigned int gcd (unsigned int m, unsigned int n);

int main (int argc, char* argv[]) {
  assert(gcd(12, 18) == 6);

  return 0;
}
