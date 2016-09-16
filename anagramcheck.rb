def anagram_check(w1, w2)
  if w1.length != w2.length then
    return false
  end
  a1 = w1.split('').sort!
  p a1
  a2 = w2.split('').sort!
  if a1 == a2
    return true
  end
  return false
end
puts anagram_check("hello","leohe")

a = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
p a.group_by { |element| element.downcase.chars.sort }.values


p ("hello").count("l")

def anagram_check_count(w1,w2)
  if w1.length != w2.length then
    return false
  end
  a1 = ('a'..'z').map{|e| w1.count(e)}
  a2 = ('a'..'z').map{|e| w2.count(e)}
  p a1
  p a2
  if a1 == a2
    return true
  end
  return false
end

puts anagram_check_count("hello","llohe")

def anagram?(a, b)
  char_count = proc {|hsh, c|
    hsh[c] ||= 0
    hsh[c] += 1
    hsh
  }
  if a.each_char.reduce({}, &char_count) == b.each_char.reduce({}, &char_count)
    true
  else
    false
  end
end
def anagram_detection(parent, child)
  x = parent.length - child.length
  (0..x).reduce(0){|c,i| anagram?(parent[i,child.length], child) ? c+1 : c}
end

puts anagram_detection('AdnBndAndBdaBn', 'dAn')
puts anagram_detection('AbrAcadAbRa', 'cAda')


