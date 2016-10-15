def active_and_inactive(arr,k)
  temp = arr.map { |e| e  }
  n = arr.length
  while k > 0
    temp[0] = 0^arr[1]
    temp[n-1] = 0^arr[n-2]
    for j in (1..n-2)
      temp[j]= arr[j-1]^arr[j+1]
    end
    for j in (0..n-1)
      arr[j]= temp[j]
    end
    k -= 1
  end
  active, inactive = 0, 0
  for i in (0..n-1)
    (arr[i] == 1) ? (active += 1) : (inactive += 1)
  end
  return active, inactive
end
p active_and_inactive([1, 0, 1, 1],2)
p active_and_inactive([0, 1, 0, 1, 0, 1, 0, 1],3)
p active_and_inactive([0, 1, 1, 1, 0, 1, 1, 0],4)
