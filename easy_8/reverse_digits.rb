# PEDAC
# Input: Positive integer
# Output: Positive integer (digits reversed from the initial value)
# Rules: No leading zeros in return values (eg display 12000 as 12)
# Data: Integers
# Algorithm:
# % input integer by 10 then /= 10 until the integer is less than 10
# For each step, add it to the output integer then multiply by 10
def reversed_number(input)
  output = 0
  loop do
    output += input % 10
    break if input / 10 == 0
    output *= 10
    input /= 10
  end
  output
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Solution just simply converts the number to a string, reverses it, then converts back to an int.