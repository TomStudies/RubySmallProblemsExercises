# Input: A string
# Output: An array of substrings of the string (starting at the ebginning)
# Rules: The array needs to be in order from shortest to longest substring
# Data: Strings, arrays
# Algorithm: create a return array, and then create an index int equal to 0.
# loop, adding string from 0 to index int to the return array then increment the index int.
# return the return array.
def leading_substrings(string)
  substrings = []
  str_index = 0
  loop do
    substrings << string[0..str_index]
    str_index += 1
    break if str_index >= string.size
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Again, a simpler solution than the one I crafted can be found with integer#upto.
# Basically this loops over each integer as an index, and << string[0..index]
# It's like what I do but automated, eliminates the need for a str_index var
