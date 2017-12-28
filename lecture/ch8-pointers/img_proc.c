#include <stdio.h>

#define IMAGE_SIZE 3

typedef int (*image_t)[IMAGE_SIZE];


int image[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};

void swap(int *pa, int *pb) {
  int temp = *pa;
  *pa = *pb;
  *pb = temp;
}

image_t horiz_flip(image_t img) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = 0; col < IMAGE_SIZE / 2; col++) {
      swap(&(img[row][col]), &((img)[row][IMAGE_SIZE - col - 1]));
    }
  }

  return img;
}

image_t transpose(image_t img) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = row + 1; col < IMAGE_SIZE; col++) {
      swap(&(img[row][col]), &(img[col][row]));
    }
  }

  return img;
}

image_t print_image(image_t img) {

  for (int row = 0; row < IMAGE_SIZE; row++) {
    for (int col = 0; col < IMAGE_SIZE; col++)
      printf("%2d", img[row][col]);

    putchar('\n');
  }
  putchar('\n');
  return img;
}

image_t rotate_ccw(image_t img) {
  return transpose(horiz_flip(img));
}

image_t rotate(image_t img) {
  return horiz_flip(transpose(img));
}

image_t vert_flip(image_t img) {
  return rotate_ccw(horiz_flip(rotate(img)));
}


int main(int argc, char *argv[]) {

  print_image(image);
  print_image(vert_flip(image));
  print_image(rotate(image));
  print_image(horiz_flip(image));
  print_image(transpose(image));

  return 0;
}
