# PEDAC
# Input: integer n for nth num in fibonacci sequence
# Output: The nth num in the fibonacci sequence
# Rules: Do not write a recursive solution. All n > 0.
# Data: Integers
# Algorithm: If n == 1 or 2, simply return 1. For other n, create an array of
# [1, 1]. n-1 times, add n[-1] and n[-2] and append it to the array.
# Return the last value in the array.
def fibonacci(nth)
  return 1 if nth <= 2 # Can be accounted for by replacing .times with
  sequence = [1, 1]
  (nth - 2).times do # 3.upto(nth) do
    sequence << sequence[-1] + sequence[-2] # Solution just keeps track of two
  end
  sequence[-1]
end

p fibonacci(20)# == 6765
p fibonacci(100)# == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

# Decided to put the optimized solution here, as I think it
# draws attention to the parts I didn't do quite well
def fibonacci_2(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end