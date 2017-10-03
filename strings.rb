first_name = "rohith"
last_name = 'kumaR'
# here frist_name can be referred as a variable or a object
=begin
num + num = num
str + num = error
str + num.to_s = concadination
=end
puts first_name +""+ last_name # concadination
puts first_name.capitalize
puts last_name.upcase 
puts last_name.downcase
puts " length of first_name" +" "+last_name.length.to_s #associate proxy - ability to chain methods in ruby
 puts last_name.reverse + last_name.length.to_s
 tags = "programming, ruby, javascript"
 #comma space seperated
 language = tags.split(", ") 	
 puts language

 players ="virat virat virat sachin dhoni"
 team = players.split(" ")
 # with out space
 word = "apple"
 letter = word.split(" ")
 fruit = word.split("")
 sportmen = ["raina","jadeja","dhoni"]

 puts sportmen[0]
 puts sportmen[1]
 puts sportmen[2]
 puts sportmen[4]

 puts sportmen

 puts "sportmen : #{sportmen}"
 puts sportmen.join(", ")
 number =[10,20,30,43,12.3,9]
 puts "#{number}"
 puts "sorted #{number.sort}"
 puts "#{number}"
 #desc
 puts " desc#{number.sort.reverse}"
puts "descbang#{number.sort.reverse!}"
puts "#{number}"
 puts "sorted #{number.sort!}"
 puts "#{number}"
 puts "#{number}"