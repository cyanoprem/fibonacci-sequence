def merge_sort(array)
  left_array = array.take(array.length/2)
  right_array = array.last(array.length - array.length/2)
  if left_array[0] > right_array[0]
    array[0] = right_array[0]
    array[1] = left_array[0]
  end
  p array
end

merge_sort([2, 1])

# Pseudocode
# if number of elements in the array is 1 it is already sorted. If not then break it down into two halves. If the number of elements in the array is two then merge. Merge is just comparing the two elements and arranging
# orginal array = [1, 2, 3, 4, 5]
# left_array = [2, 1]
