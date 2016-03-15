# This method takes two integers, m and n, and determines whether those integers are co-prime

# this method takes a number and returns an array of factors.
def is_factor?(x)
  factor_arr = []
  n = x
  while n > 1
    if x % n == 0
      factor_arr.push(n)
    end
    n -= 1
  end
  factor_arr
end

#takes a number and returns true if it is prime
def prime_checker(x)
  prime = true
  n = x - 1
  while n > 2
    if x % n == 0
      prime = false
    end
    n -= 1
  end
  prime
end



def determine_coprimality(m, n)
  # returns false if m or n is between -1 and 1
  if m ==0 || m == 1 || m == -1
    return false
  elsif n == 0 || n == 1 || n == -1
    return false
  end

  #changes n and/or m to a positive number is negative
  if n < -1
    n = n.abs
  end
  if m < -1
    m = m.abs
  end

  m_factors = is_factor?(m)
  n_factors = is_factor?(n)
  m_primes = []
  n_primes = []

  for i in m_factors
    if prime_checker(i) == true
      m_primes.push(i)
    end
  end

  for i in n_factors
    if prime_checker(i) == true
      n_primes.push(i)
    end
  end
  n_primes

  common = n_primes & m_primes
  if common.length > 0
    return false
  end

  return true
end
