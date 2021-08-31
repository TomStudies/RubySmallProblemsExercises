#PEDAC
#Input: strings with width and length of the room in m
#Output: String with area in sq ft and sq m
#Rules: Don't worry about input validation, width and length entered as ints, sq ft and m returned as floats (probably best to just work with floats from beginning in case)
#Data: float
#Algorithm: Ask for user input on width and length. Send the multiplication of the two to method display_area which prints the sq m and does the quick calc for sq ft in the string puts.

def display_area(area)
  puts("The area of the room is #{area} square meters (#{area * 10.7639} square feet).")
end

puts "What is the width of the room in meters?"
width = gets.chomp.to_f
puts "What is the length of the room in meters?"
length = gets.chomp.to_f

display_area(width * length)

# Solution omitted chomp after the gets, just using gets.to_f. I tested it in irb and I guess it works, it just rips it out of the string and ignores the \n.
# Solution did not use a method, and did use a constant for the 10.7639 conversion factor. That is probably a smart move.
# I saved on variable space compared to the solution, but I am not sure whether that is the right thing to do at this stage.

# Further exploration: Modify the program to ask for the input measurements in feet, and display results in sq ft, sq in, and sq cm.
SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.0304


def display_area_feet(area)
  puts("The area of the room is #{area} square feet, #{area * SQFT_TO_SQIN} square inches, or #{area * SQFT_TO_SQCM} square centimeters.")
end

puts "What is the width of the room in feet?"
width = gets.chomp.to_f
puts "What is the length of the room in feet?"
length = gets.chomp.to_f

display_area_feet(width * length)