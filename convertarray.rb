def get_swap_index(current_index, n)
  swap_index = (current_index%3)*n + current_index/3
  while swap_index < current_index
    swap_index = get_swap_index(swap_index, n)
  end
  return swap_index
end

def convert(arr)
  n = arr.length/3
  i=0
  while i < arr.length
    swap_index = get_swap_index(i,n)
    arr[i], arr[swap_index] = arr[swap_index], arr[i]
    p arr
    i += 1
  end
  arr
end

p convert(['a1','a2','a3','a4','b1','b2','b3','b4','c1','c2','c3','c4'])
# puts '----------'

# def get_index(current, n)
#   return (current%3)*n + current/3
# end
# def convert_extraspace(arr)
#   n = arr.length/3
#   arr_converted = []
#   i = 0
#   while i < arr.length
#     arr_converted[i] = arr[get_index(i,n)]
#     i += 1
#   end
#   arr_converted
# end
# p convert_extraspace(['a1','a2','a3','a4','b1','b2','b3','b4','c1','c2','c3','c4'])
