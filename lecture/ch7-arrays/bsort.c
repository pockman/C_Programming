
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

void
swap(int arr[], int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

/* 
 *
 * Move the maximum element to the rightmost.
 *
 * Return:
 *    true :  list changed.
 *    flase:  list unchanged.
 */

bool
move_max_rightmost(int arr[], int n) {
  
  bool list_change_flag = false;
  int j;


  for (j = 0; j < n - 1; j++)
      if (arr[j] > arr[j + 1]) {
        swap(arr, j, j+1);
        list_change_flag = true;
      }

  return list_change_flag;
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
void  shuffle(int arr[], int array_size) {

for (int i=0; i<array_size; i++)
  swap(arr, i, rand()%array_size);
}

int main(int argc, char *argv[]) {

  const unsigned int array_size = 10;
  int arr[array_size];
  int i;

  for (i = 0; i < array_size; i++)
    arr[i] = array_size - i - 1;

  shuffle(arr, array_size);

  for (i = 0; i < array_size; i++)
    putchar('0'+arr[i]);
  putchar('\n');


  bubble_sort(arr, array_size);

  for (i = 0; i < array_size; i++)
    putchar('0'+arr[i]);
  putchar('\n');

  return 0;
}
