class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

p Integer::MAX

def threeSumCloset(a, b)
  i , n = 0, a.length
  a = a.sort
  diff = Integer::MAX
  close_sum = 0
  arr_sum = Array.new
  while i <= n-3
    arr_sum.clear
    j, k = i+1, n-1
    sum = a[i] + a[j] + a[k]
    arr_sum.push(a[i]).push(a[j]).push(a[k])
    # p arr_sum
    if sum == b
      return arr_sum,sum
    end
    if diff > (sum - b).abs
      diff = (sum - b).abs
      close_sum = sum
      p diff
    end
    if sum < b
      j += 1
    else
      k -= 1
    end
    i += 1
  end

  return arr_sum,close_sum
end
p threeSumCloset([-1, 2, 1, -4], 1)

def two_sum_closet(arr,k)
  arr_result = []
  arr = arr.sort
  n = arr.length
  sum, min_sum = Integer::MAX, Integer::MAX
  l , r = 0, n-1
  min_l, min_r = l, n-1
  while l < r
    sum = arr[l] + arr[r]
    if (sum-k).abs < min_sum.abs
      min_sum = (sum-k).abs
      min_l = l
      min_r = r
    end
    if sum < 0
      l += 1
    else
      r -= 1
    end
  end
  arr_result.push(arr[min_l]).push(arr[min_r])
end
def two_closet_sum(arr, k)
  arr_result = []
  arr = arr.sort
  n = arr.length
  min_l = 0
  min_r = 1
  min_sum = Integer::MAX
  l, r = 0, 0
  while l < n-1
    r = l + 1
    while r < n
      sum = arr[l]+arr[r]
      if (sum-k).abs < min_sum.abs
        min_sum = (sum-k).abs
        min_l = l
        min_r = r
      end
      r += 1
    end
    l += 1
  end
  arr_result.push(arr[min_l]).push(arr[min_r])
end
p two_closet_sum([1, 60, -10, 70, -80, 85],0)
p two_closet_sum([1, 60, -10, 70,-85, -80, 90,92],7)
p two_closet_sum([1, 8, 4, 10, 28, 12],11)
p two_sum_closet([1, 60, -10, 70,-85, -80, 90,92],10)
