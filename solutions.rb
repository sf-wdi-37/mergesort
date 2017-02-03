def mergesort(arr)
  if(arr.length == 1 || arr.length == 0)
    return arr
  end
  mid = (arr.length/2).floor - 1
  first_half = arr[0..mid]
  second_half = arr[mid+1..arr.length]
  merge(mergesort(first_half), mergesort(second_half))
end

def merge(arr1, arr2)
  return nil if !(arr1.all? { |num| num.is_a? Numeric })
  return nil if !(arr2.all? { |num| num.is_a? Numeric })

  sorted_arr = []
  len1 = arr1.length
  len2 = arr2.length
  i = 0
  j = 0

  while i < len1 && j < len2
    if arr1[i] <= arr2[j]
      sorted_arr << arr1[i]
      i += 1
    else
      sorted_arr << arr2[j]
      j += 1
    end
  end

  if i < len1
    sorted_arr += arr1[i..-1]
  else
    sorted_arr += arr2[j..-1]
  end
  sorted_arr
end


p mergesort([3,124,2,6,34,7,123,22,52,5])
