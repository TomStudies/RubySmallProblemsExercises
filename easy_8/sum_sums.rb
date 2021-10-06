# PEDAC
# Input: An array of numbers
# Output: A sigle integer
# Rules: Integer is the sum of the sums of each leading subsequence for the array.
# - The array will always include at least one number.
# Examples: 
=begin
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
=end
# Data: Array
# Algorithm: Loop over array with an index variable.
# Add each item in the array up to and including the index to the return total
#   -Do this through another loop subtracting until index = 0 then reset it
# Stop when the index equals the size of the array
def sum_of_sums(int_array)
  total = 0
  index = 0
  loop do
    index_store = index
    loop do
      total += int_array[index]
      index -= 1
      break if index < 0
    end
    index = index_store + 1
    break if index >= int_array.size
  end
  total
end

p sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])# == 4
p sum_of_sums([1, 2, 3, 4, 5])# == 35

# The solutions to this problem provided by LS are much simpler.
# One recognizes that each time the value added is just incremented by the most recent in the array
# And uses an accumulator variable to that end.
# The other uses #upto to generate the size of a slice of the array, with an Array#reduce(:+) called as well to do the addition operation on the slice.
# 