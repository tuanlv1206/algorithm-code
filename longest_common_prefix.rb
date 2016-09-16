def longest_common_prefix(arr)
  min_l = 99999999999999999
  el_min =''
  for el in arr
    if el.length < min_l
      min_l = el.length
      el_min = el
    end
  end
  arr.delete(el_min)
  i = 0
  while i < min_l
    j = 0
    while j < arr.length
      if el_min[i] != arr[j][i]
        return el_min.slice(0,i)
      end
      j += 1
    end
    i += 1
  end
end

p longest_common_prefix(['rocket', 'rockstar', 'rockbottom', 'rock', 'rollingstone'])
p longest_common_prefix(['shuffle', 'shuttle', 'shut'])
