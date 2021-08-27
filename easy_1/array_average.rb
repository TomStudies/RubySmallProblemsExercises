def average(list)
  sum = 0
  list.each { |num| sum += num }
  sum / list.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#Useful to remember from solution: numbers.reduce(:+) (Enumerable#reduce)

#Currently, the return value of average is an Integer. 
#When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float. 
#Can you change the return value of average from an Integer to a Float?
def average_2(numbers)
  sum = numbers.reduce(:+)
  sum.to_f / numbers.count.to_f #Turned values into floats (theoretically only needs to be done to one)
end

puts average_2([1, 6])
puts average_2([1, 5, 87, 45, 8, 8])
puts average_2([9, 47, 23, 95, 16, 52])