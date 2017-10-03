names=["suresh","veeresh","mahesh","rajesh"]
names.each_with_index do |name,index|
	#1st block variable is the value , 2nd block variable  is the index

	puts "#{index+1}.#{name.capitalize}"

end



for name in names
	puts name.upcase
end