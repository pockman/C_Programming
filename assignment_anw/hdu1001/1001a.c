#include <stdio.h>
int i, sum, n;
int main() {
  while (scanf("%d", &n) != EOF) {
    sum = 0;
    for (i = 1; i <= n; i++) {
      sum += i;
    }
    printf("%d\n\n", sum);
    return 0;
  }
}
