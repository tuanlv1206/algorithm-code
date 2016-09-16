def missing_number(arr)
  return ((arr.length+1)*(2+arr.length)/2) - arr.reduce(:+)
end
p missing_number([2, 5, 8, 11, 14])
