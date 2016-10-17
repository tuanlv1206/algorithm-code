def reverse_variation1(arr,k)
  n = arr.length
  i = 0
  while i<n
    left = i
    right = [i+k-1,n-1].min
    while left < right
      arr[left], arr[right] = arr[right], arr[left]
      left += 1
      right -= 1
    end
    i += 2*k
  end
  arr
end
p reverse_variation1([1, 2, 3, 4, 5, 6, 7, 8, 9],3)
p reverse_variation1([1, 2, 3, 4, 5, 6, 7, 8],2)
p reverse_variation1([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],3)


def reverse_variation2(arr,k,m)
  n = arr.length
  i = 0
  while i<n
    left = i
    right = [i+k-1,n-1].min
    while left < right
      arr[left], arr[right] = arr[right], arr[left]
      left += 1
      right -= 1
    end
    i += k + m
  end
  arr
end
p reverse_variation2( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],3,2)
p reverse_variation2( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],3,1)
p reverse_variation2( [1, 2, 3, 4, 5, 6, 7, 8],2,0)


def reverse_variation3(arr,k)
  n = arr.length
  i = 0
  while i<n
    left = i
    right = [i+k-1,n-1].min
    while left < right
      arr[left], arr[right] = arr[right], arr[left]
      left += 1
      right -= 1
    end
    k = k*2
    i += k/2
  end
  arr
end
p reverse_variation3([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16],1)


