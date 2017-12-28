#include <stdio.h>

int link = 100;

int *link_ptr;



int main (int argc, char* argv[]) {
  link_ptr = &link;

  printf("value of link \t= %d\n", link);
  printf("address of link \t= %p\n", &link);
  printf("value of link_ptr \t= %p\n", &link_ptr);
  printf("address of link_ptr \t= %p\n", link_ptr);


  printf("value that link_ptr is pointing  = %d\n", *link_ptr);


  return 0;
}


