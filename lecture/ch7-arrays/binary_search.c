#include <assert.h>
#include <stdbool.h>
#include <stdint.h>

int database[] = {0, 1, 2, 34, 41, 50, 69, 77, 84, 99};

bool binary_search(int a[], int key, uint32_t lower, uint32_t upper) {

  uint32_t mid;

  if (lower > upper) return false; 

  mid = (lower + upper) / 2;

  if (key < a[mid]) 
    return binary_search(a, key, lower, mid - 1);

  if (key > a[mid]) 
    return binary_search(a, key, mid + 1, upper);

  return true;
}

int main (int argc, char* argv[]) {
  assert(binary_search(database,  1, 0, sizeof(database)/sizeof(int)-1));
  assert(binary_search(database, 50, 0, sizeof(database)/sizeof(int)-1));
  assert(binary_search(database, 99, 0, sizeof(database)/sizeof(int)-1));
  assert(binary_search(database,  0, 0, sizeof(database)/sizeof(int)-1));
  assert(binary_search(database, 84, 0, sizeof(database)/sizeof(int)-1));
  assert(binary_search(database,  7, 0, sizeof(database)/sizeof(int)-1));

  return 0;
}
