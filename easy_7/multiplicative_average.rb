# PEDAC
# Input: An array of integers
# Output: Float to three decimal places
# Rules: Multiply all numbers in array together and divide by the number of entries.
# Data: Array, int, float
# Algorithm: Set a variable for the multiplicative sum to 1, and each every value into it.
# Divide the multiplicative sum by the size of the array
# Puts the result and format the float to 3 decimal places
def show_multiplicative_average(int_array)
  multiplicative_sum = int_array.inject(:*)
  result = multiplicative_sum.to_f / int_array.size
  puts format("The result is %.3f", result)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Further exploration: if you don't use #to_f in the solution,
# Then the 4th line will execute integer division and not compute the correct number.s