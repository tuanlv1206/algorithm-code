def is_subset_sum(arr, sum)
  n = arr.length
  return true if sum == 0
  return false if n == 1 && sum-arr[0] != 0
  if arr[n-1]> sum
    return is_subset_sum(arr[0..n-2],sum)
  end
  return is_subset_sum(arr[0..n-2],sum-arr[n-1])
end

def find_divisor(num)
  divisors = []
  i = 1
  while i < num
    divisors.push(i) if num % i == 0
    i += 1
  end
  divisors
end

def hotel_room(num)
  for room in (0..num)
    divisors = find_divisor(room)
    if !divisors.empty? && divisors.reduce(:+) > room && !is_subset_sum(divisors,room)
      return room
    end
  end
  return 0
end
p hotel_room(100)
