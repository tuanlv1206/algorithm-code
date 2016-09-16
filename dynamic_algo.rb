def fib(n)
  hash = Hash.new
  hash[0] = 0
  hash[1] = 1
  i = 2
  for i in (i..n)
    hash[i] = hash[i-1] + hash[i-2]
  end
  hash[n]
end
# p fib(5)

def fib_topdown(n)
  hash = Hash.new
  hash[0] = 0
  hash[1] = 1
  if hash[n]
    return hash[n]
  end
  p hash
  return hash[n] = fib_topdown(n-1) + fib_topdown(n-2)
end
p fib_topdown(9)


def fibonacci(n)
  return n if n <= 1
  fibonacci(n-1) + fibonacci(n-2)
end
puts fibonacci(10);

h = Hash.new { |hash, key| hash[key] =  hash[key-1] + hash[key-2]}
h[0] = 0
h[1] = 1
puts h[10]
