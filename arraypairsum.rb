def array_pair_sum(sum, arr)
  result = []
  seen = Hash.new(false)
  p seen
  while elem = arr.shift
    target = sum - elem
    p seen[elem]
    p seen[target]
    p seen
    (seen[elem] || seen[target]) ? next : (seen[elem] = true)
    result << [elem, target] if arr.include?(target)
    p result
    p arr
    p "-----------"
  end
  result
end

alias :f :array_pair_sum
puts f(10, [3, 4, 5, 6, 7]).to_s
# puts f(8, [3, 4, 5, 4, 4]).to_s
