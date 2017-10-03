#http://gender_api.com/get?name=rohit&key=
#gem install httparty
require "httparty"
require "json"
url = "http://gender-api.com/get?"
api_key="pRPLCejozFwCHFbVCR"
puts "enter a name to determine gender"
user_name=gets.chomp
puts "#{url}name=#{user_name}&key=#{api_key}"
respone= HTTParty.get("#{url}name=#{user_name}&key=#{api_key}")
result = JSON.parse(respone.body)
puts "the gender of #{user_name} is #{result["gender"]}"