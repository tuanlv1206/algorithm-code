def reverse_word_in_string(str)
  str = str.split(' ')
  result = []
  l = str.length
  i = 0
  while l > 0
    l -= 1
    result[i] = str[l].strip
    i+= 1
  end
  result.join(' ')
end

p reverse_word_in_string(' CS degree')
p reverse_word_in_string('CS degree')
p reverse_word_in_string('CS degree ')
p reverse_word_in_string(' CS degree ')

def reverse_word(str)
  words =[]
  l = str.length
  i = 0
  while i<l
    if str[i] != ' '
      word_start = i
      while i < l && str[i] != ' '
        i += 1
      end
      words.push(str.slice(word_start,i - word_start))
    end
    i+= 1
  end
  words.reverse.join(' ')
end
p reverse_word(' CS degree')
p reverse_word('CS degree')
p reverse_word('CS degree ')
p reverse_word(' CS degree ')
