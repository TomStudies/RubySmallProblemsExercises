# PEDAC
# Input: A string with one or more space separated words
# Output: A hash with a counter for words of each size
# Rules: Words consist of any string of characters that do not include a space, blank strings return an empty hash
# Data: Strings, hashes
# Algorithm: word_sizes method takes string sentence.
# -sentence is split based on spaces, with the words assigned to an array.
# -return hash counters is initialized.
# -The array is iterated over. For each string in the array,
# -If hash contains the key for string.length, its associated value is incremented.
# -If hash does not contain the key, one is added with value 1.
def word_sizes(sentence)
  words = sentence.split # Unnecessary line, solution just call words.split.each on the loop below
  counters = {} # Solution initializes this as Hash.new(0), which forces any references to non-existing keys to return 0.
  # This allows users to avoid the if statement I used below, simply doing counters[word.length] +=1 for each element.
  words.each do |word|
    if counters.key?(word.length)
      counters[word.length] += 1
    else
      counters[word.length] = 1
    end
  end
  counters
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Part 2: Modify the method so that non-letters are not counted for determining word size.
# PEDAC largely doesn't change down to the algorithm
# Algorithm: word_sizes2 method takes string sentence.
# -Return hash counters is initialized via Hash::new(0) so its default value is 0.
# -each word in the split array is iterated over
# -any character not contained in (A..Z) or (a..z) is deleted from the word
# -each word length is iterated in the counters hash.
def word_sizes2(sentence)
  counters = Hash.new(0)
  sentence.split.each do |word|
    word.gsub!(/[^a-zA-Z]/, '') # Solution just used String#delete instead of a gsub! with a blank string
    counters[word.length] += 1
  end
  counters
end

p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes2('') == {}