def fact(n)
  f =[n]
  f[0]=1
  i = 1
  while i<= n
    f[i] = i * f[i-1]
    i += 1
  end
  f[n]
end
p fact(5)

def factorial_simple(n)
  fa = 1
  (2..n).each {|k| fa = fa*k}
  fa
end
p factorial_simple(5)

def factorial_reverse(n)
  (n-1).downto(1).each{|i| n *= i}
  n
end
p factorial_reverse(5)

def factorial_recursive(n)
  n == 1 ? 1 : (n*factorial_recursive(n-1))
end
p factorial_recursive(5)

def factorial_reduce(n)
  (1..n).reduce(:*)
end
p factorial_reduce(5)


def fibonacci(n)
  f = [n]
  f[0] = 0
  f[1] = 1
  i = 2
  while i<=n
    f[i] = f[i-2] + f[i-1]
    i += 1
  end
  f[n]
end
p fibonacci(9)

def fib(n)
  return 0 if n == 0
  return 1 if n == 1 || n == 2
  fib(n-2)+fib(n-1)
end
p fib(9)
