def three_sum(arr_input,k)
  arr_sort = arr_input.sort
  arr = arr_sort.map { |e| 3*e - k  }
  n = arr.length
  arr_result = []
  i = 0
  while i <= n-3
    a = arr[i];
    arr_start = i+1
    arr_end = n-1;
    while arr_start < arr_end
      arr_result.clear
      b = arr[arr_start]
      c = arr[arr_end]
      if a + b + c == 0
        arr_result.push(arr_sort[i]).push(arr_sort[arr_start]).push(arr_sort[arr_end])
        p arr_result
        arr_end -= 1
      elsif (a + b + c > 0)
        arr_end =arr_end - 1
      else
        arr_start =arr_start + 1
      end
    end
    i += 1
  end
end
three_sum([-25, -10, -7, -3, 2, 4, 8, 10],0)
three_sum([6, 9, 5, 2, 8, 4, 8, 10],22)
puts "---------------"
class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

def three_sum_minus(arr, k)
  min_sum = Integer::MAX
  arr = arr.sort
  n = arr.length
  i = 0
  min_first,min_second, min_third = 0, 1, n-1
  arr_result=[]
  while i <= n-3
    ele = k - arr[i]
    front = i+1
    rear = n-1
    while front < rear
      if (arr[i]+arr[front]+arr[rear]-k).abs == 0
        puts "[#{arr[i]},#{arr[front]}, #{arr[rear]}]"
        min_sum = 0
      elsif (arr[i]+arr[front]+arr[rear]-k).abs < min_sum.abs
        min_sum = (arr[i]+arr[front]+arr[rear]-k).abs
        min_first = i
        min_second = front
        min_third = rear
      end
      if arr[front] + arr[rear] == ele
        # puts "[#{arr[i]},#{arr[front]}, #{arr[rear]}]"
        rear -= 1
      elsif arr[front] + arr[rear] > ele
        rear -= 1
      else
        front += 1
      end
    end
    i += 1
  end
  # arr_result.push(arr[min_first]).push(arr[min_second]).push(arr[min_third])
end
three_sum_minus([-25, -10, -7, -3, 2, 4, 8, 10],0)
three_sum_minus([6, 9, 5, 2, 8, 4, 8, 10],22)
# p three_sum_minus([6, 9, 5, 2, 8, 4, 8, 10],10)
# p three_sum_minus([-1, 2, 1, -4,10], 3)

def three_sum_minus(arr, k)
  min_sum = Integer::MAX
  arr = arr.sort
  n = arr.length
  i = 0
  while i <= n-3
    ele = k - arr[i]
    front = i+1
    rear = n-1
    while front < rear
      if (arr[i]+arr[front]+arr[rear]-k).abs < min_sum.abs
        min_sum = (arr[i]+arr[front]+arr[rear]-k).abs
      end
      if arr[front] + arr[rear] == ele
        rear -= 1
      elsif arr[front] + arr[rear] > ele
        rear -= 1
      else
        front += 1
      end
    end
    i += 1
  end
  # arr_result.push(arr[min_first]).push(arr[min_second]).push(arr[min_third])
  # min_sum
  i = 0
  min_first,min_second, min_third = 0, 1, n-1
  arr_result=[]
  while i <= n-3
    ele = k - arr[i]
    front = i+1
    rear = n-1
    while front < rear
      if (arr[i]+arr[front]+arr[rear]-k).abs == min_sum
        puts "[#{arr[i]},#{arr[front]}, #{arr[rear]}]"
      end
      if arr[front] + arr[rear] == ele
        # puts "[#{arr[i]},#{arr[front]}, #{arr[rear]}]"
        rear -= 1
      elsif arr[front] + arr[rear] > ele
        rear -= 1
      else
        front += 1
      end
    end
    i += 1
  end
end
three_sum_minus([6, 9, 5, 2, 8, 4, 10],17)
three_sum_minus([-1, 2, 1, -4,10], 3)
three_sum_minus([1, 3, 5, 5, 14],12)


def closet_pair_two_array(a1,a2,k)
  a1 = a1.sort
  a2 = a2.sort
  l1 = a1.length
  l2 = a2.length
  min_i1, min_i2 = 0, 0
  i,j = 0, 0
  min_diff = Integer::MAX
  while i < l1
    while j < l2
      if (a1[i]+a2[j]-k).abs < min_diff
        min_diff = (a1[i]+a2[j]-k).abs
        min_i1 = i
        min_i2 = j
      end
      j += 1
    end
    j = 0
    i += 1
  end
  return a1[min_i1],a2[min_i2]
end
a1 = [1, 4, 5, 7]
a2 = [10, 20, 30, 40]
k = 32
p closet_pair_two_array(a1, a2, k)

a1 = [1, 4, 5, 7]
a2 = [10, 20, 30, 40]
k = 50
p closet_pair_two_array(a1, a2, k)

def closet_pair(a1,a2,k)
  a1 = a1.sort
  a2 = a2.sort
  l1 = a1.length
  l2 = a2.length
  min_diff = Integer::MAX
  res_l, res_r = 0, 0
  l, r = 0, l2-1
  while l < l1 && r >= 0
    if (a1[l] + a2[r] - k).abs < min_diff
      res_l = l
      res_r = r
      min_diff = (a1[l] + a2[r] - k).abs
    end
    if (a1[l] + a2[r] > k)
      r -= 1
    else
      l += 1
    end
  end
  return a1[res_l],a2[res_r]
end
a1 = [1, 4, 5, 7]
a2 = [10, 20, 30, 40]
k = 32
p closet_pair(a1, a2, k)

a1 = [1, 4, 5, 7]
a2 = [10, 20, 30, 40]
k = 50
p closet_pair(a1, a2, k)
















