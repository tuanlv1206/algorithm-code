def third_largest(arr)
  arr.sort!
  arr[-3]
end
p third_largest([1, 14, 2, 16, 10, 20])
p third_largest([19, -10, 20, 14, 2, 16, 10])

def third_largest_1(arr)
  first_largest = arr[0]
  arr.each do |e|
    if e > first_largest
      first_largest = e
    end
  end
  second_largest = -99999999999
  arr.each do |e|
    if e > second_largest && e < first_largest
      second_largest = e
    end
  end
  third_largest = -999999999999
  arr.each do |e|
    if e > third_largest && e < second_largest
      third_largest = e
    end
  end
  third_largest
end
p third_largest_1([1, 14, 2, 16, 10, 20])
p third_largest_1([19, -10, 20, 14, 2, 16, 10])

def third_largest_2(arr)
  first = arr[0]
  second = -9999999
  third = -9999999
  n = arr.length
  for i in (1..n-1)
    if arr[i] > first
      third = second
      second = first
      first = arr[i]
    elsif arr[i] > second
      third = second
      second = arr[i]
    elsif arr[i] > third
      third = arr[i]
    end
  end
  third
end
p third_largest_2([1, 14, 2, 16, 10, 20])
p third_largest_2([19, -10, 20, 14, 2, 16, 10])
p third_largest_2([12, 13, 1, 10, 34, 16])
p third_largest_2([10, 5, 15, 5, 15, 10, 1, 1])

