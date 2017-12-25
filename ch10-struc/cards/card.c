#include <stdlib.h>
#include <stdio.h>

typedef struct tag_card {
  char suit;
  unsigned int rank;
} card_t;


card_t h1 = {'H', 1};
card_t h2 = {.rank = 2, .suit='H'};


struct tag_card s1 = {'S', 1};


#define PACK_SIZE 52
#define NSUIT 4
#define NRANK 13



card_t pack[PACK_SIZE];

void init_pack(card_t pack[]) {

  int n = 0;
  for (int i=0; n<NSUIT; i++) 
    for (int j=1; j<=NRANK; j++) {
      pack[n].suit = "SHDC"[i];
      pack[n].rank = j;

      n++;

    }
}



void swap(card_t pack[], int i, int j) {
  card_t temp = pack[i];
  pack[i] = pack[j];
  pack[j] = temp;
}

void shuffle(card_t pack[]) {
  for (int i=0; i<PACK_SIZE; i++)
    swap(pack, i, rand() % PACK_SIZE);
}


int main (int argc, char* argv[]) {
  printf("%c%2d\n",h1.suit, h1.rank);
  printf("%c%2d\n",h2.suit, h2.rank);
  printf("%c%2d\n",s1.suit, s1.rank);

  return 0;
}
