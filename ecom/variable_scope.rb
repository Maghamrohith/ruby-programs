=begin 
local variables
block variables
instance variables
class variables
	global vaiables
=end
$number = 10 #global

n1= 10#local
n2=20#local
puts n1+n2
def add(num1,num2)
	#num 1==n1 & num2 ==n2
	#num1 &num2 are known as parameters,their scope /availability/accessiblity is only inside the method,becomes local variable inside the method
	puts num1 + num2
	# n1 & n2 cannot be directly accessed inside the method
	# puts n1 + n2
	puts $number #10 
	puts num1 +num2 +$number # 40
end


# puts num1 & num2 are not available outside the method
add(n1,n2) # here n1,n2 are arguments to method add
numbers =[10,20,30,40]

numbers.each do |num| # num is ablock variable
	puts num +$number + n1 #global & local variables are available inside the iteration
end
# puts num, available ouutside the block

$number = 15
class Student
	attr_accessor :name, :arguments

	@@count = 1 # class variable are available across the methods inside the class


	def initialize(details)
		@id = @@count # class variable
		@name = details[:name]
		@age = $number
		@@count += 1
	end

	def details
		"#{name} - #{age}"
    end
end
# @@count not available outside the class


s1 = Student.new({:name => "Ravi"})
s2 = Student.new({:name => "Abhi"})


puts s1.inspect
puts s2.inspect


