# PEDAC
# Input: None
# Output: A series of strings printed to the console
# Rules: Even numbers 1 to 99 inclusive.
# Data: Range, iterated over.
# Algorithm: Iterate over a range of 1..99, on each checking if the number % 2 == 0. If so, puts number.

(1..99).each { |num| puts num if num % 2 == 0 }