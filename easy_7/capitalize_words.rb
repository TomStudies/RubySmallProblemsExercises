# PEDAC
# Input: A single string argument
# Output: A string with all first characters capitalized and others downcase
# Rules: Words are any sequence of non blank characters
# Examples:
=begin
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
=end
# Data: Strings
# Algorithm: Split the string into an array
# For each element in the array, downcase the element then upcase the char at index 0
# join the array back together with spaces
def word_cap(str)
  words = str.split
  words.each do |word|
    word.capitalize!
  end
  words.join(' ')
end # Most succinct solution: words.split.map(&:capitalize).join(' '), wherein (&:method) is short for { |item| item.method }

puts word_cap('four score and seven')# == 'Four Score And Seven'
puts word_cap('the javaScript language')# == 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

# Further exploration: Try to solve this problem two more ways without capitalize
def word_cap_2(str)
  words = str.split
  words.map! do |word|
    if word.size > 1
      word[0].upcase + word[1..-1].downcase
    else
      word.upcase
    end
  end
  words.join(' ')
end

puts word_cap_2('four score and seven')# == 'Four Score And Seven'
puts word_cap_2('the javaScript language')# == 'The Javascript Language'
puts word_cap_2('this is a "quoted" word') #== 'This Is A "quoted" Word'

def word_cap_3(str)
  words = str.split
  words.map! do |word|
    map_word = ''
    index = 0
    word.each_char do |char|
      if index == 0
        map_word << char.upcase
      else
        map_word << char.downcase
      end
      index += 1
    end
    map_word
  end
  words.join(' ')
end

puts word_cap_3('four score and seven')# == 'Four Score And Seven'
puts word_cap_3('the javaScript language')# == 'The Javascript Language'
puts word_cap_3('this is a "quoted" word') #== 'This Is A "quoted" Word'