#include <stdio.h>
#include <math.h>
#include <stdbool.h>

const double tolerance = 0.00001f;

bool
is_close_enough(double x1, double x2) {
  if (fabs(x1 - x2) < tolerance)
    return true;

  return false;
}

double try(double guess) {
  double new_guess = cos(guess);
  if (is_close_enough(new_guess, guess))
    return new_guess;

  return try(new_guess);
}


double fixed_point( double first_guess ){

  return try(first_guess);

}

