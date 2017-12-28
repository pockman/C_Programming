#include <stdio.h>

#define MAXN 10
typedef float ElementType;

ElementType Max(ElementType S[], int N);

int main() {
  ElementType S[MAXN] = {-2.0f,-3.0f,-3.0f,-3.0f,-3.0f,-3.0f,-3.0f,-3.0f,-3.0f,-3.0f};
  int N=MAXN, i;

  /*
   * scanf("%d", &N);
   * for (i = 0; i < N; i++)
   *   scanf("%f", &S[i]);
   */
  printf("%.2f\n", Max(S, N));

  return 0;
}

ElementType Max(ElementType S[], int N) {
  int i;
  for (i = 1; i <= N; i++) {
    if (S[i - 1] > S[i])
      S[i] = S[i - 1];
  }
  return S[N-1];
}
