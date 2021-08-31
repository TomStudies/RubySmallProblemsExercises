# PEDAC
# Input: String
# Output: Bool
# Rules: Palindrome must consider case, punctuation, and spaces
# Data: string methods
# Method palindrome? checks whether string.reverse == string.

def palindrome?(string)
  string.reverse == string
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Further exploration: Write a method that determines whether an array is palindromic.
# Write a method that can determine if either a string or an array is palindromic w/o using if, unless, or case.

def array_pal?(array)
  start_index = 0
  end_index = (array.length - 1)
  while start_index < end_index do
    return false if array[start_index] != array[end_index]
    start_index += 1
    end_index -= 1
  end
  true
end
p array_pal?([1, 2, 3, 4, 5, 4, 3, 2, 1]) == true
p array_pal?([1, 2, 3, 4, 5]) == false
p array_pal?("madam") # I accidentally fulfilled the requirements of the second challenge while doing the first one...
 # Apparently array also has a reverse method, the method for array should miorror the one for string based on other student solutions.

def object_pal?(object)
  # Because #reverse method applies to both strings and arrays, the both method can be as simple as
  object == object.reverse 
end

# Palindromic strings 2 : Do the same, but make it case insensitive and ignore non-alphanumeric characters.
# For your second method, you may call the first method if you wish.

def real_palindrome?(string)
  string.downcase!
  p string
  string.delete!('^a-z0-9') # Taken from the solution. I similarly used String#delete at first but I pointlessly listed every non alphanumeric character I could think of.
  p string
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false