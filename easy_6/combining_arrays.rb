# PEDAC
# Input: Two arrays
# Output: One combined array (no duplicates)
# Rules: No duplicate values in the return array
# Data: arrays
# Algorithm: merge method takes two arrays, a and b.
# each item in b is checked to see if it is present in a.
# If not, the element is << to a.
# a is returned.
def merge(arr_1, arr_2)
  arr_2.each { |item| arr_1 << item unless arr_1.include?(item) }
  arr_1
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge(%w(I have a cat and a dog), %w(My wife is a dog person))

# Solution uses Array#|, something I haven't seen that gives the union of two arrays.
# It seems extremely handy. I am sure I will forget it exactly before it becomes useful to me.
# Other solutions included array methods #uniq, and #none?