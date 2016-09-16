def even_occuring_element(arr)
  e = arr.each_with_object(Hash.new(0)){|e, memo| memo[e] += 1}
  even = e.select { |k,v| v%2 == 0  }
  even_el = even.keys
end
p even_occuring_element(['a','c','e','a','a','e','b','b'])

def uniq_el(arr)
  d = {}
  for num in arr
    d[num] ||= 0
    d[num] += 1
  end
  d.keys
end
p uniq_el(['a','c','e','a','a','e','b','b'])
