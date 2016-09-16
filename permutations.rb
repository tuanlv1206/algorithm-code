def permuations(word)
  if word.length <= 1
    return [word]
  end
  perms = permuations(word.slice(1,word.length - 1))
  char = word[0]
  result = []
  for perm in perms
      for i in (0..perm.length)
        result.push(perm.slice(0,i)+char+perm.slice(i,perm.length - i))
      end
  end
  result
end

p permuations("abcd")
