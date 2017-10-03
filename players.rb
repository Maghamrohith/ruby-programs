players="virat virat sachin virat sachin dhoni"
names=players.split(" ")
player_hash={}#hash.new
names.uniq.each do |name|
	player_hash[name]=names.count(name)
end
player_hash.each do |key,value|
	puts "#{key} : #{"*" * value}"
end
	puts player_hash
