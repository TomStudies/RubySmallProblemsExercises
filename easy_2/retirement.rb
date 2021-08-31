# PEDAC
# Input: Current age and retirement age
# Output: Year of retirement and how many years left.
# Rules: Assume positive age, year is current year
# Data: Simple int math
# Algorithm: Ask user for current age and goal retirement age. Calculate retirement year based on diff. Display diff.
CURRENT_YEAR = Time.now.year # Solution uses Time.now.year, I had originally used just 2021 as a constant.

puts "What is your age?"
age = gets.chomp.to_i
puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i

diff = retirement_age - age
retirement_year = CURRENT_YEAR + diff

puts "It is #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{diff} years of work to go!"