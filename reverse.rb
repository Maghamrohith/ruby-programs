number=24567
nums=number.to_s.split("").reverse
reverse=[]
nums.each do |n|
	reverse.push(n.to_i)
end
#puts reverse
puts "#{reverse}"