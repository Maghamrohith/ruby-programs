names= ["sheldon","lenord","penny","rajesh","howard"]
i=1
times=3
while i<=times
	person = names.shift
	puts "person in the queue : #{i} #{person}"
	names.push(person,person)
	i=i+1
end
puts "the person at the beginning of the queue is #{names[0]}"