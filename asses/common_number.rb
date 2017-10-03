#Given three arrays sorted in non-decreasing order, print all common elements in these arrays.

#Output:
#Single line output, Print the common elements of array. If not possible then print -1.

 

#Example:Input:
#1
#[[1, 5 ,10, 20, 40, 80],[ 6, 7, 20, 80, 100],[3,4, 15, 20, 30 ,70, 80 ,120]]
#Output:
#20 80

input = [[1, 5 ,10, 20, 40, 80],[ 6, 7, 20, 80, 100],[3,4, 15, 20, 30 ,70, 80 ,120]]
len = input.length
array = input.flatten!
output = []
array.each do |num|
	if array.count(num) == len
		output.push(num)
	end
end

if output.empty?
	puts -1
else 
	puts output.uniq
end
