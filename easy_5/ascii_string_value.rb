# PEDAC
# Input: String
# Output: Integer of ASCII string value (sum of the ASCII values of every character in the string)
# Rules: Use String#ord to determine the ASCII values of characters
# Data: Strings, integers
# Algorithm: Iterate over each character of string str, adding the String#ord result of each to total. Return total.
def ascii_value(str)
  total = 0
  str.each_char { |char| total += char.ord }
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further exploration: Find the mystery method to turn char.ord back into char such that char.ord.mystery == char.
str = 'b'
p str.ord.chr == str
p "billy has a blue hat".ord.chr # Does the first character of a longer string