n1=10
n2=50
n3=30
if n1> n2
	puts "n1 is greater"
else
	puts "n2 is greater"
end
puts n1>n2 ? "n1 is greater" : "n2 is greater"

puts (n1>n2) && (n1>n3) ? "n1 is greater" : (n2 > n3) ?
"n2 is greater" : "n3 is greater"



#UNLESS  = IF NOT

n1=200
unless n1 >250
	puts "n1 is less than 250"
end

if !(n1>250)
	puts "n1 is less than 250"
end
