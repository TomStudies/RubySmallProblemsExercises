# PEDAC
# Input: A number int
# Output: boolean (whether it is a palindromic number)
# Rules: Must be an int
# Data: Int
# Algorithm: Method palindromic_number? takes argument int. int.to_s.reverse == int.to_s

def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# How would the program address numbers that begin with one or more 0s?
# Leading 0 means the number is treated as an octal (as I just found out from irb.)
# Therefore, it would lose its form when converted to a string and displayed in base 10.
# I am not sure how to remedy that. According to the solutions one person named Alex Burton
# discovered that Numerics can be converted to other bases via .to_s(base)