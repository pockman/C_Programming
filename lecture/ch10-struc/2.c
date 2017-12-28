#include <string.h>

#define NAME_LEN 20

struct xxx {
  int number;
  char name[NAME_LEN + 1];
  int on_hand;
}; 

struct {
  int number;
  char name[NAME_LEN + 1];
  int on_hand;
} part_a = {528, "Disk drive", 10}, part_b = {914, "Printer cable", 5};

struct tag_tool {
  int number;
  char name[NAME_LEN + 1];
  int on_hand;
};

struct tag_tool part_A = {528, "Disk drive", 10};
struct tag_tool part_B = {914, "Printer cable", 5};

typedef struct _tag_tool {
  int number;
  char name[NAME_LEN + 1];
  int on_hand;
} tool_t;

tool_t part_C = {528, "Disk drive", 10};
tool_t part_D = {914, "Printer cable", 5};

int main (int argc, char* argv[]) {
  part_C.number = 10;
  strcpy(part_C.name,  "axe");
  part_C.on_hand = 2;

  tool_t x = {.number = 528, .name = "Disk drive", .on_hand = 10};

  x.number++;

  return 0;
}


