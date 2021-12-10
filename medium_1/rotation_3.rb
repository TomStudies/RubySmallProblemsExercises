# PEDAC
# Input: A number
# Output: The "maximum rotation" of the number (as described in the desc)
# Rules: Okay to use the previous methods
# If a 0 is rotated into the first position, it gets dropped
# Data: Integer, arrays
# Algorithm: Convert the number to a string to get the size. Assign to count var
# count times, run rotate_rightmost_digits on the number with a digits var.
# Subtract one from the digits var each time until digits = 0.
# Return number.

def max_rotation(number)
  count = number.to_s.size
  digits = count
  count.times do # Solution uses .downto(2) because doing the last one is redundant as it doesn't actually flip.
    number = rotate_rightmost_digits(number, digits)
    digits -= 1
  end
  number
end

def rotate_rightmost_digits(number, digits)
  chars_array = number.to_s.chars
  to_rotate = chars_array.slice((chars_array.length - digits), digits)
  recombined = chars_array.slice(0, (chars_array.length - digits)) + rotate_array(to_rotate)
  recombined.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845

# Further exploration A: Create a solution without using either other method
# PEDAC
# Input: An integer
# Output: An integer after maximum rotation
# Rules: Must just use a single method all on its own
# Data: Integer, array
# Algorithm: Convert the integer into an array of number characters, active arr.
# Create a blank array called final array.
# For a number of times equal to the number of digits:
# Perform the shift on the active array, then delete the first element and
# Insert it in the final array.
# Once finished, convert the final array back into an int (join to i) and return.
def max_rotation_2(num)
  active_arr = num.to_s.chars
  count = active_arr.size
  final_arr = []
  count.times do
    active_arr << active_arr.shift
    final_arr << active_arr.shift
  end
  final_arr.join.to_i
end

p max_rotation_2(735291) == 321579
p max_rotation_2(3) == 3
p max_rotation_2(35) == 53
p max_rotation_2(105) == 15
p max_rotation_2(8_703_529_146) == 7_321_609_845


# Further Exploration B: Create a solution that preserves multiple zeros
def max_rotation_0(num)
  active_arr = num.to_s.chars
  count = active_arr.size
  final_arr = []
  count.times do
    active_arr << active_arr.shift
    final_arr << active_arr.shift
  end
  final_arr.join # The only way I can think of is to avoid conversion to an int
end

p max_rotation_0(8004002)