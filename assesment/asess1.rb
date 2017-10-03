# to find mutiples of 3 and 5
def multiple(num)
	multiple = []
 num.each do |n|
	if (n % 3 == 0) || (n % 5 == 0)
      multiple.push(n)
  end
  
end
puts multiple.inject(:+)
end


puts multiple([1,2,3,4,5,6,7,8,9])
