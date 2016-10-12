#  simple solution
def max_of_product(arr)
  max = -99999
  n = arr.length
  for i in (0..n-1)
    for j in (i+1..n-1)
      x = (i-j).abs*[arr[i],arr[j]].min
      if x > max
        max = x
      end
    end
  end
  max
end
p max_of_product([8, 1, 9, 4])

# efficient solution to solves the problem in linear time complexity.
# We take two iterators left = 0 and right = n-1

def max_of_product_linear(arr)
  max = -99999
  curr_product = 0
  n = arr.length
  left = 0
  right = n - 1
  while left < right
    if arr[left] < arr[right]
      curr_product = arr[left]*(right-left)
      left += 1
    end
    if arr[left] > arr[right]
      curr_product = arr[right] *(right-left)
      right -= 1
    end
    max = [max,curr_product].max
  end
  max
end
p max_of_product_linear([8, 1, 9, 4])
p max_of_product_linear([8, 1, 9, 4, 1000, 3000])
