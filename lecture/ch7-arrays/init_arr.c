
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

/* 
 *
 * move the minimum element in a list  to the rightmost.
 *
 * return:
 *    true :  list changed.
 *    flase:  list unchanged.
 */

bool
move_max_rightmost(int arr[], int n) {
  
  bool flag = false;
  int j;


  for (j = 0; j < n - 1; j++)
      if (arr[j] > arr[j + 1]) {
        int temp; // Swapping
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        flag = true;
      }

  return flag;
}

void bubble_sort(int arr[], int n) {
  int i;

  for (i = 0; i < n; i++) {
    bool array_remain_unchanged = !move_max_rightmost(arr, n-i);
    if (array_remain_unchanged) return;
  }
}

void reverse(int a[], unsigned int size) {

  int i, j;

  for (i = 0, j = size; i < j; i++, j--) {
    int temp = a[i];
    a[i] = a[j];
    a[j] = temp;
  }
}

bool digits_repeated(unsigned int n) {

  int digits_bucket[10] = {0};

  for (int i = n; i > 0; i = i / 10) {
    int last_digit = i % 10;

    digits_bucket[last_digit]++;
  }

  // check digit buckets, finding the non-zero element.
  for (int i = 0; i < 10; i++) {
    if (digits_bucket[i] > 1)
      return true;
  }

  return false;
}

int a;

// int arr[10];

// int arr[5] = {1, 2, 3, 4, 5};

// arr[1] = 100;

int main(int argc, char *argv[]) {

  const unsigned int array_size = 10;
  int arr[array_size];
  int i;

  for (i = 0; i < array_size; i++)
    arr[i] = i;

  reverse(arr, array_size);

  /*
   *   for (; true; ) {
   *
   *     putchar('A');
   *   }
   */

  /*
   *   for (char c='\x20'; true; c++) {
   *
   *     putchar(c);
   *   }
   */

  /*
   *   const char space = '\x20';
   *   const char backspace = '\x7f';
   *
   *   for (char c = space; c < backspace; c++) {
   *
   *     putchar(c);
   *   }
   *
   */

  //  int a[10] = {1, 2, 3, 4, 5, 6};
  /* initial value of a is {1, 2, 3, 4, 5, 6, 0, 0, 0, 0} */

  // int a[15] = {[14] = 48, [9] = 7, [2] = 29};
  /* initial value of a is
   *
   * {0, 0, 29, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 48}
   *
   * */

  assert(digits_repeated(23));

  return 0;
}
