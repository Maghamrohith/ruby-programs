array1 = [1, 2, 3, 4, 7, 9]
array2 = [0,1, 2, 1, 1, 4]


array1.each do |number|
	puts array2.find_all { |num| num<=number }.length 
end