def buble_sort(array)
  i = 0
  while i < array.size
    j = i + 1
    while j < array.size
      array[i], array[j] = array[j], array[i] if array[i] > array[j]
      j = j + 1
    end
    i = i + 1
  end
  array
end

p buble_sort([12, 3, 5, 28, 45])
