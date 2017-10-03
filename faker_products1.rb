require 'faker'
class Product
	attr_accessor :name,:price,:description,:category,:available
	def initialize(details)
		@name=details[:name]
		@price=details[:price]
		@description=details[:description]
		@category=details[:category]
		@available=details[:available]
	end
	def details
		"#{name}-INR#{price}-#{category}-#{available}"
	end
end
products=[]
100.times do
product_details ={
	:name=>Faker::Commerce.product_name,:price=>Faker::Commerce.price(50..1000),:description=>Faker::Lorem.paragraph,:category=>Faker::Commerce.department(1),:available=>Faker::Boolean.boolean
}
product = Product.new(product_details)
products.push(product)
end
products.each_with_index do |product,index|
	if product.price < 499
	puts "#{index+1}.#{product.details}"	
end
end

puts "category"

products.each_with_index do |product,index|
	if product.category == "Kids"
		puts "#{product.details}"
	end
end


puts "kids  price limit"

products.each_with_index do |product,index|
	if (product.category == "kids" && product.price > 250)
		puts "#{product.details}"
	end
end

