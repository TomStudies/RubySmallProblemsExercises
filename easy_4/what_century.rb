# PEDAC
# Input: Int year
# Output: Returns century (string with correct suffix)
# Rules: Centuries change over in years with 01. 1901-2000 is the 20th century.
# -If it ends with a 1 except 11: st
# -If it ends with a 2 except 12: nd
# -If it ends with a 3 except 13: rd
# -If it ends with a 0, 4, 5, 6, 7, 8, 9, or is 11, 12, and 13: th
# Questions:
# -Are we doing BCE for negative numbers? (i guess so)
# Data: Integer
# Algorithm: Method takes one argument (year).
# -Determine century number from the argument given
#   -Divide int by 100.0 to turn into a float, then round up to a whole number.
# -Send century number to helper method get_suffix
#   -get_suffix appends correct suffix and returns string with it appended

def century(int)
  return "0 is not a valid year on the AD/BCE continuum." if int == 0
  cent = int > 0 ? (int / 100.0).ceil : (int / 100.0).floor
  cent > 0 ? append_suffix(cent) : append_suffix(cent.abs) << ' BCE' # I got a little carried away accounting for BCE, but it was good practice.
end

def append_suffix(cent)
  last_one = cent % 10
  last_two = cent % 100
  if ((last_one == 1) && (last_two != 11))
    cent.to_s + 'st'
  elsif ((last_one == 2) && (last_two != 12))
    cent.to_s + 'nd'
  elsif ((last_one == 3) && (last_two != 13))
    cent.to_s + 'rd'
  else
    cent.to_s + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(1102)
p century(1210)
p century(0)
p century(-20)
p century(-1509)
p century (-1000)