unsigned int
gcd(unsigned int m, unsigned int n)
{
  return (0==n)? m: gcd(n, m%n);
}



