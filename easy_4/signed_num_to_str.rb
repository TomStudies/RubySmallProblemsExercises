# PEDAC
# Input: Signed integer
# Output: String form of the integer (signed)
# Rules: Start with - are negative, return + even if initial integer not signed
# -0 has no sign
# Data: Arrays of digits, str stuff
# Algorithm: signed_integer_to_string takes an integer and examines whether it is greater than 0.
# -If integer is less than 0, a negative sign is stored in sign and the first element is deleted.
# -If that element is a 0, sign is left as an empty string.
# -If that element is >0, a positive sign is stored in sign.
# -integer_to_string is called with the integer.
# singed_integer_to_string returns sign + the result of integer_to_string.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number) # Took solution's integer_to_string and not mine because it is better
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(int)
  sign = ''
  if int < 0
    sign = '-'
    int = 0 - int
  elsif int > 0
    sign = '+'
  end
  sign + integer_to_string(int)
end

# Solution uses something called a spaceship operator to evaluate number <=> 0.
# -This operator compares the two sides, and returns +1 if left side greater, -1 if right side greater, and 0 if equal.
# -This operator is very useful for finding whether a number is positive, negative, or zero.

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# Further exploration: Refactor the solution to use just one integer_to_string call
def signed_integer_to_string2(number)
  sign = ''
  case number <=> 0
  when -1 then sign = '-'
  when +1 then sign = '+'
  end
  sign + integer_to_string(number.abs)
end

p signed_integer_to_string2(4321) == '+4321'
p signed_integer_to_string2(-123) == '-123'
p signed_integer_to_string2(0) == '0'