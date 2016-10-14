def maximize_number(arr)
  n = arr.length
  original_zero_count =  0
  max_diff = 0
  for i in (0..n-1)
    original_zero_count += 1 if arr[i] == 0
    count_1 = 0
    count_0 = 0
    for j in (i..n-1)
      (arr[j] == 1) ? (count_1 += 1) : (count_0 += 1)
      if max_diff < count_1 - count_0
        max_diff = count_1 - count_0
      end
    end
  end
  original_zero_count + max_diff
end
# p maximize_number([0, 1, 0, 0, 1, 1, 0])
# p maximize_number([0, 0, 0, 1, 0, 1])


# method 2
def find_max(arr)
  original_zero_count = 0
  max_diff = 0
  curr_max = 0
  n = arr.length
  for i in (0..n-1)
    if arr[i] == 0
      original_zero_count += 1
    end
    val = (arr[i]==1) ? 1 : -1
    curr_max = [val,curr_max+val].max
    max_diff = [max_diff, curr_max].max
    # puts "#{curr_max} #{max_diff}"
  end
  max_diff = [0,max_diff].max
  original_zero_count + max_diff
end
p find_max([0, 1, 0, 0, 1, 1, 0])
p find_max([0, 0, 0, 1, 1,  0, 1, 1, 1, 1])
