# PEDAC
# Input: A string of at least two words
# Output: A string
# Rules: Input string will always contain at least two words, words are any sequence of non blank characters
# Data: String
# Algorithm: Split the string into an array and return array[-2]

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Write a method that returns the middle word of a phrase. Include edge cases like empty strings,
# If number of words is even, return the middle two words.
def penultimate_2(string)
  words = string.split
  return "Empty string, no middle word." if words.empty?
  wordcount = words.length
  midpoint = wordcount / 2
  if wordcount.even?
    return "#{words[midpoint - 1]} #{words[midpoint]}"
  else
    return words[(wordcount / 2)]
  end
end

p penultimate_2("I have a cat named Sophie.")
p penultimate_2("Hi, I am a fella.")