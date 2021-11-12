# PEDAC
# Input: A grocery list (array of strings, ints)
# Output: An array of strings
# Rules: see examples for format
# Examples:
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
# Data: Arrays
# Algorithm: Declare an output array, empty.
# Iterate over each sub array. For the number of fruits x, << fruit x times.
# Return the output array.
def buy_fruit(lists)
  fruits = []
  lists.each do |sub_arr|
    sub_arr[1].times do
      fruits << sub_arr[0]
    end
  end
  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]