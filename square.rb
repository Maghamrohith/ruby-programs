number= 9119
result = []
number.to_s.split("").each do |n|
	result.push(n.to_i * n.to_i)
end
puts "#{result.join()}"