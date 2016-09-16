def is_subset_sum(arr, sum)
  n = arr.length
  # p "is_subset_sum(#{arr},#{sum})"
  return true if sum == 0
  return false if n == 1 && sum-arr[0] != 0
  if arr[n-1]  > sum
    return is_subset_sum(arr[0..n-2],sum)
  end
  return is_subset_sum(arr[0..n-2],sum-arr[n-1])
end

p is_subset_sum([1,3,4,6], 14)
p is_subset_sum([3, 34, 4, 12, 5, 2],9)

def is_subset(arr, sum)
  n = arr.length
  subset = Array.new(sum+1){ Array.new(n+1)}
  i = 0
  while i<=n
    subset[0][i] = true
    i+=1
  end

  i = 1
  while i<=sum
    subset[i][0] = false
    i+=1
  end
  # p subset

  i = 1
  while i <= sum
    j=1
    while j<=n
      subset[i][j] = subset[i][j-1]
      if i >= arr[j-1]
        subset[i][j] = subset[i-arr[j-1]][j-1]
      end
      j+=1
      # p subset
    end
    i+=1
  end

  subset[sum][n]
end
p is_subset([1,2],3)
p is_subset([1,3,4,6], 14)
p is_subset([3, 34, 4, 12, 5, 2],9)
