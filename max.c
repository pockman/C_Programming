

int _max(int a, int b) {
  if (a < b)
    return b;

  return a;
}

int max(int a, int b) {
  if (a < b)
    return b;
  else
    return a;
}

#define MAX(x, y)  (((x)>(y)) ? (x) : (y))

inline int __max(int x, int y) { 
  return (x > y ? x : y); 
}
