#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

void process(int a[], size_t sz) {

  for (size_t i=1; i<=sz; i++)
    printf("%4d", a[i]);

  printf("\n");
}


void swap (int a[], int i, int j) {
  int t = a[i];
  a[i] = a[j];
  a[j] = t;
}

void permute(int a[], int i, size_t n) {
   int j; 
   if (i == n)
     process(a, n);
   else {
        for (j = i; j <= n; j++) {
          swap(a, i, j);
          permute(a, i+1, n);
          swap(a, i, j); 
       }
   }
}

bool
has_same_number(int a, int b, int c, int d) {
  bool same_num = false;
  if (a == b) same_num = true;
  if (a == c) same_num = true;
  if (a == d) same_num = true;
  if (b == c) same_num = true;
  if (b == d) same_num = true;
  if (c == d) same_num = true;

  return same_num;

}

void perm_four_nums () {
  for (int i = 1; i<10; i++) 
    for (int j = 1; j<10; j++) 
      for (int k = 1; k<10; k++) 
        for (int l = 1; l<10; l++)  {
          if (!has_same_number(i, j, k, l))
            printf("%4d %4d %4d %4d\n", i, j, k, l);

        }
}

bool strict_ascend_sequence(int i ,int j, int k, int l) {
  if ( (i < j) && (j < k) && (k < l))  return true;

  return false;
}

void comb_four_nums () {
  for (int i = 1; i<10; i++) 
    for (int j = 1; j<10; j++) 
      for (int k = 1; k<10; k++) 
        for (int l = 1; l<10; l++)  {
          if (strict_ascend_sequence(i, j, k, l))
            printf("%4d %4d %4d %4d\n", i, j, k, l);

        }
}



int main (int argc, char* argv[]) {
  //  perm_four_nums();
  //  comb_four_nums();
  int a[] = {0,1,2,3,4,5,6,7,8,9, 10, 11, 12, 13};
  permute(a, 1, 13);
  return 0;
}
