def reverse_array_in_group(arr,k)
  l = arr.length
  n = l/k
  mod = l%k
  if mod > 0
    arr[-mod,mod] = arr[-mod,mod].reverse
  end
  for i in (1..n)
    arr[k*(i-1),k] = arr[k*(i-1),k].reverse
  end
  arr
end
p reverse_array_in_group([1, 2, 3, 4, 5, 6, 7, 8, 9],3)
p reverse_array_in_group([1, 2, 3, 4, 5, 6, 7, 8],5)
p reverse_array_in_group([1, 2, 3, 4, 5, 6],1)
p reverse_array_in_group([1, 2, 3, 4, 5, 6, 7, 8],10)

def reverse(arr,k)
  n = arr.length
  i=0
  while i < n
    left = i
    right = [i+k-1,n-1].min
    while left < right
      arr[left],arr[right] = arr[right],arr[left]
      left += 1
      right -= 1
    end
    i += k
  end
  arr
end
p reverse([1, 2, 3, 4, 5, 6, 7, 8, 9],3)
p reverse([1, 2, 3, 4, 5, 6, 7, 8],5)
p reverse([1, 2, 3, 4, 5, 6],1)
p reverse([1, 2, 3, 4, 5, 6, 7, 8],10)
