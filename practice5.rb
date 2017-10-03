sentance = "idssdsds love you"
words = sentance.split(" ")
shortest_length = words.first.length
puts shortest_length
short_word = words[0]

words .each do |word|
	if word.length < shortest_length 
		shortest_length = word.length
		short_word = word
	end
end

puts shortest_length
puts short_word
puts sentance
puts words.class
