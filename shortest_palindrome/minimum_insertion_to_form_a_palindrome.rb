def min_insertion(str,l=nil,h=nil)
  l = 0 if l == nil
  h = str.length - 1 if h == nil
  return 0 if l == h
  if l == h-1
    return (str[l] == str[h])? 0 : 1
  end
  return (str[l] == str[h]) ? min_insertion(str,l+1,h-1) : ([min_insertion(str, l, h-1), min_insertion(str, l+1, h)].min + 1)
end
p min_insertion("geeks")

def min_insertion_dp(str,n=nil)
  n = str.length if n == nil
  table = Array.new(n) { Array.new(n,0) }
  for gap in (1..n-1)
    l = 0
    h = gap
    while h < n
      table[l][h] = (str[l] == str[h]) ? table[l+1][h-1] : ([table[l][h-1], table[l+1][h]].min + 1)
      l += 1
      h += 1
    end
    p table
  end
  table[0][n-1]
end
p min_insertion_dp("geeks")
p min_insertion_dp("abcde")
# p min_insertion_dp("abcd")
# p min_insertion_dp("ab")
