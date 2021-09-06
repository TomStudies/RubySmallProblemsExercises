# PEDAC
# Input: Integer (greater than 1)
# Output: Integer (sum of the multiples of 3 or 5 between 1 and that number)
# Rules: Input greater than 1, include the given int
# Data: Int
# Algorithm: multisum method takes 1 arg (int highest)
# -Iterate over every number between 1 and highest
# -If number % 5 == 0 or number % 3 == 0 add it to a sum var (initialized earlier)
# -Return sum var
def multisum(highest)
  sum = 0
  (1..highest).each do |num| # Solution uses Integer#upto instead of each but they appear to do the same thing.
    sum += num if (num % 3 == 0) || (num % 5 == 0)
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Enumerable.inject solution attempt
def multisum2(highest)
  (1..highest).inject do |sum, num| # Not sure why this doesn't work.
    if num % 3 == 0 || num % 5 == 0
      sum + num
    end
  end
end

p multisum2(3) == 3
p multisum2(5) == 8
p multisum2(10) == 33
p multisum2(1000) == 234168