# PEDAC
# Input: Two positive integers
# Output: Six integers after different mathematical operations
# Rules: Ints will be positive, don't worry about input validation.
# Data: Ints and math and strings
# Algorithm: Ask for int_a and int_b, then puts each combination.

def out(string)
  puts("==> " << string)
end

out("Enter the first number:")
int_a = gets.chop.to_i

int_b = 0
loop do
  out("Enter the second number:")
  int_b = gets.chop.to_i
  break if int_b != 0
  out("The second number cannot be 0 (divide by 0.)")
end

out("#{int_a} + #{int_b} = #{int_a + int_b}")
out("#{int_a} - #{int_b} = #{int_a - int_b}")
out("#{int_a} * #{int_b} = #{int_a * int_b}")
out("#{int_a} / #{int_b} = #{int_a / int_b}")
out("#{int_a} % #{int_b} = #{int_a % int_b}")
out("#{int_a} ** #{int_b} = #{int_a ** int_b}")