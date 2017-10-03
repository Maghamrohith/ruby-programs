winner_list = [
 {"season"=>"1999-00","team"=>"real madrid","country"=>"spain"},
 {"season"=>"2000-01","team"=>"munchi","country"=>"germany"},
 {"season"=>"2001-02","team"=>"real madrid","country" =>"spain"},
 {"season"=>"2002-03","team"=>"real smadrid","country"=>"spain"},
 {"season"=>"2003-04","team"=> "manss","country"=> "italy"}
]
 # puts winner_list
puts "enter the country name"
 search_country = gets.chomp 
 count=0
 teams=[]
 winner_list.each do |winner|
 	if winner["country"]==search_country
 		teams.push(winner["team"])
 

  count=count +1
 	end
	 end
 puts count

puts "result : #{teams.uniq.join(",")}"

