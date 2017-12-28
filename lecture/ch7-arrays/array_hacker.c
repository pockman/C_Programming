#include <stdio.h>
int arr[10] = {1, 2, 3,4, 5, 6, 7, 8, 9, 10};

int main (int argc, char* argv[]) {


  // arr             -> array type
  // &arr            -> pointer to the array
  // &arr[0]         -> pointer to an element in the array
  //

  int (*arr_ptr)[10] = &arr;
  int *a_ptr = &arr;
  int *a_elmt_ptr = &arr[10];

  int *p;

  printf("size of arr[10] %ld\n", sizeof arr[1] );
  printf("size of arr %ld\n",sizeof arr );

  printf("loc arr[0] %p, loc arr[1] %p\n", &(arr[0]), &arr[1]);
  printf("loc arr %p, loc arr+1 %p\n", arr, arr+1);    // arr:  addr of the first element

  printf("addr arr %p, addr arr+1 %p\n", &arr, &arr+1); // &arr: addr of the entire array
  printf("addr arr_ptr %p, addr arr_ptr+1 %p\n", &arr_ptr, &arr_ptr+1); // &arr: addr of the entire array

  sizeof(arr);
  sizeof p;    // object without () 
  sizeof (int);    // object without () 

  sizeof( int (*)[] );
  int (*x)[];

  sizeof x;



  return 0;
}
