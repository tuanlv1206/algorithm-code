def kth_largest_element_in_array(k, arr)
  hash = {}
  count = 0
  arr.each do |el|
    hash[el] ||= 0
    hash[el] = hash[el]+1
  end
  p hash
  for i in hash.keys
    if k <= count+hash[i] && k>count
      return i+1
    end
    count += hash[i]
  end
  return -1
end
p kth_largest_element_in_array(3,[3, 1,1,1, 2, 1, 4])
