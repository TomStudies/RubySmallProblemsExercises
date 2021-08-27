def calculate_bonus(salary, bonusbool)
  return salary / 2 if bonusbool
  0
end
#Solution used ternary operator (bonus ? (salary / 2) : 0)
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000