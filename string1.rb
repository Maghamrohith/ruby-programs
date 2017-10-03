players = ["virat", "sachin", "rohith"]

i=0
while i< players.length
	puts players[i].upcase
	i=i+1
end
players.each do |n|
	sum = n.upcase
	puts "#{players.join(", ")}"
end