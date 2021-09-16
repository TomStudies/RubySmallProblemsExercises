# PEDAC
# Input: An array of strings
# Output: An array of the same strings, with vowels removed
# Rules: Remove all vowels regardless of caps, leave an empty string if all vowels are removed
# Examples:
=begin
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end
# Data structures: Arrays, strings
# Algorithm:
# remove_vowels method takes array strings
# strings is iterated over. Each string has its vowels removed within the original array.
# return the array.

def remove_vowels(strings)
  strings.map! do |str| # Don't have to use map!, could just use map without the return statement below like solution
    str.delete('aeiouAEIOU')
  end
  strings
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']