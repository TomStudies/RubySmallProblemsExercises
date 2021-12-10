# PEDAC
# Input: An array, an integer n
# Output: The last n digits of the array rotated
# Rules: Can use the rotate_array method from the last exercise
# Rotating by 1 returns the same array
# Assume n is always a positive integer
# Data: Array, integer
# Algorithm: Turn the number into a string, then an array of the chars.
# Call the rotate_array method on the section of the array from size - n to -1
# Append the result to the remainder of the array, join and to_i.

def rotate_rightmost_digits(number, digits)
  chars_array = number.to_s.chars
  to_rotate = chars_array.slice((chars_array.length - digits), digits)
  recombined = chars_array.slice(0, (chars_array.length - digits)) + rotate_array(to_rotate)
  recombined.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# Solution replaces the middle two lines of my method with a single line:
# chars_array[-n..-1] = rotate_array(chars_array[-n..-1]). Very intuitive
# to just directly replace it like that.