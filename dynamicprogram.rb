# On a positive integer, you can perform any one of the following 3 steps.
# 1.) Subtract 1 from it.( n = n - 1 )  ,
# 2.) If its divisible by 2, divide by 2. ( if n % 2 == 0 , then n = n / 2  )  ,
# 3.) If its divisible by 3, divide by 3. ( if n % 3 == 0 , then n = n / 3  ).
# Now the question is, given a positive integer n,
# find the minimum number of steps that takes n to 1
# eg: 1.)For n = 1 , output: 0       2.) For n = 4 ,
# output: 2  ( 4  /2 = 2  /2 = 1 )    3.)  For n = 7 ,
# output: 3  (  7  -1 = 6   /3 = 2   /2 = 1 )

# it all starts with recursion: F(n) = 1 + min{F(n-1), F(n/2), F(n/3)} if n > 1
# else 0
# use recursion to solve the problem
def get_min_step_with_recursion(n)
  return 0 if n <= 1
  r = 1 + get_min_step_with_recursion(n-1)
  if n%2 == 0
    r = [r,1 + get_min_step_with_recursion(n/2)].min
  end
  if n%3 == 0
    r = [r,1 + get_min_step_with_recursion(n/3)].min
  end
  r
end
p get_min_step_with_recursion(12)
p get_min_step_with_recursion(8)
# top-down dynamic programming
def get_min_step(n)
  return 0 if n == 1
  memo = Array.new(n+1,-1)
  return memo[n] if memo[n] != -1
  r = 1 + get_min_step(n-1)
  if n%2 == 0
    r = [r,1 + get_min_step(n/2)].min
  end
  if n%3 == 0
    r = [r,1 + get_min_step(n/3)].min
  end
  memo[n] = r
  return r
end
p get_min_step(30)

# bottom-up dynamic programming
def get_min(n)
  dp=[]
  dp[1] = 0
  i = 2
  while i <= n
    dp[i] = 1 + dp[i-1]
    if i%2 == 0
      dp[i] = [dp[i], 1+dp[i/2]].min
    end
    if i%3 == 0
      dp[i] = [dp[i], 1+dp[i/3]].min
    end
    i += 1
  end
  dp[n]
end
p get_min(30)



