def prime(n)
	if (n % 1 == 0) && (n % n == 0) && (n % 2 != 0)
		puts "true"
	else
		puts "false"
	end
end

puts "enter the number"
n = gets.to_i
puts prime(n)


