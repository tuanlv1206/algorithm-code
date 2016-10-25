def find_triplet(arr)
  n = arr.length
  for j in (1..n-2)
    i = j - 1
    k = j + 1
    while i >= 0 && k <= n - 1
      puts "#{arr[i]} #{arr[j]} #{arr[k]} -------"
      while (arr[j]%arr[i] == 0) && (arr[k]%arr[j] == 0) && arr[j]/arr[i] == arr[k]/arr[j]
        puts "#{arr[i]} #{arr[j]} #{arr[k]}"
        k += 1
        i -= 1
      end
      if arr[j]%arr[i]==0 && arr[k]%arr[j]==0
        if arr[j]/arr[i] < arr[k]/arr[j]
          i -= 1
        else
          k += 1
        end
      elsif arr[j]%arr[i] == 0
        k += 1
      else
        i -= 1
      end
    end
  end
end
find_triplet([1, 2, 6, 10, 18, 54])
# find_triplet([2, 8, 10, 15, 16, 30, 32, 64])
# find_triplet([ 1, 2, 6, 18, 36, 54])
