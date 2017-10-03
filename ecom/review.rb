class Review
	attr_accessor :user_id,:product_id,:review_date,:body,:rating
	attr_accessor :id

	@@count = 1
	def initialize(details)
		@id = @@count
		@user_id = details[:user_id]
		@product_id= details[:product_id]
		@review_date = details[:review_date]
		@body = details[:body]
		@rating = details[:rating]
		@@count += 1
	end
	def details
		"#{user_id}  - #{product_id} - #{body} - #{review_date} - #{rating}"
	end
end
