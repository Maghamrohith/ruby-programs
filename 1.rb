n1 = 18.6#float
n2 = 16#float
n3 = 20#fixnum
n4 = -125
numbers ="10,20,30,40"
puts numbers
puts numbers.class
puts n1.class #float
puts n2.class #float
puts n3.class #fixnum

puts n1.round
puts n2.round

puts n1.ceil #18.3
puts n2.ceil #17

puts n2.floor #16

#types conversions
puts n1.to_i #18
puts n3.to_f #20.0
puts n1.to_s #"18.3"
puts n3.to_s #"20"
puts n4.abs
puts n3.next 
m =  n1.round + n2.round
puts m


players =["rohith","sachin","rohith"]
puts players.to_s

puts players.join(",")
puts players.class
name = ["magham"]
puts name.class