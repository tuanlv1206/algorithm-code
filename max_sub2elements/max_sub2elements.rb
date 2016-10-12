def max_sub(arr)
  arr.sort!
  n = arr.length
  arr[n-1] - arr[0]
end
p max_sub([2, 3, 10, 6, 4, 8, 1])
