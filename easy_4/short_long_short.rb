# PEDAC
# Input: Two strings (different lengths)
# Output: One string (short string, long, short)
# Rules: Strings will be different lengths, string blank for one argument will just return the other string
# Data: Strings
# Algorithm: short_long_short method will take two strings. 
#   -If string_a.length > string_b.length
#     - return string_b + string_a + string_b
#   Else vice versa

def short_long_short(string_a, string_b)
  if string_a.length > string_b.length
    string_b + string_a + string_b
  else
    string_a + string_b + string_a
  end
end # Solution: could shorten with a ternary operator, or use string interpolation. 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"