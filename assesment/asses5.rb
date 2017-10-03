num = [[0, 1, 1 ,1],[0, 0, 1, 1],[1, 1, 1, 1],[0, 0, 0, 0]]
array = []
num.each do |number|
 len = number.find_all{|n| n == 1 }.length
 array.push(len)
end
high = array.max

array.each_with_index do |num,index|
	if num == high
		puts "#{index}"
	end
end

