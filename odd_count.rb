def odd_count(numbers)
	result = {}
	numbers.each do |number|
		if numbers.count(number) % 2 != 0
			result[number] = numbers.count(number)
		end
	end
	return result
end

puts odd_count([2,3,4,5,5,5,6,1,1])