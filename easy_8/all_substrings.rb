# PEDAC
# Input: A string
# Output: Array of all the substrings of the string
# Rules: Output array should be ordered by where in the string the substring begins
# All substrings at position - first, then all at position 1, etc
# Return substrings from shortest to longest at each position
# Use the leading_substrings method from the previous exercise
# Example:
=begin
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end
# Data: Arrays, strings
# Algorithm: upto each substring of the string increasing, then feed it to leading_substrings
# Add each result to a return array then flatten it

def leading_substrings(string) # I took the one from the solution since I liked it more than mine
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def all_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << leading_substrings(string[index..(string.size - 1)])
  end
  result.flatten
end

p all_substrings('abcde')