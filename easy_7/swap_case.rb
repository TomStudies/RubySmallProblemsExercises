# PEDAC
# Input: A string
# Output: NEW String where every upcase letter is replaced by downcase, and vice versa.
# Rules: Don't change non letter characters,
# Cannot use String#swapcase
# Data: Strings
# Algorithm: Create return string var
# For each letter in the original string, check its case
# If contained in capital letter range, lower case it and put it in the return string.
# If contained in lower letter range, upper case it and put it in the return string.
# Else, put it in the return string as is.
def swapcase(input)
  swapped = ''
  input.each_char do |char|
    if ('a'..'z').include?(char) # char =~ /[a-z]/
      swapped << char.upcase
    elsif ('A'..'Z').include?(char) # char =~ /[A-Z]/
      swapped << char.downcase
    else
      swapped << char
    end
  end
  swapped
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# string.chars.map seems to be another alternative to string.each_char
# Some solutions use constants of caps and lower cases.