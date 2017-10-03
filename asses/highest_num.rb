def array(numbers)
 high = numbers.first 
	numbers.each do |n|
		if n > high
			high = n

		end
	end
	return high
	
end


puts array([1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1])
puts array([1])
puts array([1, 3, 4, 5, 7, 8, 9, 5, 2])
