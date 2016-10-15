def maximize_value(arr)
  max = -9999
  n = arr.length
  for i in (0..n-1)
    for j in (0..n-1)
      if (arr[i]-i)-(arr[j]-j) > max
        max = (arr[i]-i)-(arr[j]-j)
      end
    end
  end
  max
end

p maximize_value([9, 15, 4, 12, 13])
p maximize_value([-1, -2, -3, 4, 10])


def find_max_diff(arr)
  max = -999
  min = 9999999
  n = arr.length
  for i in (0..n-1)
    if arr[i]-i > max
      max = arr[i]-i
    end
    if arr[i]-i < min
      min = arr[i]-i
    end
  end
  max - min
end
p find_max_diff([9, 15, 4, 12, 13])
p find_max_diff([-1, -2, -3, 4, 10])
