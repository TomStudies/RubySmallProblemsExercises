# PEDAC
# Input: Integer greater than or equal to 0
# Output: String of that integer
# Rules: Int will be >= 0, don't use standard Ruby conversion methods.
# Data: Integers and strings (hash for converting)
# Algorithm: Construct a hash that converts all integer values to their corresponding string values.
# -Method integer_to_string takes input int
# -A loop assigns int % 10 into an array, then does int / 10 until counter reaches string.size
# -Array with each string is mapped according to the hash

CONVERT = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  chars = []
  chars = int.digits.map { |num| CONVERT[num] }
  chars.reverse!
  
  str = ''
  chars.each { |char| str << char }
  str
end

# Solution uses a digits array instead of a hash, that just uses the INDEX of each element to refer to it (pretty smart)
# Solution also uses a regular loop do with a Integer#divmod to assign two variables
# Solution then prepends the corresponding DIGITS element
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'