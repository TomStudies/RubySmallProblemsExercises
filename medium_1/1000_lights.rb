# PEDAC
# Input: Integer n
# Output: Array of the integers of activated switches
# Rules: All lights start off.
# For each pass, lights that are a multiple of that pass number are flipped.
# Data: Integers, arrays, hash, boolean
# Algorithm: Create a hash called lights. For keys, include integers 1..n
# Set the default value to be false.
# Check each number in the range 1..n against each key in the lights hash.
# If key % number == 0, reverse the corresponding boolean.
# At the end, Pull all the keys for which the value is true into an array.
def light_switches(amount)
  lights = {}
  (1..amount).each do |num|
    lights[num] = false
  end
  (1..amount).each do |num|
    lights.each do |light, state|
      lights[light] = !state if light % num == 0
    end
  end
  on = []
  lights.each do |light, state| #select with a block and then .keys in solution
    on << light if state
  end
  on
end

p light_switches(1)
p light_switches(5)
p light_switches(10)
p light_switches(14)
p light_switches(27)
p light_switches(1000)

# Neat. It returns a list of numbers that are the squares of their position in the list.

# The solution splits each "part" up into a different method.
# Reminder: Putting an underscore at the beginning of a variable name
# is common practice to show that the variable itself goes unused.