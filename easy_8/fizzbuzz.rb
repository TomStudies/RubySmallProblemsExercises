# PEDAC
# Input: two integers
# Output: Print the numbers between the two integers with some fizz and buzz
# Rules: If number is divisible by 3 print "Fizz", if divisible by 5 print "Buzz", and "FizzBuzz" if both.
# Data: Integers, strings
# Algorithm: Iterate over a range created by the two input numbers.
# Create a variable to keep track of if the number needs to be printed.
# For each number, first check if it is divisible by three.
# If it is, print Fizz and set the number printer to false.
# Then check if the number is divizible by five. If so, print Buzz and set the number printer to false.
# If number printer is true, print the number.
# Print a comma and a space, unless the current number equals the upper bound of the range.
def fizzbuzz(lower, upper)
  (lower..upper).each do |num|
    printnum = true
    if num % 3 == 0
      print 'Fizz'
      printnum = false
    end
    if num % 5 == 0
      print 'Buzz'
      printnum = false
    end
    print num if printnum
    print ', ' unless num == upper # Solution uses an array.join(', ')
  end
  puts
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz