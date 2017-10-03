class Product


def name=(p_name)
	@name=p_name
end

def price=(p_price)
	@price=p_price
end

def catagery=(p_catagery)
	@catagery=p_catagery
end
def name
	@name
end
def price
	@price
end
def catagery
	@catagery
end
end
product_forms=[]
p1=Product.new
p1.name="apple"
p1.price="25000"
p1.catagery="mobile"
#puts p1.name
#puts p1.price
#puts p1.catagery
product_forms.push(p1)

p2=Product.new
p2.name="lenovo"
p2.price="60000"
p2.catagery="laptops"
#puts p2.name
#puts p2.price
#puts p2.catagery
product_forms.push(p2)

product_forms.each do  |product_form|
#puts"#{p1.name}\nINR#{p1.price}\n#{p1.catagery}\n#{"*"*1}"
#end
puts product_form.name+ " "+product_form.price
end