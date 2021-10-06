# PEDAC
# Input: words from prompts (strings)
# Output: A simple madlib (string)
# Rules: Create a story out of the words from the prompts
# Data: Strings in an array?
# Algorithm: Ask questions for various words and store them in an array
# Output a sentence, using each subsequent word in the array when needed.

words = []

puts("Enter a noun:")
words << gets.chomp

puts("Enter a place:")
words << gets.chomp

puts("Enter a noun:")
words << gets.chomp

puts("Enter a verb:")
words << gets.chomp

puts("The #{words[0]} went to #{words[1]} and bought a #{words[2]} to #{words[3]}.")