# PEDAC
# Input: String of digits
# Output: Appropriate num as an integer (include signs)
# Rules: + will make a positive number, - a negative. String will always contain a valid number.
# -May not use String#to_i, Integer(), etc. MAY use string_to_integer from previous lesson.
# Data: Integers and strings (possibly convert to array)
# Algorithm: Create a universal hash of Digits for converting back and forth
# -string_to_signed_integer method takes one argument string
# -The 0 index in string is examined. If it is a negative or positive, a state boolean is changed to reflect that and the first char is deleted.
# -string's remaining chars are mapped using the digits hash to array digits
# -Array digits is added over a loop into a total variable
# -Total is made positive or negative depending on positive variable
DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
          '7' => 7, '8' => 8, '9' => 9}

def string_to_signed_integer(string)
  positive = true
  if string[0] == '-'
    positive = false
    string.delete!('-')
  elsif string[0] == '+'
    string.delete!('+')
  end
  
  digits = []
  string.chars.map { |char| digits << DIGITS[char] }
  
  final = 0
  digits.each { |digit| final = final * 10 + digit }
  if positive
    final
  else
    0 - final # Could have just used -final
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Further Exploration: Refactor the solution so it only makes string[1..-1] and string_to_integer calls once each. ???? I can't figure out a way to do this.
=begin
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
  
  
end
=end