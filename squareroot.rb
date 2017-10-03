def square(numbers)

	result=[]
	numbers.each do |n|
		result.push(n ** 2)
	end

	return result.inject(:+)
end
puts square([2,3,4,5,6])