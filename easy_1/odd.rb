def is_odd?(num)
  num % 2 == 1
end

puts "What number would you like to evaluate?"
num = gets.chomp.to_i

puts is_odd?(num)

#If you weren't certain whether % were the modulo or remainder operator, how would you rewrite #is_odd? so it worked regardless?
def is_odd_2?(num)
  (num % 2).abs == 1
end

puts "What number would you like to evaluate (2)?"
num = gets.chomp.to_i

puts is_odd_2?(num)
#The Integer#remainder method performs a remainder operation in Ruby. 
#Rewrite #is_odd? to use Integer#remainder instead of %. Note: before version 2.4, Ruby used the Numeric#remainder method instead.
def is_odd_3?(num)
  num.remainder(2).abs == 1
end

puts "What number would you like to evaluate (3)?"
num = gets.chomp.to_i

puts is_odd_3?(num)