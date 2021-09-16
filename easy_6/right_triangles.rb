# PEDAC
# Input: Integer n
# Output: Display a right triangle with sides of n stars
# Rules: hypotenuse should go from lower left to upper right
# Data: strings, presumably
# Algorithm: method triangle takes integer length.
# a counter variable is set equal to length
def triangle(length)
  counter = length - 1
  length.times do
    puts("#{' ' * counter}#{'*' * (length - counter)}")
    counter -= 1
  end
end

triangle(17)

# Further exploration: Modify your code so you can display the right triangle at any corner of the grid
def triangle_oriented(length, orientation)
  case orientation
  when 'BR'
    counter = length - 1
    length.times do
      puts("#{' ' * counter}#{'*' * (length - counter)}")
      counter -= 1
    end
  when 'TL'
    counter = length
    length.times do
      puts("#{'*' * counter}#{' ' * (length - counter)}")
      counter -= 1
    end
  when 'TR'
    counter = 0
    length.times do
      puts("#{' ' * counter}#{'*' * (length - counter)}")
      counter += 1
    end
  when 'BL'
    counter = 1
    length.times do
      puts("#{'*' * counter}#{' ' * (length - counter)}")
      counter += 1
    end
  end
end

puts "Select an orientation for the right angle of the triangle: TL for top left, TR for top right, BL for bottom left, BR for bottom right."
orientation = gets.chomp
puts "Select a size for the triangle, any integer shall do."
size = gets.chomp.to_i

triangle_oriented(size, orientation)

# Notes:
# String#rjust and #ljust seem to be very useful for these kinds of purposes.
