def reverse_words(phrase)
  words = phrase.split #Redundant, can just iterate using .split.each
  output = ''
  words.each do |word|
    if word.length >= 5
      output << word.reverse
    else
      output << word
    end
    output << " " if words.index(word) < (words.size - 1) #Really should have learned just to use an array and the #join(' ') option.
  end
  output
end

puts "Pick a phrase, any phrase"
phrase = gets.chomp

puts reverse_words(phrase)

#See solution for more efficient options (outlined above)