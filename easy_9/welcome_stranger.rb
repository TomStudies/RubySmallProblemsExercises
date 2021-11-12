# PEDAC
# Input: An array (name to be combined with spaces), and a hash (title and occupation)
# Output: Puts a string greeting that uses the person's full name, title, and occupation
# Examples: 
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
# Data: Arrays, hash, strings
# Algorithm: First print the provided array joined with spaces, then print ! Nice to have a then the references then around.
def greetings(arr, hsh)
  puts "Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
greetings(['Tom', 'M', 'Haney'], { title: 'Beginner', occupation: 'Programmer' })

# Further Exploration: Shorten the lines to fit within the 80 maximum characters in a line?
def short_greetings(arr, hsh)
  name = arr.join(' ')
  title = hsh[:title]
  occ = hsh[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occ} around."
end