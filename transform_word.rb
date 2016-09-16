def construct_graph(dic)
  graph = {}
  letters=('a'...'z')
  for word in dic
    graph[word] = []
    for i in (0...word.length)
      remove=word[0,i]+word[i+1,word.length-i-1]
      if dic.include?(remove)
        graph[word].push(remove)
      end
      for char in letters
        change = word[0,i]+char+word[i+1, word.length-i-1]
        if dic.include?(change) && change != word
          graph[word].push(change)
        end
      end
    end
    for i in (0...word.length+1)
      for char in letters
        add = word[0,i]+char+word[i,word.length+1-i]
        if dic.include?(add)
          graph[word].push(add)
        end
      end
    end
  end
  return graph
end
# p construct_graph(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'])

def transform_word(arr,start,goal)
  graph = construct_graph(arr)
  paths = [[start]]
  extended=[]
  result = []
  while paths.length != 0
    current_path = paths.shift
    current_word = current_path[current_path.length - 1]
    if current_word == goal
      result.push(current_path)
    elsif extended.include?(current_word)
      next
    end
    extended.push(current_word)
    transform = graph[current_word]

    for word in transform
      if !current_path.include?(word)
        paths.push(current_path + [word])
      end
    end
  end
  result.sort {|x,y| x.length <=> y.length}[0]
end

p transform_word(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'],'cat', 'bed')
p transform_word(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'],'ad', 'bed')
p transform_word(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'],'at', 'bet')
