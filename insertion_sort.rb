def insertion_sort(arr)
  for i in (1..arr.length-1)
    value_to_insert = arr[i]
    hole_position = i
    while hole_position > 0 && arr[hole_position-1] > value_to_insert
      arr[hole_position] = arr[hole_position-1]
      hole_position = hole_position-1
    end
    arr[hole_position] = value_to_insert
  end
  arr
end

# p insertion_sort([14,33,27,10,35,19,42,44])

def selection_sort(arr)
  for i in (0..arr.length-1)
    min = i
    for j in (i+1..arr.length-1)
      if arr[j] < arr[min]
        min = j
      end
    end
    temp = arr[i]
    arr[i] = arr[min]
    arr[min] = temp
  end
  arr
end
# p selection_sort([14,33,27,10,35,19,42,44])

def merge_sort(arr)
  n = arr.length
  return arr if n == 1
  l1 = arr[0..n/2-1]
  l2 = arr[(n/2)..(n-1)]
  l1 = merge_sort(l1)
  l2 = merge_sort(l2)
  return merge(l1,l2)
end
def merge(l1,l2)
  p l1
  p l2
  c = []
  while l1.length!=0 && l2.length!=0
    if l1[0] > l2[0]
      c.push(l2[0])
      l2.shift
    else
      c.push(l1[0])
      l1.shift
    end
  end

  while l1.length != 0
    c.push(l1[0])
    l1.shift
  end
  while l2.length != 0
    c.push(l2[0])
    l2.shift
  end

  c
  p c
end
# p merge_sort([14,33,27,10,35,19,42,44,57])


def quicksort(array, from=0, to=nil)
    p array
    if to == nil
        # Sort the whole array, by default
        to = array.count - 1
    end
    if from >= to
        # Done sorting
        return
    end
    # Take a pivot value, at the far left
    pivot = array[from]
    # Min and Max pointers
    min = from
    max = to
    # Current free slot
    free = min

    while min < max
        if free == min # Evaluate array[max]
            if array[max] <= pivot # Smaller than pivot, must move
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max # Evaluate array[min]
            if array[min] >= pivot # Bigger than pivot, must move
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Inconsistent state"
        end
        p array
    end

    array[free] = pivot

    quicksort array, from, free - 1
    quicksort array, free + 1, to
    array
end
# p quicksort([35,33,42,10,14,19,27,44,26,31])


def partition(arr,low,high)
  p [low, high]
  i = low-1
  pivot = arr[high]
  for j in (low...high)
    if arr[j] <= pivot
      i = i+1
      arr[i],arr[j] = arr[j],arr[i]
    end
    p arr
  end
  arr[i+1], arr[high] = arr[high],arr[i+1]
  p arr
  return i+1
end

def quick_sort(arr,low=0,high=nil)
  if high == nil
    high = arr.length-1
  end
  if low < high
    pi = partition(arr,low,high)
    quick_sort(arr,low,pi-1)
    quick_sort(arr,pi+1, high)
  end
  arr
end
# p quick_sort([35,33,42,10,14,19,27,44,26,31])



def shell_sort(arr)
  n = arr.length
  gap = n/2
  while gap > 0
    for i in (gap..n-1)
      temp = arr[i]
      j = i
      while j >= gap && arr[j-gap] > temp
        arr[j] = arr[j-gap]
        j -= gap
      end
      arr[j] = temp
    end
    gap /= 2
  end
  arr
end


p shell_sort([ 12, 34, 54, 2, 3])













