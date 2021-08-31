# PEDAC
# Input: Two arguments of any kind
# Output: true if only one argument is truthy (boolean)
# Rules: Only return true if one argument is truthy
# Data: booleans and unknown arguments
# Algorithm: xor? method takes two arguments (arg_a and arg_b) and returns true if arg_a is true and arg_b is false or vice versa

def xor?(arg_a, arg_b)
  if (arg_a && !arg_b) ||
     (arg_b && !arg_a)
     true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# A lot of the solutions used !! to force values to return to booleans.
=begin This code by Daniel Gurov is also interesting.
def xor?(statement1, statement2)
  return false if !!statement1 == !!statement2
  true
end
=end