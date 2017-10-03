nums = [1,2,2,2,3,2,1,1]
output = {}
nums.each do |n|
output[n] = nums.count(n)

end
puts output
highest_value=(output.values.max)
puts "#{output.key(highest_value)}"
