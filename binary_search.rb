def binary_search(arr, num, from=0, to=nil)
  if to == nil
    to = arr.length - 1
  end
  mid = (from+to)/2
  if num < arr[mid]
    return binary_search(arr,num, from, mid - 1)
  elsif num > arr[mid]
    return binary_search(arr, num, mid+1, to)
  else
    return mid
  end
end
p binary_search([1, 2, 3, 4, 5, 6, 10, 11, 12, 13, 14, 15], 13)

def search(arr,num, left=0, right=nil)
  if right ==nil
    right = arr.length
  end
  center = left+(right-left)/2
  if arr[center] == num
    return center
  end
  if arr[center] > num
    return search(arr, num, left,center)
  end
  if arr[center]<num
    return search(arr,num, center, right)
  end
end
p search([1, 2, 3, 4, 5, 6, 10, 11, 12, 13, 14, 15], 13)

def interpolation_search(arr,value)
  low = 0
  high = arr.length - 1
  mid = 0
  while arr[low] <= value && arr[high] >= value
    mid = low + ((value - arr[low]) * (high - low)) / (arr[high] - arr[low])
    if arr[mid] < value
      low = mid + 1
    elsif arr[mid] > value
      high = mid - 1
    else
      return mid
    end
  end
  if arr[low] == value
    return low
  else
    return -1
  end
end

p interpolation_search([-100, -6, 0, 1, 5, 14, 15, 26, 99],-100)
p interpolation_search([-100, -6],-100)
