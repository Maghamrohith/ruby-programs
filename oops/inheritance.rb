require 'pry'
class Person
	attr_accessor :name, :gender ,:age
	def initialize(details)
		@name =details[:name]
		@age = details[:age]
		@gender = details[:gender]
	end
	def details
		"#{self.name} - #{self.age} - #{self.gender}"
	end
end
class Teacher < Person
	attr_accessor :pan, :school
	def initialize(details)
		super(details)
		@pan = details[:pan]
		@school = details[:school]
	end
	def details
		"#{super} - #{self.pan} -#{self.school}"
	end
end
class Coordinate < Teacher
	attr_accessor :grade
	def intialize(details)
		super(details)
		@grade = details[:grade]
	end
	def details
		"#{super} - #{self.grade}"
	
	end
end
  p1 = Person.new({name:"rohith",age: 22, gender:"male"})
  puts p1.details
  t1 = Teacher.new({name:"ravi",age:30, gender:"male", pan:123, school: "The East West School"})
  puts t1.details
  c1 = Coordinate.new({name:"sai",age:20, gender:"male",pan:124, grade: "primary"})
  puts c1.details

