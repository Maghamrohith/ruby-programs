#n1 and n2 are local variables, these variables cannot be accessed directly inside the method
n1=10
n2=20
def add(num1,num2) # num1,num2 are these parameters become local varaiables cinside the method, they cannot be accessed outside the method
	#puts n1 +n2 # local variables cannot be directrly accessed inside the method
	num1+num2
end
#puts num1 # parameters for a method cannot be accessed outside the method
#the local variables can be passed to the method for samekind of processing , via passing as an arguments to the method call
puts add(n1,n2)
#the number of parameters should match the number of arguments
#the arguments name and parameters name need not match
#the order in which we the pass the values matter
=begin
here n1 value is assigned to num1,n2 value is assigned to num2
	
=end