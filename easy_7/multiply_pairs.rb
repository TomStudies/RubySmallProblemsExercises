# PEDAC
# Input: Two arrays of numbers
# Output: One array with the products of the numbers of each element, sorted by increasing
# Rules: Sort output from least to greatest, neither argument will be empty.
# Data: Arrays, integers
# Algorithm: Take two arrays, arr_a and arr_b.
# Loop over each element of arr_a with a second loop inside the first to loop through each of arr_b
# Put the result of multiplying each element in a return array
# Sort the return array

def multiply_all_pairs(arr_a, arr_b)
  multiplied = []
  arr_a.each do |a|
    arr_b.each do |b|
      multiplied << a * b # A more compact solution exists: arr_a.product(arr_2).map { |num1, num2| num1 * num2 }.sort (taken from solution, not my work)
    end
  end
  multiplied.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]