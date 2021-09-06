# PEDAC
# Input: A string (of digits)
# Output: An integer
# Rules: Cannot use String#to_i or Integer(). Do not worry about leading + or -, no invalid characters. All will be numeric.
# Data: Strings and integers
# Algorithm: Method string_to_integer takes a string of integers str.
# -Loop over the string with an external index checker. Run each character through a case statement.
# -Check each character and store the appropriate integer into int_form, * (10 ** index).
# -Return int_form
def string_to_integer(str)
  index = (str.length - 1)
  int_form = 0
  str.each_char do |char|
    case char
    when '1'
      int_form += 1 * (10 ** index)
    when '2'
      int_form += 2 * (10 ** index)
    when '3'
      int_form += 3 * (10 ** index)
    when '4'
      int_form += 4 * (10 ** index)
    when '5'
      int_form += 5 * (10 ** index)
    when '6'
      int_form += 6 * (10 ** index)
    when '7'
      int_form += 7 * (10 ** index)
    when '8'
      int_form += 8 * (10 ** index)
    when '9'
      int_form += 9 * (10 ** index)
    end
  index -= 1
  end
  int_form
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('900900210') == 900900210

# Again the solution is much more elegant than what I came up with.
# The solution uses a DIGITS constant hash to convert string digits to their numeric values.
# They use this constant in tandem with a .map to yield an array of the numbers from the array of characters.
# They then iterate over this array to mathematically calculate the number.
# Two big things to remember: Using hashes to perform conversions makes good sense, and .map EXISTS. I always forget it.
# Solution:
=begin
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end
=end

# Further exploration: Write a hexidecimal_to_integer method to convert a hexadecimal number to integer.
HEXES = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
          '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12,
          'D' => 13, 'E' => 14, 'F' => 15 }
def hexadecimal_to_integer(hex)
  digit_arr = hex.chars.map { |char| HEXES[char.upcase] } # Finally got to try using Array#map
  base_10 = 0
  index = digit_arr.length - 1
  digit_arr.each do |digit| # Could probably simplify with an each with index
    base_10 += (digit * (16 ** index)) 
    index -= 1
  end
  p base_10
end

p hexadecimal_to_integer('4D9f') == 19871