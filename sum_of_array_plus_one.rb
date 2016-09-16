def sum_of_array_plus_one(arr)
  result = arr.length
  for el in arr
    result += el
  end
  result
end
p sum_of_array_plus_one([1, 2, 3, 4])
