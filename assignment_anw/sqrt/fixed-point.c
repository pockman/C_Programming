#include <stdio.h>
#include <math.h>
#include <stdbool.h>

const double tolerance = 0.00001f;

typedef double (*fp_t) (double x, double y);

bool
is_close_enough(double x1, double x2) {
  if (fabs(x1 - x2) < tolerance)
    return true;

  return false;
}

double try(fp_t f, double y, double guess) {
  double new_guess = f(y, guess);
  if (is_close_enough(new_guess, guess))
    return new_guess;

  return try(f, y, new_guess);
}


double fixed_point(fp_t f, double y, double first_guess ){

  return try(f, y, first_guess);

}

