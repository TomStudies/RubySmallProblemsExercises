# PEDAC
# Input: A floating point number (angle between 0 and 360 degrees)
# Output: String (angle in degrees)
# Rules: dms method will take the input and return output
# Use degree symbol to represent degrees, a single quote for minutes, and double quote for seconds.
# Degrees have 60 minutes, and minutes 60 seconds.
# Results may differ slightly from the example based on rounding
# Use two digit numbers with leading zeros for the minutes and seconds
# Use the provided constant for the degree symbol
# Examples: 
=begin
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=end
# Data structure: Floats, math, formatting strings
# Algorithm:
# 1. Take floating point angle number, and separate out its decimal portion to minutes and seconds.
#   -degrees is num / 1
#   -floating point num mod 1 should give the remainder after decimal point.
#   -minutes is remainder * 60
#   -seconds is minutes % 1 * 60
#   -convert all to integers to help with formatting
# 2. Return the string formatted.
#   -Use a separate method to get the number portions of the string formatted correctly.

DEGREE = "\xC2\xB0"

def format_strings(num)
  if num < 10
    '0' + num.to_s
  else
    num.to_s
  end
end

def dms(degrees_float)
  degrees_float = adjust_to_range(degrees_float) if degrees_float > 360 || degrees_float < 0
  degrees = (degrees_float / 1)
  minutes = ((degrees_float % 1) * 60) # remember divmod to assign both and save space.
  seconds = ((minutes % 1) * 60)
  degree_str = format_strings(degrees.to_i)
  minute_str = format_strings(minutes.to_i)
  second_str = format_strings(seconds.to_i)
  
  "%(" + degree_str + DEGREE + minute_str + "'" + second_str + "\")" # remember %02d to hold things to two decimal places, also %q() or %Q() for quotation marks.
end

puts dms(30)# == %(30°00'00")
puts dms(76.73)# == %(76°43'48")
puts dms(254.6)# == %(254°36'00")
puts dms(93.034773)# == %(93°02'05")
puts dms(0)# == %(0°00'00")
puts dms(360)# == %(360°00'00") || dms(360) == %(0°00'00")

# Further Exploration: Since degrees are normally restricted to the 0-360 range, can you modify the code so it returns
# an appropriate value for inputs less than 0 or greater than 360?
# Algorithm: Add a new method that converts a number to the 0-360 range.
# If the number is greater than 360, subtract 360 from it until it is less than 360.
# If the number is less than 0, add 360 to it until it is greater than 0.
def adjust_to_range(degrees)
  if degrees > 360
    loop do
      degrees -= 360
      break if degrees < 360
    end
  end
  if degrees < 0
    loop do
      degrees += 360
      break if degrees > 0
    end
  end
  degrees
end

puts dms(400)# == %(40°00'00")
puts dms(-40)# == %(320°00'00")
puts dms(-420)# == %(300°00'00")