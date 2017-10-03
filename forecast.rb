#http://api.openweathermap.org/data/2.5/forecast?q=mysore&APPID=0dec6af6196597b36a44df8835d48372&units=metric

require 'httparty'
require 'json'

url= "http://api.openweathermap.org/data/2.5/forecast?"
api_key="0dec6af6196597b36a44df8835d48372"

puts "enter the city"
city = gets.chomp

puts "#{url}q=#{city}&APPID=#{api_key}&units=metric"

respone = HTTParty.get("#{url}q=#{city}&APPID=#{api_key}&units=metric")
result = JSON.parse(respone.body)

puts "the temparature for the next 5 days in #{result["city"]["name"]}"

lists=result["list"]
lists.each do |list|
	puts "#{list["dt_txt"]}  temp #{list["main"]["temp"]}"
	date_time = list["dt_txt"]
	date = date_time.split(" ")[0]
	ddmmyy = date.split()