def get_min_step(n)
  puts "get_min_step(#{n})"
  return 0 if n == 1
  memo = Array.new(n+1,-1)
  return memo[n] if memo[n] != -1
  r = 1 + get_min_step(n-1)
  puts r
  if n%2 == 0
    puts "get_min_step(#{n})"
    r = [r,1 + get_min_step(n/2)].min
    puts r
  end
  if n%3 == 0
    puts "get_min_step(#{n})"
    r = [r,1 + get_min_step(n/3)].min
    puts r
  end
  memo[n] = r
  p memo
  puts '------'
  return r
end
p get_min_step(10)

def get_min(n)
  dp=[]
  i = 2
  dp[1] = 0
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
p get_min(10)



