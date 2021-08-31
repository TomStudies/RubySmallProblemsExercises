# PEDAC
# Input: None
# Output: A series of strings printed to the console
# Rules: Odd numbers 1 to 99 inclusive.
# Data: Range, iterated over.
# Algorithm: Iterate over a range of 1..99, on each checking if the number % 2 == 1. If so, puts number.

(1..99).each do |num|
  puts num if num % 2 == 1
end

# Further Ex: Repeat this exercise with a technique different from the one used here and the one in the solution.

nums = (1..99).to_a
while nums.length > 0
  puts nums.shift
  nums.shift
end
  