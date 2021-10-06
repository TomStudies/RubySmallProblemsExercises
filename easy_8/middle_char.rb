# PEDAC
# Input: Non empty string
# Output: Middle character /  characters (string)
# Rules: If odd length, return one character.
# If even length, return two characters.
# Spaces and other characters count
# Data: Strings
# Algorithm: Get the size of the string.
# If the size of the string is odd, return the substring at string[size / 2]
# If the size of the string is even, return the substring at string[size / 2..size / 2 - 1]
def center_of(string)
  if string.size % 2 == 1
    return string[string.size / 2]
  else
    return string[(string.size / 2 - 1)..(string.size / 2)] # easier format from solution: [center_index - 1, 2] for a 2 character long substring
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'