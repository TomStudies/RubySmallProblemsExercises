# PEDAC
# Input: Two arrays of numbers
# Output: One NEW array with the products of the respective numbers
# Rules: The arrays will have the same number of elements
# Data: Number math, in arrays
# Algorithm: each with index one of the arrays, and assign results of multiplying at that index to a return array.

def multiply_lists(arr_a, arr_b)
  multiplied = []
  arr_a.each_with_index do |num, index|
    multiplied << num * arr_b[index]
  end
  multiplied
end

p multiply_lists([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration: Attempt to come up with a 1 line solution (not including def and end) with Array#zip
def multiply_lists_oneline(arr_a, arr_b)
  arr_a.zip(arr_b).map { |pair| pair[0] * pair[1] }
end

p multiply_lists_oneline([3, 5, 7], [9, 10, 11])