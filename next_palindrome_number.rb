def next_palindrome(num)
  num = num.to_s
  l = num.to_s.length
  odd_digits = l/2 if l%2 != 0
  left_half = left_half(num)
  middle = get_middle(num)
  if odd_digits
    increment = 10**(l/2)
    new_num = left_half + middle + left_half.reverse
  else
    increment = 11 *(10**(l/2))/10
    new_num = left_half+left_half.reverse
  end
  if new_num.to_i > num.to_i
    return new_num.to_i
  end
  if middle != '9'
    return new_num.to_i + increment
  else
    return next_palindrome(round_up(num.to_i))
  end

end

def left_half(num)
  return num.slice(0,num.length/2)
end

def get_middle(num)
  return num[(num.length-1)/2]
end

def round_up(num)
  l = num.to_s.length
  increment = 10**((l/2)+1)
  return ((num/increment)+1)*increment
end

p next_palindrome(1234)
p next_palindrome(1997)
p next_palindrome(393)
p next_palindrome(125)
