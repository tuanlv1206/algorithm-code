def is_prime(n)
  if n<=1
    return false
  elsif n == 2
    return true
  elsif n%2 == 0
    return false
  else
    i = 3
    while i<=Math.sqrt(n)
      if n % i == 0
        return false
      end
      i+=2
    end
  end
  return true
end

p is_prime(4)
p is_prime(7)
p is_prime(11)
p is_prime(9)
