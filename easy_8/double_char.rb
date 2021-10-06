# PEDAC
# Input: String
# Output: String (each character doubled)
# Rules: Double each character in the original string, keeping case and other characters
# Data: Strings
# Algorithm:
# For each character in the input string, concat it twice to the output string.
# Return the output string.
def repeater(input)
  output = ''
  input.each_char { |char| output << char * 2 }
  output
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Double char part 2:
# PEDAC:
# Input: String
# Output: String (each consonant doubled)
# Rules: Double each consonant, avoid doubling vowels or non letters
# Data: Strings
# Algorithm:
# For each character in the input string, concat it twice to the output string if it is a consonant
# Check if it is a consonant with a universal variable
# Return the output string.

CONSONANTS = ['B', 'b', 'C', 'c', 'D', 'd', 'F', 'f', 'G', 'g', 'H', 'h', 'J', 'j', 'K', 'k', 'L', 'l', 'M', 'm', 'N', 'n', 'P', 'p', 'Q', 'q', 'R', 'r', 'S', 's', 'T', 't', 'V', 'v', 'W', 'w', 'X', 'x', 'Y', 'y', 'Z', 'z']
# Solution makes this easier by using the %w() way to declare an array, then simply checking if it includes char.downcase

def double_consonants(input)
  output = ''
  input.each_char do |char|
    if CONSONANTS.include?(char)
      output << char
    end
    output << char
  end
  output
end

p double_consonants('String')# == "SSttrrinngg"
p double_consonants("Hello-World!")# == "HHellllo-WWorrlldd!"
p double_consonants("July 4th")# == "JJullyy 4tthh"
p double_consonants('')# == ""
