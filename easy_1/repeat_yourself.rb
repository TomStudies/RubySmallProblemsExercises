def repeat(phrase, num)
  num.times {puts phrase}
end

puts "What is your phrase?"
phrase = gets.chomp

puts "How many times would you like it repeated?"
num = gets.chomp.to_i

repeat(phrase, num)