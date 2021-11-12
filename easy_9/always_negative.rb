# PEDAC
# Input: Integer
# Output: Integer
# Rules: If the argument is positive, return negative. If 0 or negative,
# return the original number.
# Data: Integers
# Algorithm: Check if the number > 0, if so return it times -1, if not returnit.

def negative(int)
  int > 0 ? int * -1 : int # Could just write -int apparently
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby