def int_length(num)
  puts num
  return 1 if num.abs < 10
  1 + int_length(num/10)
end

p int_length(4321431)
