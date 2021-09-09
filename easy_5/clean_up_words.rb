# PEDAC
# Input: String of lowercase words
# Output: String of words with all non-alphabetic characters replaced by spaces
# Rules: No consecutive spaces for consecutive non alphabetic characters
# -No upper case letters will be included
# Data: Strings
# Algorithm:
# In method cleanup, iterate over each char of string messy_str
# Check each char against the range of lower case alphabetic chars.
# If allowed, pass it into the return string.
# If not allowed, check the last character of the return string (-1 index).
# If -1 index is a space, do nothing. Else, put a space.

def cleanup(messy_str)
  clean_str = ''
  messy_str.each_char do |char|
    if ('a'..'z').cover?(char)
      clean_str << char
    else
      if clean_str[-1] != ' '
        clean_str << ' '
      end
    end
  end
  clean_str
end

p cleanup("---what's my +*& line?") == ' what s my line '

# There is a really clean way to do this with a gsub and regex in the solution:
=begin
def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end
=end