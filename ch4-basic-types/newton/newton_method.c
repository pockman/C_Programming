#include <stdio.h>
#include <stdbool.h>
#include <math.h>

double f(double x) {
       return ( cos(2*x) - x );
}  

double f_prime(double x) 
{
   return ( -2*sin(2*x)-1 ); 
}  

double f_prime_slow(double x) // not work :(
{
  const double delta = 1e-2;
  return f(x + delta) - f(x) / delta;
}  


bool
is_good_enough(double x){
  const double epilon = 1e-4;
  if (fabs(f(x)) < epilon)
    return true;

  return false;
}

double iterate(double x_prev) {

 double new_x =  x_prev - f(x_prev)/f_prime(x_prev); 


  if (is_good_enough(new_x))
    return new_x;

// iterate again

  return iterate(new_x);
}




