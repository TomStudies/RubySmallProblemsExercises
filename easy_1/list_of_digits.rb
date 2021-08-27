def digit_list(num)
  num.digits.reverse #This differs greatly from both provided solutions and most student solutions. It seems to be the vastly simpler option, at least to me.
end

puts "What number would you like split into digits?"
num = gets.chomp.to_i

p digit_list(num)