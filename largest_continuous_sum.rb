def largest_continuous_sum(arr)
  return 0 if arr.is_a?(Array) && !arr.length
  current_sum = max_sum = arr.shift
  result1 = []
  result2 =[]
  result3 = []
  result1.push(current_sum)
  result2.push(current_sum)
  result3.push(current_sum)
  # result = []
  for el in arr
    # result.push(el) if current_sum + el > el && current_sum + el > max_sum
    if current_sum + el > el
      current_sum = current_sum + el
      result1.push(el)
      result2.push(el)
      result3.push(el)
    else
      current_sum = el
      result1.clear.push(el)
      result2.push(el)
      result3.clear.push(el)
    end
    # current_sum = [current_sum+el, el].max
    if current_sum > max_sum
      max_sum = current_sum
    else
      result2.pop
      result3.pop
      max_sum = max_sum
    end
    # max_sum = [current_sum, max_sum].max
  end

  result = result1 if result1.reduce(:+) == max_sum
  result = result2 if result2.reduce(:+) == max_sum
  result = result3 if result3.reduce(:+) == max_sum
  return result, max_sum
end
p largest_continuous_sum([-3,4,-3,7,8])
p largest_continuous_sum([5, -1, -2, 3, -2])
p largest_continuous_sum([-40,1,40,-50,1,50,-20,1,20,0,0])
p largest_continuous_sum([3,-5,2,-4,6,-9,9,-10])
p largest_continuous_sum([1,4,-8,2])
p largest_continuous_sum([1,4,-8])
p largest_continuous_sum([6, -1])
p largest_continuous_sum([6, -1, -2])
p largest_continuous_sum([-1, -4])
p largest_continuous_sum([-2, -4, -1])

