# PEDAC
# Input: Array of numbers
# Output: Array of numbers (each element is the running total of the original)
# Rules: Empty array returns empty array
# Data: Arrays of integers
# Algorithm: Method running_total takes integer array nums.
# -Initialize a return array called total with nothing
# -Iterate over nums, for each loop adding the corresponding element and item at its past index to the current index.

def running_total(nums)
  return [] if nums.size == 0
  total = []
  total << nums[0]
  index = 1
  loop do
    break if index == nums.size
    total[index] = nums[index] + total[index - 1]
    index += 1
  end
  total
end # The solution is infinitely more elegant than this.

# solution
def running_total2(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Further exploration: Solving with Enumerable#each_with_object or Enumerable#inject
def running_total3(array)
  array.each_with_object { |sum, num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []