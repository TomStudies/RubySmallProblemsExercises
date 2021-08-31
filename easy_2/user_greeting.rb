# Input: A single string (name)
# Output: Either a polite greeting or a loud one (strings)
# Rules: If the user inputs an exclamation point after their name, yell the greeting (caps)
# Data: String stuff
# Algorithm: Ask the user for their name. Use an if statement to check if String#end_with? '!' is true, if so then shout greeting, if not then polite greeting
# For the shouted greeting, the exclamation point needs to be removed and it needs to be upcased before printing.

puts "What's your name?"
name = gets.chomp

if name.end_with?('!') # Solution used index -1 to refer to the last character in the string.
  name.delete_suffix!('!').upcase! # Solution used name.chop, and had the upcase in the puts expression.
  puts "HELLO #{name}. WHAT IS ALL THE FUSS ABOUT?"
else
  puts "Hello #{name}."
end

# Further Exploration: Modify the solution to use String#chomp! and String#chop! respectively.

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end