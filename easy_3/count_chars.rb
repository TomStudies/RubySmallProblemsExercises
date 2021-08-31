# PEDAC
# Input: String
# Output: int in string
# Rules: Spaces do not count as chars but apostrophes, commas, and the like do.
# Data: String methods
# Algorithm: Ask user for the string. Use String#delete to delete the spaces, then output the length in a puts.

print("Please write a word or multiple words: ")
input = gets.chomp
nospaces = input.delete(' ')
puts("There are #{nospaces.length} characters in \"#{input}\".")
