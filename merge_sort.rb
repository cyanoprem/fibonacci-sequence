def merge_sort(array)
  sorted_array = []
  if array.length > 1
    left_array = array.take(array.length / 2)
    right_array = array.last(array.length - array.length / 2)
    left_array = merge_sort(left_array)
    right_array = merge_sort(right_array)
    sorted_array = merge(left_array, right_array, sorted_array)
  else
    sorted_array = array
  end
  sorted_array
end

# Merge 2 already sorted array

def merge(left_array, right_array, array)
  if left_array.first.nil?
    array.concat right_array
  elsif right_array.first.nil?
    array.concat left_array
  elsif left_array.first < right_array.first
    array << left_array.shift
    merge(left_array, right_array, array)
  else
    array << right_array.shift
    merge(left_array, right_array, array)
  end
  array
end

original_array = [4, 3, 5, 2, 1, 7]
sorted_array = merge_sort(original_array)
p sorted_array
