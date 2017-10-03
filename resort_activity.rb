temp = 33
puts " recommended activity"
if temp > 40
	puts "swimming"
elsif temp >30
	puts "tennis"
elsif temp >20
	puts "badminton"
elsif temp > 0
	puts "chess"
else 
	puts "sit by the fire"
end

case 
	when temp > 40
		puts "swimming"
	when temp>0
		puts " any outdoor"
	else 
		puts " sit by the fire"
	end
	