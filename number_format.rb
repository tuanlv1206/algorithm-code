def number_format(num)
  str = num.to_s.split('.')
  l = str[0].length-1
  place = 0
  while l > 0
    place  += 1
    if place%3 == 0
      str[0] = str[0].slice(0,l)+','+str[0].slice(l..-1)
    end
    l -= 1
  end
  str.join('.')
end
p number_format(1000000.12)
p number_format(100000)
p number_format(1000)
