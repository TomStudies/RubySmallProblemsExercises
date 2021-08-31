# PEDAC
# Input: 6 numbers (appear to be ints in examples)
# Output: An array and a conditional
# Data: Put ints in array, if condition to print strings
# Algorithm: Loop through the enter x number message, incrementing x each time. Store data in an array (initalized before) until 6th num, its own variable.
# After looping through, if conditional to check if sixth num is included or not.
# I didnt include this in my initial algorithm, but we will need to create a method to determine whether to say 1ST, 2ND, 3RD, etc.

def suffix(num) # Solution doesn't do this complicated thing. It really just straight forwardly has a list of different puts.
  case num
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  when 4
    'th'
  when 5
    'th'
  end
end

first_five = []
counter = 1
loop do
    puts("==> Enter the #{counter}#{suffix(counter)} number:")
    first_five << gets.chomp.to_i
  counter += 1
  break if counter == 6
end
puts("==> Enter the last number:")
last = gets.chomp.to_i

if first_five.include?(last)
  puts("The number #{last} appears in #{first_five}.")
else
  puts("The number #{last} does not appear in #{first_five}.")
end

# Taking this from another user: Launch School user Troy C Graves used this method to make his ordinals, which I found very cool and fascinating.
=begin
def ordinal(number)
  number = number.to_s

  return number + 'th' if number[-2] == '1'

  case number[-1]
  when '1'
    number + 'st'
  when '2'
    number + 'nd'
  when '3'
    number + 'rd'
  else
    number + 'th'
  end
end
=end