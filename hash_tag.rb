=begin 
	#IndiaVsPakistan
	#ModiInIsreal
=end

puts "Enter a sentence"
str = gets.chomp
# "#WelcomeToBangalore"
words = str.split(" ")
output = "#"
words.each do |w|
	output = output + w.capitalize
end
puts output