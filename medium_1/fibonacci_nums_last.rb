# PEDAC
# Input: Integer n for nth fibonacci number
# Output: Integer of the last digit of the nth fibonacci number
# Rules: All positive
# Data: Integer, string
# Algorithm: Using the fibonacci calculator from the last program,
# Take the result and convert it to a string. Grab the last char and turn it
# back to an integer, then return.

def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last.to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# This worked for the first 5, but chugged far too much to compute the last one.
# The solution only computes the last digit of the intermediate results,
# which takes away some of the heavy computing. This still isn't a perfectly
# compact solution, however.