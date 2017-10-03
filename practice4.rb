puts " enter the sentance"
sentance = gets.chomp 


if sentance == ""
	puts false
 else
 	words = sentance.split (" ")
 	output= "#"
 words . each do |word|
 	
 output = output + " "+word.capitalize
 end
end
if output.length > 140
	puts false
else
puts output
end
#puts output