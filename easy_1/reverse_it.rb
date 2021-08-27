def reverse_statement(phrase)
  phrase_array = phrase.split.reverse
  return '' if phrase_array.size == 0
  output = ''
  phrase_array.each do |word|
    if phrase_array.index(word) < (phrase_array.size - 1)
      output << word + " " 
    else
      output << word
    end
  end
  output
end

puts "What is the input phrase?"
phrase = gets.chomp
p reverse_statement(phrase) #Used p to see whether '' rule worked

#Solution is incredibly elegant. Adds a .join(' ') on the phrase.split.reverse and simply returns that.
