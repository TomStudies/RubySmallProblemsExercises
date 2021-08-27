def stringy(num)
  one = true
  output = ''
  num.times do
    if one
      output << '1'
      one = false
    else
      output << '0'
      one = true
    end
  end
  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#Solution uses an array with an eventual .join instead of string concat, and checks to see if index is even for 1, 0 determination.

#Modify stringy so it takes an additional optional argument that defaults to 1. 
#If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.
def advanced_stringy(size, start = 1) #Used solution for ease of simplification
  numbers = []

  size.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
    elsif start == 0
      number = index.odd? ? 1 : 0
    else
      puts "start must be 0 or 1."
    end
    numbers << number
  end

  numbers.join
end

puts advanced_stringy(6)
puts advanced_stringy(9,1)
puts advanced_stringy(4,0)
puts advanced_stringy(7,0)