class Category
	attr_accessor :name
	attr_reader :id 
	@@count = 1

	def initialize (details)
		@id = @@count
		@name = details[:name]
		@@count += 1
	end
	def details
		"#{id} - #{name}"
	end
end
