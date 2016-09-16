def remove_duplicates(str)
  str.split("").uniq.join
end
p remove_duplicates('tree traversal')

def remove_dupli(str)
  hash = {}
  str.each_char do |c|
    hash[c] ||=0
    hash[c] +=1
  end
  hash.keys.join
end
p remove_dupli('tree traversal')
