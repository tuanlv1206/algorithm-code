def flatten_array(arr=[])
  return arr unless arr.is_a? Array
  result = []
  arr.each do |el|
    if el.is_a? Array
      result += flatten_array(el)
    else
      result << el
    end
  end
  result
end

p flatten_array( [[1,2,[3]],4])
