# PEDAC
# Input: None
# Output: String that displays an int
# Rules: Age muts be 20-200
# Data: random int through an array.sample (i am sure there is a method that would better do this but Im trying not to method hunt)
# Algorithm: Put a range of numbers 20..200 into an array and sample that array in the puts string.

puts "Teddy is #{(20..200).to_a.sample} years old!"

# Solution used Kernel#rand(20..200) and assigned it to a variable.

# Further exploration: Modify this program to ask for a name, and then print the age for that person.

def print_age(name = "Teddy")
  puts "#{name} is #{rand(20..200)} years old!"
end

puts "Provide a name, and we will provide the age."
name = gets.chomp

if name.empty?
  print_age
else
  print_age(name)
end