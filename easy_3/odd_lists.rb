# PEDAC
# Input: An array
# Output: Another array
# Rules: The return array should contain every other element of the original starting with the 1st, the 3rd, and so on.
# Data: Arrays
# ALgorithm: oddities method takes an array, and initializes a return_array.
# while the array length is greater than 0, an element is shifted into return_array and another is shifted into nothing.

def oddities(array)
  return_array = []
  while array.size > 0
    return_array << array.shift
    array.shift
  end
  return_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further exploration: Write a companion method that returns the 2nd, 4th, etc. elements, and try to solve the original exercise in 2 additional ways.

def other_oddities(array)
    return_array = []
  while array.size > 1
    array.shift
    return_array << array.shift
  end
  return_array
end

p other_oddities([1, 2, 3, 4, 5, 6, 7])

def oddities_2(array)
  return_array = []
  array.each do |item|
    if array.index(item) % 2 == 0
      return_array << item
    end
  end
  return_array
end

p oddities_2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities_2(['abc', 'def']) == ['abc']
p oddities_2([123]) == [123]
p oddities_2([]) == []

def oddities_3(array)
  delete_index = 1
  (array.size / 2).times do
    array.delete_at(delete_index)
    delete_index += 1
  end
  array
end

p oddities_3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities_3(['abc', 'def']) == ['abc']
p oddities_3([123]) == [123]
p oddities_3([]) == []