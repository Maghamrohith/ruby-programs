arrays = [4,2,1,5,3]
numbers = []
len = arrays.length
count = 0
arrays.each_with_index do |num,index|
	count +=1
if count == len
	numbers.push(-1)
elsif arrays[index + 1]<num
	numbers.push(arrays[index + 1])
else
	numbers.push(-1)
end

	end
	puts numbers