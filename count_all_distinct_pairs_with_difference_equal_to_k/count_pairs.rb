# this method is not work for array has duplicate element
# if there are duplicates in array we should remove all duplicates
def count_pairs(arr,k)
  count = 0
  # arr.uniq!
  n = arr.length
  for i in (0..n-1)
    for j in (i+1..n-1)
      if arr[i]-arr[j]==k || arr[j]-arr[i]==k
        count += 1
      end
    end
  end
  count
end
p count_pairs([1,5,3,4,2],3)
p count_pairs([1,1,2,3,3],2)


# use hashing

def count_pairs_hash(arr,k)
  count = 0
  n = arr.length
  hash = Hash.new
  for i in (0..n-1)
    hash[arr[i]] = true
  end
  hash.keys.each do |e|
    x = e
    if hash[x-k]
      count += 1
    end
    if hash[x+k]
      count += 1
    end
    hash[x]=false
    p hash
  end
  count
end
p count_pairs_hash([1,1,2,3,3],2)
