# Input: Integer year (greater than 0)
# Output: Boolean (whether is leap year)
# Rules:
# -Leap year for every year that is divisible by 4
#   -Unless it is also divisible by 100
#     -Unless again it is divisible by 400
# Data: Integer math
# Algorithm: leap_year? method takes integer year and checks year % 4 == 0
#   Then checks year % 100 == 0 (return true if false)
#     Lastly checks year % 400 == 0 (return true if false)
#       Returns false

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      return year % 400 == 0
    end
    return true
  end
  return false
end

# An elegant solution taken from the online solutions I like:
def leap_year2?(year)
  if year >= 1752
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else
    year % 4 == 0
  end
end

# Takeaway: Test for the least common cases first.

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

p leap_year2?(2016) == true
p leap_year2?(2015) == false
p leap_year2?(2100) == false
p leap_year2?(2400) == true
p leap_year2?(240000) == true
p leap_year2?(240001) == false
p leap_year2?(2000) == true
p leap_year2?(1900) == false
p leap_year2?(1752) == true
p leap_year2?(1700) == true
p leap_year2?(1) == false
p leap_year2?(100) == true
p leap_year2?(400) == true