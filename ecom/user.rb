class User
	attr_accessor :email,:username,:mobile
	attr_reader:id

	@@count =1
	def initialize(details)
		@id = @@count
		@username = details[:details]
		@mobile = details[:mobile]
		@email = details[:email]
		@@count += 1
	end

	def details
		"#{username} - #{email} - #{mobile}"
	end
end
