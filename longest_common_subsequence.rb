def longest_common_subsequence(arr)
  n = arr.length
  q = []
  k = 0
  for k in (0..n-1)
    max = 0
    for j in (0..k)
      if arr[k] > arr[j]
        if q[j] > max
          max = q[j]
        end
      end
    end
    q[k] = max + 1
  end
  max = 0
  for i in (0..n-1)
    if q[i] > max
      max = q[i]
    end
  end
  return max
end

p longest_common_subsequence([10 , 22 , 9 , 33 , 21 , 50 , 41 , 60])

$maximum = 0
def _longest_increase_subsequence(arr,n)
  p [arr,n]
  if n == 1
    return 1
  end
  max_ending_here =  1
  for i in (1..n-1)
    res = _longest_increase_subsequence(arr,i)
    if arr[i-1] < arr[n-1] and res+1 > max_ending_here
      max_ending_here = res + 1
    end
  end
  $maximum = [$maximum,max_ending_here].max
  return max_ending_here
end

def longest_increase_subsequence(arr)
  n = arr.length
  $maximum = 1
  _longest_increase_subsequence(arr, n)
  return $maximum
end
# p longest_increase_subsequence([10 , 22 , 9 , 33 ])
# p longest_increase_subsequence([10 , 22 , 9 , 33 , 21 , 50 , 41 , 60])
# p longest_increase_subsequence([ 10, 22, 9, 33, 21, 50, 41, 60, 80])

def lis(arr)
  n = arr.length
  lis = Array.new(n,1)
  for i in (1..n-1)
    for j in (0..i)
      if arr[i] > arr[j] && lis[i] < lis[j]+1
        lis[i] = lis[j]+1
      end
    end
  end
  maximum = 0
  for i in (0..n-1)
    maximum = [maximum, lis[i]].max
  end
  return maximum
end
p lis([10 , 22 , 9 , 33 , 21 , 50 , 41 , 60])


def lcs(X,Y,m=nil,n=nil)
  m = X.length if m == nil
  n = Y.length if n == nil
  if m == 0 or n == 0
    return 0
  elsif X[m-1] == Y[n-1]
    return 1 + lcs(X,Y,m-1,n-1)
  else
    return [lcs(X,Y,m-1,n),lcs(X,Y,m,n-1)].max
  end
end
X = "AGGTAB"
Y = "GXTXAYB"
p lcs(X,Y)


























