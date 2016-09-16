def word_position(text,word)
  text = text.split
  hash = {}
  text.each_with_index do |item, index|
    hash[item] ||= []
    hash[item].push(index)
  end
  hash[word]
end
text = "The complexity of adding or finding an element in a trie is also constant O(1), like hashtable. It doesn’t depend on the number of words stored in the trie, it only depends on the number of characters in the word, just like hashing. And maximum number of characters in a word for a particular language is constant. Average number of characters in an English word is around 4-5, and most of them are shorter than 15. Which means it’ll generally take around 4-5 operations, and mostly less than 15, to find a word in the trie independent of the number of words stored. It can be millions or even billions, the complexity stays the same. Which is perfect, because it’s not linear on the number of words, instead it’s just a constant number"
p word_position(text,"number")
