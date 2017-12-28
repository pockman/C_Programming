typedef unsigned int u32;

u32 sum_digits(u32 n) {

  if (n < 10) return n;

  u32 sum = n %10;

  return sum + sum_digits(n / 10);
}

int main (int argc, char* argv[]) {
  return sum_digits(12);
}


