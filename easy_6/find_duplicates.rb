# PEDAC
# Input: An array with one pair of duplicate values
# Output: An object, whatever value occurs twice within the array.
# Rules: There should be only one re-occuring value
# Data: Array
# Algorithm: For each value in the array, check if it is contained in a storage array.
# If not, store it, if it is, return the value.
def find_dup(array)
  storage = []
  array.each do |x|
    return x if storage.include?(x)
    storage << x
  end
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
p find_dup(%w(this is a test of this find dup system.))

# Solution uses Enumerable#find to find elements with array.count of 2.
# one student solution I liked: Subtract the sum of that of arr.uniq from arr. Only works for numbers but still cool.