def count_occurrences(arr)
  h = Hash.new
  arr.each do |element|
    if h.include?(element)
      h[element] += 1
    else
      h[element] = 1
    end
  end
  h.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

#The solution was much more elegant in that it used arr.uniq.each instead of just the whole array, then adding array.count(element) to h[element] all at once instead of my incremental system.

#Bonus: solve in the case that words are case sensitive.
def count_occurrences_2(arr)
  h = Hash.new
  arr.each do |element|
    element.downcase! #This does the trick... kind of.
    if h.include?(element)
      h[element] += 1
    else
      h[element] = 1
    end
  end
  h.each { |key, value| puts "#{key} => #{value}" }
end

vehicles_2 = [
  'car', 'CAr', 'truck', 'cAr', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences_2(vehicles_2)