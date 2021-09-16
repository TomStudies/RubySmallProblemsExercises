# PEDAC
# Input: An array
# Output: A 2D array of two smaller arrays, both half of the first array
# Rules: Odd numbers of elements should have the first array be larger by one
# Data structures: Arrays
# Algorithm: halvsies method takes array split_this
# split_this has its size examined. If odd:
# put size / 2 + 1 elements in the first array, put size / 2 in the second.
# If even, put size / 2 in both.
def halvsies(split_this)
  return_arrs = [[]]
  if split_this.size % 2 == 1
    (split_this.size / 2 + 1).times do
      return_arrs[0] << split_this.shift
    end
    return_arrs[1] = split_this
  else
    (split_this.size / 2).times do
      return_arrs[0] << split_this.shift
    end
    return_arrs[1] = split_this
  end
  p return_arrs
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# The solution uses (array.size / 2.0).ceil to determine the middle. Ceil helps to account for odd sizes.
# It then figures out the first and second halves with array.slice(x, y) operations where x is the starting index and y is the size of the slice
# Finally, it simply returns [first_half, second_half]
# According to LS student Troy C Graves, a slice can take a range. If you don't include an endpoint, it will include all the remaining elements.
