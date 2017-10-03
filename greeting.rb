class Person

	attr_accessor :first_name,:last_name
	def initialize(details)
		@first_name = details[:first_name]
		@last_name = details[:last_name]
	end
			def details
              puts "hello,#{first_name}#{last_name}"

			 end
end
p1=Person.new({:first_name=> "rohith",:last_name=> "kumar"})
			 p1.details