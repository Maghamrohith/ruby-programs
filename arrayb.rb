 player1=89.1
 player2=85.3
 player3=99
 player4=91.1
 #name=" "
 #hash={}
 players = [87.4,85.3,99,91.9,99]#new array
 teams = ["australia","India","west indies","newzland",]
 puts players.class #array
 #immutable methods - doesnt change the original array
 #only converts array in presentation
 #puts players.to_s
 puts "#{players}"

 puts  "#{players[2]}"
 puts "#{players[4]}"

 puts "reverse: #{players.reverse}"
 puts "sort (ASC) :#{players.sort}"
 puts "sort (DESC) : #{players.sort.reverse}"
 puts "sort (ASC) : #{teams.sort}"
 puts "uniqe : #{players.uniq}"
 puts "total teams : #{teams.length}"
 
 puts "players : #{players}"
 puts "teams : #{teams}"

 #mutable methods - change the state of the array
 players.push(67) # adds the value at the end ofthe array
 puts "after adding 67 : #{players}"

 players.insert(2,75.5) # insert method 2 args , ist index , 2nd valuw
 puts "insert : #{players}"


 puts "#{players}"
 players.pop # to remove the last value in the array
  puts "after poping : #{players}"

  players.shift # removes the value at the 0th index
  puts "shifting : #{players}"
  players.delete(75.5)
  puts "75.5 delete #{players}"


  players.delete_at(3)
  puts "91.9 deleted at index 3 #{players}"