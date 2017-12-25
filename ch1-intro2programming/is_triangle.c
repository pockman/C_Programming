
bool
is_triangle(int a, int b, int c) {
  return 
    a > 0 &&
    b > 0 &&
    c > 0 &&
    a + b > c &&
    c + a > b &&
    b + c > a
}
