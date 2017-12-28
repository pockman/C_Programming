#include <stdlib.h>
typedef struct tag_node {
  int data;
  struct tag_node *next;
} node_t;


node_t *
create_node() {
  void *p = malloc(sizeof (node_t));
  return (node_t *)p;
}

int main (int argc, char* argv[]) {
  
  node_t *p;

  p = create_node();
  p->next = p;




  return 0;
}
