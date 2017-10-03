n1 = 1234
# 4321
# ability to chain methods in ruby is known as association proxy 
#puts n1.to_s.reverse.to_i

# return a reverse array for the given number
n1 = 1234
# [4,3,2,1]
result = []
n1.to_s.reverse.split("").each do |n|
	result.push(n.to_i)
end

puts result