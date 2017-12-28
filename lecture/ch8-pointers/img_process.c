#include <stdio.h>

#define IMAGE_SIZE 3

typedef int image_t[IMAGE_SIZE][IMAGE_SIZE];

typedef image_t *ptr_image_t;

image_t image = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};

void swap(int *pa, int *pb) {
  int temp = *pa;
  *pa = *pb;
  *pb = temp;
}

ptr_image_t horiz_flip(ptr_image_t pimg) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = 0; col < IMAGE_SIZE / 2; col++) {
      swap(&((*pimg)[row][col]), &((*pimg)[row][IMAGE_SIZE - col - 1]));
    }
  }

  return pimg;
}

ptr_image_t transpose(ptr_image_t pimg) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = row + 1; col < IMAGE_SIZE; col++) {
      swap(&((*pimg)[row][col]), &((*pimg)[col][row]));
    }
  }

  return pimg;
}

ptr_image_t print_image(ptr_image_t pimg) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = 0; col < IMAGE_SIZE; col++)
      printf("%2d", (*pimg)[row][col]);

    putchar('\n');
  }
  putchar('\n');
  return pimg;
}

ptr_image_t rotate_ccw(ptr_image_t pimg) {
  return transpose(horiz_flip(pimg));
}

ptr_image_t rotate(ptr_image_t pimg) {
  return horiz_flip(transpose(pimg));
}

ptr_image_t vert_flip(ptr_image_t pimg) {
  return rotate_ccw(horiz_flip(rotate(pimg)));
}


int main(int argc, char *argv[]) {

  print_image(&image);
  print_image(vert_flip(&image));
  print_image(rotate(&image));
  print_image(horiz_flip(&image));
  print_image(transpose(&image));

  return 0;
}
