# PEDAC
# Input: Three integers
# Output: String (a single letter value)
# Rules: Calculate the average of the integers and assign a grade
# 100 >= x >= 90 is 'A', downwards in increments of 10 pts
# Data: Integer math, string
# Algorithm: do a case statement with the inject of the array divided by size
# (it isnt an array as I found out later)
# Return the appropriate string letter for each grade
def get_grade(grade_a, grade_b, grade_c)
  grades = ( grade_a + grade_b + grade_c ) / 3
  case grades
  when 90..100 # Could say then 'A' for one line format per solution
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  when 0..59
    'F'
  end
end

p get_grade(95, 90, 93)# == "A"
p get_grade(50, 50, 95)# == "D"

# Further Exploration: Creating a version that can account for an infinite num
# of grades and final scores higher than 100
def get_grade_better(grades) # Must be provided as an array
  average = (grades.inject(:+) / grades.size)
  return 'A+' if average > 100
  case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when 0..59 then 'F'
  end
end

p get_grade_better([101, 102, 103, 105])
p get_grade_better([50, 60, 70, 80, 90])