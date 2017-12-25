#include <stdio.h>

#define MAXN 10
typedef float ElementType;

ElementType Median(ElementType A[], int N);

int main() {
  ElementType A[MAXN];
  int N, i;

  scanf("%d", &N);
  for (i = 0; i < N; i++)
    scanf("%f", &A[i]);
  printf("%.2f\n", Median(A, N));

  return 0;
}

void 
swap(ElementType A[], int i, int j) {
  ElementType t = A[i];
  A[i] = A[j];
  A[j] = t;

}
void 
sort(ElementType A[], int N) {
  for (int i=0; i < N; i++) 
    for (int j=i; j < N; j++)
    {
      if (A[i] < A[j]) swap(A, i, j);
    }
}

// return the subscript after partitioning.
//
#include <stdlib.h>
int
partition(ElementType A[], int low, int high) {
  int i = low;
  int j = high;

  ElementType key = A[rand() % (high - low + 1)];
  
  while (i < j) {
    while(A[i] < key && i <= high) i++;
    while(A[j] > key && j >= low) j--;

    // If we have found a value in the left list which is larger than
    // the pivot element and if we have found a value in the right list
    // which is smaller than the pivot element then we exchange the
    // values.
    // As we are done we can increase i and j
    if (i < j && i <= high && j >= low) {
      swap(A, i, j);
      i++;
      j--;
    }
  }
  return  j;
}

ElementType Median(ElementType A[], int N) {

  sort(A, N);
  return A[(N&1)?N/2:N/2-1];
}
