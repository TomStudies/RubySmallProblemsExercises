# PEDAC
# Input: String
# Output: Array (containing every word from the string, a space, and length)
# Rules: Assume words in the string are separated by one space
# Any substring of non-space characters counts as a word
# Data: String, array
# Algorithm: take string sentence, split it into an array.
# Take each string in the array, and put word space length into a new array.
# Return the array.
def word_lengths(sentence)
  words = sentence.split
  wordsandlengths = []
  words.each do |word| # D'oh. Could have just used map, like the solution.
    str = word + ' ' + word.size.to_s
    wordsandlengths << str
  end
  wordsandlengths
end

p word_lengths("cow sheep chicken")# == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie")# ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?")# == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious")# ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("")# == []