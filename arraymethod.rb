# write a function that transforms this:
# ['bob','james','james','susan','susan','susan']
# into this
# { 'bob' => 1,  'james' => 2, 'susan' => 3 }

def countword(words)
  words.each_with_object(Hash.new(0)) do |word,memo|
    memo[word] += 1
  end
end
a = ['bob','james','james','susan','susan','susan']
p countword(a)
