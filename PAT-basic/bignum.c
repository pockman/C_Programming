#include <stdio.h>

#define SIZE 3000

void Print_Factorial(const int N);

int main() {
  int N;

  scanf("%d", &N);
  Print_Factorial(N);
  return 0;
}

int bignum[SIZE] = {0};

void mul_bignum(int bignum[], int x, int size) {
  for (int i = 0; i < SIZE; i++) {
    bignum[i] *= x;
  }

  for (int i = 0, carry = 0; i < SIZE; i++) {
    bignum[i] += carry;
    carry = bignum[i] / 10;
    bignum[i] %= 10;
  }
}

void Print_Factorial(const int N) {
  if (N < 0) {
    puts("Invalid input");
    return;
  }
  bignum[0] = 1;
  for (int i = 1; i <= N; i++) {
    mul_bignum(bignum, i, SIZE);
  }

  int index = SIZE - 1;
  while (bignum[index] == 0)
    index--;

  // the first non-zero digit
  while (index >= 0) {
    putchar('0' + bignum[index]);
    index--;
  }
}
