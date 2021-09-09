# PEDAC:
# Input: Array of integers between 0 and 19
# Output: Array of integers, in order based on alphabetical english word.
# Rules: Output order should be A-Z based on the alphabetical spelling of each word
# Data: Arrays, ints, strings, hash?
# Algorithm: Create a universal hash that contains each english spelling for numbers.
# -In method, Create empty return array alphabetized.
# -For each element in the given array. fetch its spelling from the hash.
# -Compare the spelling to each element's spelling in the alphabetized array
# -break the loop when the spot where the word in question fits in the alphabetization and put it in
# -Return the alphabetized array

SPELLINGS = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
             6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
             12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
             16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(num_array)
  alphabetized = [num_array.pop]
  num_array.each do |num|
    assignment_index = 0
    loop do
      break if assignment_index == alphabetized.length || SPELLINGS[alphabetized[assignment_index]] >= SPELLINGS[num]
      assignment_index += 1
    end
    alphabetized.insert(assignment_index, num)
  end
  alphabetized
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# As usual, the solution is infinitely more simple and elegant than mine.
# The solution uses Enumerable#sort_by to sort the numbers based on an array of the number words constant

# Further Exploration: Why didn't we use Array#sort_by! instead of Enumerable#sort_by?
# -Using a method that mutates the caller would potentially eliminate values that haven't been evaluated yet? My best guess.
# -Just a note, googling around for discussion about this seems to show that Array#sort would be the most efficient way to do this.
