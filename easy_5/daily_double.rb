# PEDAC
# Input: String
# Output: String with all consecutive duplicate characters collapsed into a single character
# Rules: No String#squeeze, any number of consecutive same characters are collapsed into one, empty string returns empty string
# Data: Strings
# Algorithm: crunch method takes input str
# -Initialize return string compressed
# -For each character in str, check and see if it matches compressed[-1].
# -If it does not, load it to compressed. If it does, do not.
def crunch(str)
  compressed = ''
  str.each_char do |char|
    compressed << char if compressed[-1] != char
  end
  compressed
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# For the first part of further exploration:
# -I think it may try to load a nil object into the string and error out?

# Further Exploration 2 I already did

# Further exploration 3: Solve the problem using regexp
# I am still baffled by regexp, and couldn't figure out how to do this.
# However, there is a student in the solutions who did.
# Credits to loreandstory:
# string.gsub(/(.)\1+/, '\1')