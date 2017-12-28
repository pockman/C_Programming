
#include <stdio.h>
/*
 * 
 *     _____      
 *          \_____|>--------------------------+        
 *                 |                          |        
 *                 |                          |        
 *                 +--------------------------+        
 *                 |                          |        
 *                 |                          |        
 *                 +--------------------------+        
 *                 |                          |        
 *                 |                          |        
 *                 |                          |        
 *                 +--------------------------+        
 * 
 */


int 
add(int a, int b)
{
  printf("a: %p\n", &a);
  if (b == 0)
    return a;
  else
    return add(++a, --b);

}


struct students 
{
  char *name;
  char suid[8];
  int num_units;
};

struct students s001;

int main (int argc, char* argv[]) {

  struct students s002;


  printf("s001 %p\n", &s001);
  printf("s001.name %p\n", &s001.name);
  printf("s001.suid %p\n", &s001.suid);
  printf("s001.num_units %p\n", &s001.num_units);

  printf("s002 %p\n", &s002);
  printf("s002.name %p\n", &s002.name);
  printf("s002.suid %p\n", &s002.suid);
  printf("s002.num_units %p\n", &s002.num_units);
  
  add(3, 5);

  return 0;
}
