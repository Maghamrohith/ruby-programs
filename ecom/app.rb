require './category'
require'./product'
categories = []
c1= Category.new({:name=>"sports"})
c2= Category.new({:name=>  "gardening"})
categories.push(c1,c2)

c1.details
c2.details

products=[]
p1= Product.new({:name => "cricket",:price => 10000,:category_id => c1.id})
p2=Product.new({:name => "football",:price=> 2000, :category_id=> c2.id})
p3=Product.new({:name => "shovel",:price=> 1500, :category_id=> c2.id})

products.push(p1,p2,p3)

puts "l;issting categories"
puts "*" * 50
categories.each do |category|
	puts category.details
end


puts "*" * 50
puts "listing categories"
puts "*" * 50
products.each do |product|
	puts "#{product.name} - INR #{product.price} - #{categories.find{|category| category.id == product.category_id}.name}"
end
puts "*" * 50