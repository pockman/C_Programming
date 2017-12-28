typedef int s32;

s32 sum_digits(s32 n) {

  int sum = 0; /* local variable */

  while (n > 0) {
    sum += n % 10;
    n /= 10;
  }

  return sum;
}

int main (int argc, char* argv[]) {
  return sum_digits(sum_digits(1234));
}


