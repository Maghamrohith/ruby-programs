#http://api.openweathermap.org/data/2.5/weather?q=mysore&APPID=0dec6af6196"597b36a44df8835d48372&units=metric
require "httparty"
require "json"
url = "http://api.openweathermap.org/data/2.5/weather?"
api_key="0dec6af6196597b36a44df8835d48372"
puts "enter the city"
city_name=gets.chomp
#puts "#{url}name=#{city_name}&key=#{appid_key}"
respone= HTTParty.get("#{url}q=#{city_name}&APPID=#{api_key}&units=metric")
#response variable /object is from HTTPary::response class
#response.body holds the json data,json is string format
result = JSON.parse(respone.body)
puts "the current temparature in #{city_name}#{result["coord"].values} is #{result["main"]["temp"]}"
lists = result["list"]