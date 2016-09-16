def next_highest_number(num)
  str_num = num.to_s.split('')
  length = str_num.length
  i = length-2
  while i > 0
    if str_num[i] < str_num[i+1]
      sorter = str_num.slice(i+1,length-i-1)
      sorter = sorter.sort
      j=0
      while j < sorter.length
        if sorter[j] > str_num[i]
          temp = str_num[i]
          str_num[i] = sorter[j]
          sorter[j] = temp
          break
        end
        j+=1
      end
      str_num = str_num.slice(0,i+1) + sorter
      return str_num.join('').to_i
    end
    i -= 1
  end
  return num
end

p next_highest_number(12543)
p next_highest_number(1234)
p next_highest_number(9876)
p next_highest_number(1987)
p next_highest_number(23431)
