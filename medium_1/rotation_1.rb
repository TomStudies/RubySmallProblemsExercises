# PEDAC
# Input: An array
# Output: The array, rotated such that the first element appears at the end
# Rules: Do not modify the array passed in, if only 1 element change nothing
# Data: Arrays
# Algorithm: Test array.size bigger than 1, if not just return the array.
# If larger, Take array, assign array[1, array.size - 1] to a new array
# Append array[0] to the new array
# Return the new array
def rotate_array(arr)
  return arr if arr.size <= 1
  new_arr = arr[1, arr.size - 1]
  new_arr << arr[0]
  new_arr
end

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c'])
p rotate_array(['a'])

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]

# Solution simply returns array[1..-1] + array[0]. array[1..-1] returns everything from the second to the final element, regardless of size.
# I had assumed it would not work with smaller arrays.

# Further exploration: Write a method to rotate a string or an integer.
# You may call rotate_array in either.

def rotate_string(str)
  return_str = ''
  rotate_array(str.chars).each do |char|
    return_str << char
  end
  return_str
end

p rotate_string('i have a string')
p rotate_string('o')

def rotate_integer(int)
  int_arr = []
  loop do
    if int % 10 == int
      int_arr << int
      break
    else
      int_arr << int % 10
      int /= 10
    end
  end
  rotated_ints = rotate_array(int_arr.reverse)
  final_int = 0
  rotated_ints.each do |digit|
    final_int += digit
    final_int *= 10
  end
  final_int / 10
end

p rotate_integer(31)
p rotate_integer(1)
p rotate_integer(91728)

# Other student solutions simply use .to_s to allow the integers to be rotated
# The same as the strings. Their string and regular array solutions are also
# Much simpler than mine.
# Takeaways: Array#join makes the string version so much simpler.