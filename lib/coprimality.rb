# this method takes a number and returns an array of factors.
def factors(x)
  (2..x).select {|n| x % n == 0}
end

#takes a number and returns true if it is prime
def prime_checker(x)
  prime = true
  (2..x-1).each {|n| prime = false if x % n == 0}
  prime
end

def prime_factors(arr)
  primes = []
  arr.each {|i| primes.push(i) if prime_checker(i) == true}
  primes
end


def determine_coprimality(m, n)
  # returns false if m or n is between -1 and 1
  if (m ==0 || m == 1 || m == -1) || (n == 0 || n == 1 || n == -1)
    return false
  end

  #changes n and/or m to a positive number is negative
  n = n.abs
  m = m.abs

  common = prime_factors(factors(m)) & prime_factors(factors(n))
  return false if common.length > 0

  true
end
