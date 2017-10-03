number =39
while number > 9
#	product = 1
	#	product = product * n.to_i
	#end
	#number = product
number = number.to_s.chars.map{|n| n.to_i}.inject(:*)

end
puts number
