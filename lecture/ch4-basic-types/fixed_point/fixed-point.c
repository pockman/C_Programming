#include <stdio.h>
#include <math.h>
#include <stdbool.h>

const double tolerance = 0.00001f;

typedef double (*fp_t) (double x);

bool
is_close_enough(double x1, double x2) {
  if (fabs(x1 - x2) < tolerance)
    return true;

  return false;
}

double try(fp_t f, double guess) {
  double new_guess = f(guess);
  if (is_close_enough(new_guess, guess))
    return new_guess;

  return try(f, new_guess);
}


double fixed_point(fp_t f, double first_guess ){

  return try(f, first_guess);

}

