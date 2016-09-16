def non_repeated_char(arr)
  arr_split = arr.split('')
  arr_delete = arr.split('')
  l = arr_split.length
  i = 0
  find_index = 0
  while i < l
    arr_delete.delete_at(i)
    if !arr_delete.include?(arr_split[i])
      return arr_split[i]
    end
    i += 1
  end
end

p non_repeated_char("AABBC")
p non_repeated_char("AABBCCDEEFF")

def first_non(str)
  l = str.length
  i = 0
  while i < l

    if i-1 >= 0 && str[i] == str[i-1]
      i += 1
      next
    end
    if i + 1 < l && str[i] == str[i+1]
      i += 1
      next
    end
    return str[i]
  end
end
p first_non("AABBC")
p first_non("AABBCCDEEFF")
