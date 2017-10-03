# blueprint
class Restaurant
 #attributes/properties
 #methods/behaviours
 #instance variables = are values held inside an object,it is representeed using @

 # this is a writer method / setters 
 def name=(r_name)
	#here @name is an attribute of an object,it is also known as an instance variables
	@name= r_name
 end
 def location=(r_location)
 	@location= r_location
 end
 # this is a reader method
    def name
  	 @name
    end
    def location
    	@location
    end
end
# restaurant is a class
#r1 is an object of the rstaurant class
r1 =Restaurant.new
r1.name ="adigas"#writer method
r1.location="btm layout"
puts r1.class
puts r1.name#reader method
puts r1.location
r2=Restaurant.new
r2.name ="mc donalds"
r2.location="jp nager"
puts r2.class
puts r2.name
puts r2.location
r3=Restaurant.new
r3.name="kfc"
r3.location="jayanager"
puts r3.class
puts r3.name
puts r3.location