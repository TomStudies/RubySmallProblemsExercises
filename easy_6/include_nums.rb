# PEDAC
# Input: An array and object search value
# Output: Boolean whether the array contains the object
# Rules: Don't use Array#include?
# Data: Arrays
# For each object, return true if it matches the search value
def include?(arr, search)
  arr.each do |item|
    return true if item == search
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# The solution uses !!arr.find_index(search). 
# This !! will turn nils (the important bit) and falses into false, and others into true.
# Other student solutions:
# arr.any?
# arr << search, then return true if arr.uniq! != nil
# arr.insert(0, search).count(search) > 1