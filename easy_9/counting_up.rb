# PEDAC
# Input: A positive integer argument
# Output: An array of integers between 1 and the argument (inclusive)
# Rules: Inclusive, integer always greater than 0.
# Data: Integer, array
# Algorithm: Return (1..integer) in an array form
def sequence(int)
  (1..int).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)

# Further Exploration: What should happen if int <= 0?
# Alter the method to handle this case.

def sequence_improved(int)
  if int < 1
    (int..1).to_a
  else
    (1..int).to_a
  end # Could have been done with a ternary operator like other student solutions.
end

p sequence_improved(0)
p sequence_improved(-4)
p sequence_improved(7)