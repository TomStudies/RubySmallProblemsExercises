# PEDAC
# Input: String argument
# Output: Boolean
# Rules: Test if all alphabetic characters are uppercase
# Data: String, boolean
# Algorithm: Return whether the string equals upcase version of itself
def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# I think it is fine to return true for an empty string, but if we didn't:

def uppercase_2?(str)
  if str.size > 0
    str == str.upcase
  else
    false
  end
end

p uppercase_2?('t') == false
p uppercase_2?('T') == true
p uppercase_2?('') == false