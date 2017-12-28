unsigned char globle_char = 'A';

const volatile unsigned char *port = (unsigned char *)&globle_char;
volatile unsigned char *const cnst_port = &globle_char;
volatile unsigned char const *cnst_port2= &globle_char;
unsigned volatile char const *cnst_port3= &globle_char;

volatile int const *x;
int volatile *y;

int static *z;

int main (int argc, char* argv[]) {
  
  port = (unsigned char *)0x50;   // OK
  cnst_port = (unsigned char *)0x50;   // ERROR:  a constant pointer  has no left value.
  cnst_port2= (unsigned char *)0x50;   // ERROR:  a constant pointer  has no left value.
  *cnst_port2 = 0x1;

  unsigned char r = *port; //OK
  // *port = 'X';  // ERROR

  return (int)r;   // works, the right value of port is volatile.
}
