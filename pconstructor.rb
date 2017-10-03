class Product
	attr_accessor :name,:price,:catagory

	def initialize(name,price,catagory)
		@name= name
		@price= price
		@catagory=catagory
	end
	def details
		"#{name} -#{price}-#{catagory}"
	end
end

p1=Product.new("oneplus","28000","mobile")
puts p1.details
p1.price="30000"
puts p1.details