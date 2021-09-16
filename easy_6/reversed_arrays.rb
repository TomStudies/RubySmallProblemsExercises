# PEDAC
# Input: Array
# Output: Same array object, mutated
# Rules: Return the same exact mutated array
# Canot use Array#reverse or Array#reverse!
# Data structures: Array
# Algorithm:
# Method array_reverser takes an array to_be_reversed
# to_be_reversed is set equal to a storage_array
# Cannot be map!ed over because there is no way to access elements
# each with index does not work because there is no way to overwrite elements
# clear the storage array, then one by one << the elements into it
def array_reverser!(to_be_reversed)
  storage_array = []
  to_be_reversed.each { |element| storage_array << element }
  index = to_be_reversed.length - 1
  to_be_reversed.clear
  loop do
    break if index < 0
    to_be_reversed << storage_array[index]
    index -= 1
  end
  to_be_reversed
end

list = [1,2,3,4]
result = array_reverser!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p array_reverser!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p array_reverser!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p array_reverser!(list) == [] # true
p list == [] # true

# solution didn't even use a secondary storage array, instead just working from the outer indexes of the array inward.
# The solution also features parallel assignment to switch values without an intermediate variable.

# Likely cheating by the spirit of the law, but not by the letter of the law :)
def reverse!(arr)
  arr.sort_by! {|x| x = -arr.index(x)}
end

p reverse!([1, 2, 1, 3, 5, 9, 1, 8, 1]) # Testing my theory was that this other student's solution was incorrect. I was right.

# ======================= Arrays 2 ===============================
# PEDAC
# Input: An array
# Output: An array (reversed, without touching original array)
# Rules: Do not modify the original array
# Don't use array#reverse or array#reverse! or any methods from Arrays 1
# Data structures: array
# Algorithm: reverse method takes an array switch_my_elements
# switch_my_elements is placed into an empty return array over an each
# the return array is parallel assigned from the outer index in
# return the return array
def reverse(switch_my_elements)
  reversed_array = []
  switch_my_elements.each { |element| reversed_array << element }
  low_index = 0
  high_index = reversed_array.size - 1
  until high_index <= low_index
    reversed_array[low_index], reversed_array[high_index] = reversed_array[high_index], reversed_array[low_index]
    low_index += 1
    high_index -=1
  end
  reversed_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# Solution is pretty funny for this one. I went to all that effort and they simply used Array#reverse_each, which isn't technically disallowed.
# Array#reverse_each only applies to arrays, there is no enumerable or hash counterpart.

# Further Exploration:
# Create an even shorter solution with Enumerable#inject or Enumerable#each_with_object

def reverse_short(arr)
  arr.each_with_object([]) { |x, reversed| reversed.prepend(x) } # Neat!
end

p reverse_short([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_short(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse_short(['abc']) == ['abc']              # => true
p reverse_short([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse_short(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true