def lcs(x,y,m=nil,n=nil)
  m = x.length if m == nil
  n = y.length if n == nil
  if m == 0 or n == 0
    return 0
  elsif x[m-1] == y[n-1]
    return 1 + lcs(x,y,m-1,n-1)
  else
    return [lcs(x,y,m-1,n),lcs(x,y,m,n-1)].max
  end
end
x = "AGGTAB"
y = "GXTXAYB"
p lcs(x,y)

def lcs_dp(x,y)
  m = x.length
  n = y.length
  l = Array.new(n+1){ Array.new(m+1)}
  for i in (0..m+1)
    for j in (0..n+1)
      if i == 0 or j == 0
        l[i][j] = 0
      elsif x[i-1] == y[j-1]
        l[i][j] = l[i-1][j-1]+1
      else
        l[i][j] = [l[i-1][j],l[i][j-1]].max
      end
    end
  end
  return l[m][n]
end
p lcs_dp(x,y)
