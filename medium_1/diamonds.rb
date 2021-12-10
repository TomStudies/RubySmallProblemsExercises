# PEDAC
# Input: Integer n
# Output: A printed diamond on an n x n grid
# Rules: Assume n is always odd and positive
# Data: Integer, string
# Algorithm: Assign variable spaces to n/2 and stars to 1.
# Until stars equals n, print spaces spaces, stars stars, spaces spaces.
# Reverse until stars equals 1.
# Subtract 1 from spaces, add 2 to stars.
def diamond(apex)
  spaces = apex/2
  stars = 1
  loop do
    print ' ' * spaces
    print '*' * stars
    print ' ' * spaces
    puts
    spaces -= 1
    stars += 2
    break if stars == apex
  end
  print '*' * apex
  puts
  spaces += 1
  stars -= 2
  loop do
    print ' ' * spaces
    print '*' * stars
    print ' ' * spaces
    puts
    spaces += 1
    stars -= 2
    break if stars < 1
  end
end

diamond(11)

# Solution much more efficient. Has a method to print out each row.

# Further exploration: Modify the program to only output the outline of the diamond.
# Self challenge: Use multiple methods for repeated tasks, like the solution.
# PEDAC
# Input: Integer n
# Output: A printed diamond (only the outside edges) on an n x n grid
# Data: Integer, string
# Algorithm: One method takes the integer n for the grid size.
# From this n, it determines how many spaces to place between the stars on each line
# And passes the number of spaces and stars to the second method.
# The second method prints the spaces and stars.
def spaces_stars(outside, inside)
  print ' ' * outside, '*', ' ' * inside, '*', ' ' * outside
  puts
end

def calculate_diamond(apex)
  outside = apex / 2
  inside = 1
  print ' ' * outside, '*', ' ' * outside
  puts
  return nil if outside == 0
  loop do
    outside -=1
    spaces_stars(outside, inside)
    break if outside == 0
    inside += 2
  end
  loop do
    outside += 1
    inside -= 2
    break if inside <= 0
    spaces_stars(outside, inside)
  end
  print ' ' * outside, '*', ' ' * outside
  puts
end

calculate_diamond(1)
calculate_diamond(3)
calculate_diamond(5)
calculate_diamond(7)
calculate_diamond(9)
calculate_diamond(11)
calculate_diamond(19)