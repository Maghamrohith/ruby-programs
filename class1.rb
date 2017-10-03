class Student
	#first_name,last_name,age,gender,course
	#sets up the reader method
	#attr_reader :first_name,:last_name,:age,:gender,:courses
	#sets up the writer method
	#attr_writer :first_name,:last_name,:age,:gender,:courses
	attr_accessor :first_name,:last_name,:age,:gender,:courses

end

s1=Student.new
puts s1

s1.first_name= "ravi"
puts s1.first_name

s1.last_name="kumar"
puts s1.last_name

s1.gender = "male"
puts s1.gender
s1.age = "24"
puts s1.age

s1.courses=["WD","RB","RR"]
puts s1.courses