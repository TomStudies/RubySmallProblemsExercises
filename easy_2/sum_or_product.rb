# Input: int > 0
# Output: int (sum or product)
# Rules: starting int will be greater than 0.
# Data: Integer math in methods
# Algorithm: Two methods, both given the user provided number, will compute the sum and product of all numbers below it.
# These methods are then run in the puts statement.

def sum(num)
  total = 0
  (1..num).each { |num| total += num }
  total
end

def product(num)
  multiplied = 1
  (1..num).each { |num| multiplied *= num }
  multiplied
end

def prompt(message)
  puts ">> " << message
end

user_int = 0
loop do
  prompt("Please enter an integer greater than 0.")
  user_int = gets.to_i
  break if user_int > 0
  prompt("I said greater than 0, friend.")
end

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  user_op = gets.chomp.downcase
  if user_op == 's'
    prompt("The sum of the integers between 1 and #{user_int} is #{sum(user_int)}.")
    break
  elsif user_op == 'p'
    prompt("The product of the integers between 1 and #{user_int} is #{product(user_int)}.")
    break
  end
  prompt("Invalid operation.")
end

# Further Exploration: Try to use Ennumerable#inject in your solution to the problem.

puts("\n Further Exploration \n\n")

def sum2(num)
  (1..num).inject(:+)
end

def product2(num)
  (1..num).inject(:*)
end

user_int = 0
loop do
  prompt("Please enter an integer greater than 0.")
  user_int = gets.to_i
  break if user_int > 0
  prompt("I said greater than 0, friend.")
end

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  user_op = gets.chomp.downcase
  if user_op == 's'
    prompt("The sum of the integers between 1 and #{user_int} is #{sum2(user_int)}.")
    break
  elsif user_op == 'p'
    prompt("The product of the integers between 1 and #{user_int} is #{product2(user_int)}.")
    break
  end
  prompt("Invalid operation.")
end