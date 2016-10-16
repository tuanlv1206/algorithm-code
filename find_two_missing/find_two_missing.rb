def find_two_missing_1(a)
  n = a.length
  result = []
  if a[0] - 1 == 1
    result.push(1)
  end
  if a[0] - 1 == 2
    result.push(1).push(2)
  end
  for i in (1..n-1)
    if a[i]-a[i-1] == 2
      result.push(a[i]-1)
    end
    if a[i]-a[i-1] == 3
      result.push(a[i]-2).push[a[i]-1]
    end
  end
  if (n+2) - a[n-1] == 2
    result.push(n+1).push(n+2)
  end
  if (n+2) - a[n-1] == 1
    result.push(n+2)
  end
  result
end
p find_two_missing_1([1, 3, 5, 6])
p find_two_missing_1([1, 2, 4])
p find_two_missing_1([1, 2])


def find_two_missing_2(arr)
  n = arr.length
  result = []
  mark = Array.new(n+3,false)
  for i in (0..n-1)
    mark[arr[i]] = true
  end
  for i in (1..n+2)
    if !mark[i]
      result.push(i)
    end
  end
  result
end
p find_two_missing_2([1, 3, 5, 6])
p find_two_missing_2([1, 2, 4])
p find_two_missing_2([1, 2])
