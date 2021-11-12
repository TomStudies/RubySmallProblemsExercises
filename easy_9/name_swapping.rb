# PEDAC
# Input: A string (name)
# Output: String (name reversed)
# Rules: Input will be firstname space lastname
# Output will be firstname comma space lastname
# Data: Strings
# Algorithm: Split the input string, then output a string formatted
def swap_name(name)
  names = name.split
  "#{names[1]}, #{names[0]}"
end

p swap_name('Joe Roberts')# == 'Roberts, Joe'
p swap_name('Albert Einstein')
p swap_name('John Madden')

# Solution is pretty elegant.
# name.split(' ').reverse.join(', ')