# PEDAC
# Input: Two arrays
# Output: One array (with both elements zipper merged)
# Rules: Both arrays non empty and with same number of elements
# Data: Arrays
# Algorithm: declare return array zipped
# Declare a counter variable
# loop adding first a[counter] then b[counter] and incrementing counter until a size
def interleave(arr_a, arr_b)
  if arr_a.size != arr_b.size
    puts("Must be same size!")
    return nil
  end
  
  zipped = []
  counter = 0 # Solution's #each_with_index avoids the use for a counter or a loop
  loop do
    break if counter == arr_a.size
    zipped << arr_a[counter]
    zipped << arr_b[counter] # Solution uses two << on one line
    counter += 1
  end
  zipped
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([2, 3, 4, 5], [5, 4, 3, 2,])

# Further exploration: Rewrite interleave to use Array#zip.
def interleave2(arr_a, arr_b)
  zipped = arr_a.zip(arr_b)
  zipped.flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([2, 3, 4, 5], [5, 4, 3, 2,])

# Alternatively can be done with transpose, or an each_with_object (other student solutions)