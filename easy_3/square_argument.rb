def multiply(int_a, int_b)
  int_a * int_b
end

def square(num)
  multiply(num, num)
end

puts square(4)

# Further exploration: Change to a "power to the nth method" while still using multiply

def nth_power(num, n)
  if n > 0
    last_step = num
    (n-1).times do
      last_step = multiply(last_step, num)
    end
    return last_step
  elsif n == 0
    return 1
  else
    last_step = num
    (n.abs-1).times do
      last_step = multiply(last_step, num)
    end
    return (1.0 / last_step)
  end
end

puts nth_power(3, 4)
puts nth_power(5, -3)
puts nth_power(8,1)
puts nth_power(10,0)