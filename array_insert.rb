def array_insert(arr,k,el)
  n = arr.length-1
  j = n
  while j >=k
    arr[j+1] = arr[j]
    j-=1
  end
  arr[k] = el
  p arr
end
array_insert([1,4,6,8,12],3,18)
