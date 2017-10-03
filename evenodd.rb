numbers=[10,30,16,19]
even_nums = []
odd_nums = Array.new

numbers.each do |n|
  if n.even?
  	even_nums.push(n)
  else
  	odd_nums.push(n)
  end
end

puts "even  numbers : #{even_nums}"
puts "odd numbers : #{odd_nums}"

even_sum = 0
even_nums.each do |n|
	even_sum =even_sum+n
end
puts "sum of even : #{even_sum}"

odd_sum=0
odd_nums.each do |n|
	odd_sum= odd_sum+n
	puts "sum of odd : #{odd_sum}"
end

puts "sum of array #{even_sum + odd_sum}"
