class Movie
	attr_accessor :name,:language,:release_date
	#we are passing a hash to the constructor
	def initialize(details)
		@name=details[:name]
		@language=details[:language]
		@release_date=details[:release_date]
	end

	def details
		"#{name} - #{language}- #{release_date}"
	end
end

#we are passing a hash toa constructor
movie1_params = {:release_date=>"2017-07-21",:name=>"Dunkrik",:language=>"english"}
m1=Movie.new(movie1_params)
puts m1.details


movie2_params={:release_date=>"2016-02-11",:name=>"aaa",:language=>"telugu"}
m2=Movie.new(movie2_params)
puts m2.details
