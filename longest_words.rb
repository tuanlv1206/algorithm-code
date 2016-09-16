# def longest_words(str)
#   words = str.downcase.split.uniq
#   max = words.max_by{|word| word.length}
#   words = words.select{|word| word.length == max.length}
# end
# p longest_words("You are just an old antidisestablishmentarian")
# p longest_words("I gave a present to my parents")
# p longest_words("Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo")

def longest_words_good(str)
  max_length = 0
  hash = {}
  words = str.downcase.split
  for word in words
    # if word.length > max_length
    #   puts word
    #   hash = {}
    #   max_length = word.length
    # end

    if word.length > max_length
      hash = {}
      max_length = word.length
      hash[word] = true
    elsif word.length == max_length
      hash[word] = true
    end

    # if word.length == max_length
    #   puts word
    #   hash[word] = true
    # end
  end
  hash.keys
end

p longest_words_good("You are just an old antidisestablishmentarian")
# p longest_words_good("I gave a present to my parents")
# p longest_words_good("Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo")
