require 'httparty'
require 'json'
url = "http://localhost:3000/api/v1/categories"
response = HTTParty.get("#{url}")


result = JSON.parse(response.body)
result.each do |category|
	puts "#{category["name"]}(#{category["products"].length})"
end