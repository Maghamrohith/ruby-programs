number=[3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
count_times={}
number.each do |n|
	count_times[n]=number.count(n)
end
puts count_times
puts count_times[-1]