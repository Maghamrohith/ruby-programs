given= [["virat",3],["rahul",4]]
result={}
given.each do |sa|
	result[sa.first] = sa.last
end
	puts result
														