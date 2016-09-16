def odd_occuring_element(arr)
  hash = {}
  result = []
  arr.each do |el|
    hash[el] ||= 0
    hash[el] += 1
  end
  hash.each do |k,v|
    result.push k if v%2 != 0
  end
  result
end
p odd_occuring_element([1, 2, 3, 1, 2, 3, 1, 5])
