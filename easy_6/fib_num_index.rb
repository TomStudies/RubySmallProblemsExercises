# PEDAC
# Input: Integer number of digits
# Output: The integer index of the first fibonacci number that has the number of digits
# Rules: The first fibonacci number has an index of 1
# Argument is always greater than or equal to 2
# Examples:
=begin
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
=end
# Data structures: Integers
# Algorithm:
# find_fibonacci_index_by_length takes integer length
# variable for result index is initialized
# variable for two latest numbers is initialized (two ints at 1)
# loop begins, wherein the two latest are added, alternating back and forth
# When either variable has more than the length of digits (str conversion to check?) return the result index
def find_fibonacci_index_by_length(length)
  result_index = 2
  fib_a = 1
  fib_b = 1
  loop do
    fib_b += fib_a
    result_index += 1
    return result_index if fib_b.to_s.length >= length
    fib_a += fib_b
    result_index += 1
    return result_index if fib_a.to_s.length >= length
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847