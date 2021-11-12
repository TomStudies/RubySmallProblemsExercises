# PEDAC
# Input: Two integers
# Output: Array
# Rules: First input integer is a count
# Second input integer is the first number of a sequence
# Contain the number of elements provided in the count argument
# Values of each element are multiples of the first number
# Assume count argument is always >= 0
# Count is 0 will return an empty list
# Data: Integer, array
# Algorithm: Take integers a and b. Declare an array.
# Declare an integer counter starting at 1. run a loop a times.
# put b times counter in the array, increment b on each loop.
# Return the array.
def sequence(count, start)
  increments = []
  counter = 1
  count.times do
    increments << start * counter
    counter += 1
  end
  increments
end

p sequence(5, 1)# == [1, 2, 3, 4, 5]
p sequence(4, -7)# == [-7, -14, -21, -28]
p sequence(3, 0)# == [0, 0, 0]
p sequence(0, 1000000)# == []

# Both solutions more efficient than mine.
# A one line solution is also provided.