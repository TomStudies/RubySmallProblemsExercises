# PEDAC
# Input: String of words separated by spaces
# Output: String in which the first and last letters of every word are swapped
# Rules: Every word contains at least one letter and each string one word
# -Strings contain nothing but words and spaces
# Data: Strings, arrays
# Algorithm: swap method takes a string input_str.
# -input_str is split into an array words.
# -words is iterated over, for each word the first and last characters are switched and the resulting string is << into a string output_str
# -output_str is returned

def swap(input_str)
  words = input_str.split
  output_str = ''
  words.each do |word|
    temp_char = word[0] # Do not have to use a temp. Could have written word[0], word[-1] = word[-1], word[0] to get the same result without a third variable.
    word[0] = word[word.length - 1] # Again, this is made infinitely easier if you remember that indexes loop around with -1
    word[word.length - 1] = temp_char
    if words.index(word) == words.length - 1 # Whole if statement can be avoided by simply using Array#join(' ') by using an array and not a string
      output_str << word
    else  
      output_str << word + ' '
    end
  end
  p output_str
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration:
# If you called the solution's swap_first_last_characters method with just the character references, would the method work?
# Prediction: Re-assignment of the individual elements will probably not modify the original string? (I think this is correct after examining other student solutions)

