players="viart virat sachin"
name =players.split(" ")
result ={ }
name.uniq.each do |name|
	result[name] = name.count(name)
end
result.each do |key,value|
	puts "#{key} -#{"*" * value}"

end