# PEDAC
# Input: array of words
# Output: Print Arrays of words that are anagrams
# Rules: Don't return two arrays for the same set of anagrams (self imposed)
# Data: Strings, arrays
# Algorithm: Create a hash. Iterate over each word in arr. Store an array of
# all the characters in the word sorted as the key, and the word itself in an
# array as the value. If the key (sorted letters) already exists, just add the
# word to the array of words.
def group_anagrams(arr)
  letters_words = {}
  arr.each do |word|
    letters = word.chars.sort
    if letters_words.key?(letters)
      letters_words[letters] << word
    else
      letters_words[letters] = [word]
    end
  end
  letters_words.each do |letters, words|
    if words.size > 1
      p words
    end
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
group_anagrams(words)