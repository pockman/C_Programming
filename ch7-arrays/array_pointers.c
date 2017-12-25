int arr[5];

int roll_num[7][4];
int (*p)[4]=roll_num;
int *q[5];

int main(int argc, char *argv[]) {

  arr[5] = 10; // warning
  *(arr + 5) = 10; // No warning from compiler

  arr[4] = 128;

  int i, j;

  for (i=0; i<7; i++)
    for (j=0; j<4; j++)
      p[i][j] = i;


  return 0;
}
