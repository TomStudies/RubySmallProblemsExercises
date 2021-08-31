# PEDAC
# Input: Bill amount and tip percentage (both float)
# Output: Tip and total bill amount (float)
# Data: Strings and floats, don't really need to do anything fancy
# Algorithm: Ask for the bill and tip percentage, calculate the tip and puts it and the total.

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage? (For a 15 percent tip, enter 15)"
tip_percent = gets.to_f

tip = (( tip_percent / 100 ) * bill).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{tip + bill}"

# Modify your solution so it always prints the results with 2 decimal places (hint use Kernel#format)

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage? (For a 15 percent tip, enter 15)"
tip_percent = gets.to_f

tip = (( tip_percent / 100 ) * bill)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", (tip + bill))}"