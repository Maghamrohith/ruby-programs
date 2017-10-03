



#you are given a 2D array,composed of a color and its 'common' association in each array element.the function you will write needs to return the color as a 'key' and association as its 'values'.
#for example;
#array = ["white","goodness"] # returns
#{'white'=>'doodness'}
#test.assert_equals(colour_association(
#[["white","goodness"],["blue","tranqulity"]]
#),[{'white'=>"goodness"},{'blue'=>"tranqility"}])
#=end

colors=[["white","goodness"],["blue","tranquility"]]

output=[]
colors.each do |color|
	output.push({color[0]=>color[1]})
end
puts "#{output}"