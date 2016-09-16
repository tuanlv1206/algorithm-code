def palidrome?(sentence)
  if (sentence.gsub(/\s/,'').downcase.reverse == sentence.gsub(/\s/,'').downcase)
    return true
  else
    return false
  end
end
puts palidrome?("Never odd or even")

def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ","")
  downcase_stripped_sentence == downcase_stripped_sentence.reverse
end
puts palindrome?("Never odd or even")
