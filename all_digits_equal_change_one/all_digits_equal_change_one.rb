def change_one(str)
  zero_count, one_count = 0, 0
  str.each_char do |c|
    zero_count += 1 if c.to_i == 0
    one_count += 1 if c.to_i == 1
  end
  return true if zero_count==1 || one_count == 1
  return false
end
p change_one("101")
p change_one("11")
p change_one("1")

def change_one_sum(str)
  sum = 0
  str.each_char do |c|
    sum += c.to_i
  end
  return true if sum == (str.length-1) || sum == 1
  return false
end
p change_one_sum("101")
p change_one_sum("11")
p change_one_sum("1")
