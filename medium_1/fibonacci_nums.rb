# PEDAC
# Input: Integer n, where n is the index of sequence of Fibonacci
# Output: The nth fibonacci number.
# Rules: The method must be recursive
# Follow the fibonacci sequence: F(n) = F(n - 1) + F(n - 2) where n > 2
# Assume the index given is greater than 0.
# Data: Integers, perhaps arrays?
# Algorithm: Within the algorithm, return 1 if n == 1 or 2.
# Then, add F(n-1) and F(n-2) on the next line. This will return that number.
def fibonacci(n)
  return nil if n<1
  return 1 if n == 1 || n == 2 # could just say n <= 2 like solution
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1)# == 1
p fibonacci(2)# == 1
p fibonacci(3)# == 2
p fibonacci(4)# == 3
p fibonacci(5)# == 5
p fibonacci(12)# == 144
p fibonacci(20)# == 6765

# Extra info: Notes from geeksforgeeks tail recursion article
# Tail recursion occurs when a recursive call is the last thing executed
# by the function. Tail recursive functions can be optimized by the
# compiler, which executes using a stack. For non-tail recursive functions,
# the stack depth will be greater. It is usually done by accumulating values
# within arguments that are passed through each call.