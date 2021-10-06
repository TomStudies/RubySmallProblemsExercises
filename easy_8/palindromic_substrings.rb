# PEDAC
# Input: A string
# Output: All substrings of a method that are palindromic in an array
# Rules: Return sequence should be arranged the same way as the substrings appear in the string
# Duplicate palindromes should be included multiple times
# Use previously written all_substrings method
# Examples:
=begin
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
=end
# Data: strings, arrays
# Algorithm: run all_substrings on the string to get an array of all substrings
# for each substring, add it to a return array if it equals its reverse and is greater than 1 char long
# return the return array

def leading_substrings(string) # I took the one from the solution since I liked it more than mine
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def all_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << leading_substrings(string[index..(string.size - 1)])
  end
  result.flatten
end

def palindromes(string)
  substrings = all_substrings(string)
  palindromic_strings = []
  substrings.each do |str|
    if str.length > 1 && str == str.reverse
      palindromic_strings << str
    end
  end
  palindromic_strings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Further exploration
# Modify the method to ignore non-alphanumeric characters and case

def palindromes_nocase(string)
  substrings = all_substrings(string)
  standard_strings = substrings.map do |str|
    str.gsub(/[^0-9a-zA-Z]/, '').downcase
  end
  substrings
  standard_strings
  indeces = []
  standard_strings.each_with_index do |str, dex|
    if str.length > 1 && str == str.reverse
      indeces << dex
    end
  end
  palindromic_strings = []
  indeces.each do |dex|
    palindromic_strings << substrings[dex]
  end
  palindromic_strings
end

p palindromes_nocase('mAdAm im aDam')