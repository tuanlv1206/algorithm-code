def find_missing(arr1, arr2)
  arr1 = arr1.sort
  arr2 = arr2.sort
  l1 = arr1.length
  i = 0
  while i < l1
    if arr1[i] != arr2[i]
      return arr1[i]
    end
    i += 1
  end
end
p find_missing([4,1,0,2,9,6,8,7,5,3],[6,4,7,2,1,0,8,3,9])

# best solution for all
def find_missing_el(arr1, arr2)
  d = Hash.new
  result = []
  for num in arr2
    d[num] ||= 0
    d[num] += 1
  end
  for num in arr1
    if d[num] == 0 || d[num] == nil
      result.push(num)
    else
      d[num] -= 1
    end
  end
  result
end

p find_missing_el([4,1,0,2,9,6,6,6,8,7,5,3],[6,4,7,2,1,0,8,3,9])

def find_miss_xor(arr1, arr2)
  result = 0
  for num in arr1+arr2
    result ^= num
    puts result
  end
  result
end
p find_miss_xor([4,1,0,2,9,6,8,7,5,3],[6,4,7,2,1,0,8,3,9])

