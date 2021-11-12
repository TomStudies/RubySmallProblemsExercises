# PEDAC
# Input: An integeger
# Output: An integer
# Rules: Return double the input integer, unless the integer is a double number
# If it is a double number, simply return the number itself
# Double numbers have an even number of digits whose left side digits are
# exactly the same as its right side digits.
# Examples:
# twice(44) = 44
# twice(37) = 74
# Data: Integers
# Algorithm: 
# First, check to see if the length of the input integer to string is even.
# Then, check if the first half of the string == the second half of the string.
# If both true, return the input int, if not, return 2 * the input int.

def twice(input_int)
  str = input_int.to_s
  midpt = str.size / 2
  if (str.size % 2 == 0) && (str[0, midpt] == str[midpt, midpt])
    input_int
  else
    input_int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10