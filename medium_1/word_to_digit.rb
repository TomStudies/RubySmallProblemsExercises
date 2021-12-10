# PEDAC
# Input: A string
# Output: The same string with spelled out numbers as numerals
# Rules: Same string.
# Data: Strings
# Algorithm: Set an array equal to the string.split.
# Declare a universal variable hash with the strings and
# their numeral string equivalents.
# For each string:
# Check and see if it meets one of the hash keys. Regardless of whether it does
# or not, add the length of the string to a start_index variable (init 0).
# When a number is found, change the string at start_index to start_index + size
# to the appropriate number. Return the original string once completed.

NUM_SPELLINGS = {'zero'=>'0', 'one'=>'1', 'two'=>'2', 'three'=>'3', 'four'=>'4',
 'five'=>'5', 'six'=>'6', 'seven'=>'7', 'eight'=>'8', 'nine'=>'9'}

def word_to_digit(sentence)
  words = sentence.split
  start_index = 0
  words.each do |word|
    word_standardized = word.downcase.gsub(/[^0-9a-zA-Z]/, '')
    p word_standardized
    if NUM_SPELLINGS.key?(word_standardized)
      sentence[start_index..(start_index + word.size - 1)] = NUM_SPELLINGS[word_standardized] + ' '
      start_index += 2
    else
      start_index += word.size + 1
    end
    p start_index
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')

# Ultimately my solution failed. I couldn't figure out how to correctly space
# the words as they appeared in the modified sentence.
# I have pasted the given solution here:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit_correct(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

# The use of gsub! to replace all the instances of each number word
# is done in tandem with a regex. \b limits the operation to complete words.
# There are many further exploration options; I have decided to first take a
# look at the regex book then come back.

# After reading regex book:
# 1. Change the solution so that spaces between consecutive numbers removed.
# 2. If it already contains 2+ space separated numbers, can you leave those alone?
# What about phone numbers? Can you format the result to account for phone numbers?
# All 10 digit numbers should be formatted as (123) 456-7890
# Going to implement all at once

def word_to_digit_advanced(sentence)
  DIGIT_HASH.keys.each do |word|
    sentence.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  loop do
    break if !sentence.match(/\d+ \d+/)
    sentence.gsub!(/(\d+) (\d+)/,'\1\2')
  end
  loop do
    break if !sentence.match(/\b\d{10}\b/)
    sentence.gsub!(/\b(\d\d\d)(\d\d\d)(\d\d\d\d)\b/, '(\1) \2-\3')
  end
  p sentence
end

word_to_digit_advanced("I have one two three dogs and nine eight four seven cats")
word_to_digit_advanced("Call me at three three zero six nine four eight seven eight two.")
word_to_digit_advanced("six eight seven zero one two nine eight four six eight two is a twelve number string, not a phone number.")