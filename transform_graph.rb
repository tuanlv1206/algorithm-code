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


def findpath(arr,startw,endw)
  dict = construct_graph(arr)
  path = Queue.new()
  path << [startw]
  visited = []
  # do a BFS
  while path.empty? do
    temp_arr = path.pop
    lastw = temp_arr[-1]
    if visited.contains? lastw
      next
    end
    visited.add(lastw)
    graph_nodes = dict[lastw]
    graph_nodes.each do |currw|
      unless temp_arr.contains? currw  #avoid loops
        temp_arr << currw
        path.add(temp_arr)
      end
    end
  end
end
p findpath(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'],'cat', 'bed')
