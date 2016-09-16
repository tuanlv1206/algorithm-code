def integer_diff(n, arr)
  hash = {}
  total = 0
  for el in arr
    hash[el] = (hash[el] ||= 0) + 1
    total += (hash[el - n] ||= 0) + (hash[el + n] ||= 0)
    # p hash
    # p total
  end
  total
end
p integer_diff(4, [1, 1, 5, 6, 9, 16, 27])
p integer_diff(2, [1, 1, 3, 3])


def integer_diff(n, arr)
  hash = {}
  total = 0
  for el in arr
    hash[el] = (hash[el] ||= 0) + 1
    total += (hash[n - el] ||= 0)
  end
  total
end
p integer_diff(17, [1, 1, 5, 8, 9, 16, 27])

